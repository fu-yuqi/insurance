# 面试准备

## 一、Redis

### 名词解释
```
CAP理论：一个分布式系统最多只能同时满足一致性（Consistency）、可用性（Availability）和分区容错性（Partition tolerance）这三项中的两项。
CP:高一致性  AP:高可用性
```

### 1.缓存穿透：
```
产生原因：指请求一个不存在的key,因redis查询不到，所以会直接查询Db
解决办法：查询为null的值也存入缓存，或使用布隆过滤器
注：布隆过滤器：设置一个初始值都为0的数组，数据过来后进行三次hash计算，把数组对应的下标数据改为1，存在误判的情况，可以设置误判率，一般小于5%
```


### 2.缓存击穿：
```
产生原因：指在key值过期的瞬间大量请求过来，会直接查询Db
解决办法：互斥锁或设置逻辑过期时间
注：互斥锁逻辑：1查询数据不存在→2获取互斥锁→3查询Db进行缓存重建→4写入缓存→5释放锁
其他线程在获取锁时失败，所以休眠一会再重试
逻辑过期：1查询数据发现已过期→2获取互斥锁→ 3开启新线程进行缓存重建（重建过程中重置过期时间）→ 4返回过期数据
```

### 3.缓存雪崩：
```
产生原因：指在同一时间大量key过期或redis服务器宕机
解决办法：1给不同的key的过期时间设置随机 值
   2利用redis集群提高服务可用性
   3给缓存业务添加降级限流策略nginx或gateway
   4给业务添加多级缓存
```


### 4.双写一致性（ MySQL的数剧如何与redis进行同步）
```
一致性高的解决办法：使用读写锁（共享锁及排他锁）类似 MySQL的共享锁和排他锁
读锁（get redlock）共享锁：允许同 读数据，但不允许写入数剧
写锁(get writelock)排他锁：不允 许读也不允许写，基于redission
强一致，性能低
允许延迟一致的解决办法：监听MySQL的 binlog日志来实现，监听insert和update操作
```

### 5.Redis持久化
```
RDB:数据备份文件，也叫redis数据快照。把内存中所有数据都记在磁盘中 ，当redis故障重启后，从磁盘读文件恢复数据
AOF:追加文件，redis处理的每一个写命令都会记录在AOF文件
```

### 6.Redis数据过期策略
```
惰性删除：查询时发现过期再删
定期删除：定期检查随机key,如果过期则删除（slow模式和fast模式）
SLOW模式是定时任务，执行频率可以通过修改配置文件redis.conf 来调整。
FAST模式执行频率不固定，但两次间隔不低于2ms，每次耗时不超过1ms。
两种配合使用
```
### 7.数据删除策略
```
Noeviction:默认不删除，但内存满了不允许写
Volatile-ttl:比较有过期时间的key,先删除小的
Allkeys-random:对全体key随机淘汰
Volatile-random:对设置了过期时间的key随机淘汰
Allkeys-lru:对全体key进行lru算法淘汰（lru最近最少使用）--->常用
Volatile-lru: 对设置了过期时间的key lru算法淘汰
Allkeys_lfu：对全体key进行lfu算法淘汰（lfu最少频率使用）
Volatile-lfu: 对设置了过期时间的key lfu算法淘汰
```
### 8.Redis的分布式锁
```
利用Redis的单线程特性，在多个Redis客户端同时通过SETNX命令尝试获取锁，如果返回1表示获取锁成功，否则表示获取锁失败。
因为Redis的单线程机制，所以可以保证只会有一个客户端成功获取到锁，而其他客户端则会失败。如果获取锁成功，则设置一个过期时间，防止该客户端挂了之后一直持有该锁。客户端释放锁的时候，需要先判断该锁是否仍然属于该客户端，如果是，则通过DEL命令释放锁。

缺点：
1、锁无法续期
2、无法避免死锁
3、存在竞争，影响效率
4、不可重入
```

### 9.基于Redission实现分布式锁
```
优点：
是一个可以续期的可重入锁，并引入看门狗机制，对锁自动续期。
看门狗：新启一个线程监听业务是否执行完毕，未执行完毕，自动进行续期（每10s），其他线程会在规定的时间内自旋等待，超时抛出异常
```

### 10.红锁（ReadLock）
```
问题产生原因：
1、在使用单节点Redis实现分布式锁时，如果这个Redis实例挂掉，那么所有使用这个实例的客户端都会出现无法获取锁的情况。
2、当使用集群模式部署的时候，如果master一个客户端在master节点加锁成功了，然后没来得及同步数据到其他节点上，他就挂了， 那么这时候如果选出一个新的节点，再有客户端来加锁的时候，就也能加锁成功，因为数据没来得及同步，新的master会认为这个key是不存在的。
解决办法：
RedLock是通过引入多个Redis节点来解决单点故障的问题。
在进行加锁操作时，RedLock会向每个Redis节点发送相同的命令请求，每个节点都会去竞争锁，如果至少在大多数节点上成功获取了锁，那么就认为加锁成功。反之，如果大多数节点上没有成功获取锁，则加锁失败。这样就可以避免因为某个Redis节点故障导致加锁失败的情况发生。
举例说明：
1、客户端想要获取锁时，会生成一个全局唯一的ID（官方文档建议使用系统时间来生成这个ID）
2、客户端尝试使用这个ID获取所有redis节点的同意，这一步通过使用SETNX命令实现。
3、如果有半数以上的节点同意，那么锁就被成功设置了。
4、获取锁之后，用户可以执行想要的操作。
5、最后，不想用这把锁的时候，再尝试依次解锁，无论锁是否成功获取。

如果主节点宕机，会从有锁的单节点中随机找一台升级成主节点
```

### 11.Redis的脑裂问题
```
问题产生原因
所谓脑裂，就像他的名字一样，大脑裂开了，一般来说就是指一个分布式系统中有两个子集，然后每个子集都有一个自己的大脑(Leader/Master)。那么整个分布式系统中就会存在多个大脑了，而且每个自己都认为自己是正常的，从而导致数据不一致或重复写入等问题。

1、网络分区导致脑裂：
Master节点，哨兵和Slave节点被分割为了两个网络，Master处在一个网络中，Slave库和哨兵在另外一个网络中，此时哨兵发现和Master连不上了，就会发起主从切换，选一个新的Master，这时候就会出现两个主节点的情况。
2、主从节点导致脑裂
Master节点有问题，哨兵就会开始选举新的主节点，但是在这个过程中，原来的那个Master节点又恢复了，这时候就可能会导致一部分Slave节点认为他是Master节点，而另一部分Slave新选出了一个Master

脑裂会导致1、数据不一致；2、重复写入；3、数据丢失

解决办法：
1、min-slaves-to-write：：主库能进行数据同步的最少从库数量；
2、min-slaves-max-lag：：主从库间进行数据复制时，从库给主库发送 ACK 消息的最大延迟秒数。
必须同事满足，否则拒绝写入
```

### 12.Redis和Lua脚本的区别
```
但是，Redis的事务在执行过程中，如果有某一个命令失败了，是不影响后续命令的执行的，而Lua脚本中，如果执行过程中某个命令执行失败了，是会影响后续命令执行的。
1、交互次数：Redis每次提交一条命令都会进行一次网络交互，先暂存，后执行；Lua只会进行一次网络交互
2、前后依赖：Redis每条命令都是独立的，不会互相依赖；Lua脚本可以根据前一条脚本的执行结果执行
3、流程编排：Lua可以进行复杂的流程编排
```

### 13.分布式锁的lock方法和tryLock方法的区别
```
tryLock是尝试获取锁，如果能获取到直接返回true，如果无法获取到锁，他会按照我们指定的waitTime进行阻塞，在这个时间段内他还会再尝试获取锁。如果超过这个时间还没获取到则返回false。如果我们没有指定waitTime，那么他就在未获取到锁的时候，就直接返回false了。
lock的原理是以阻塞的方式去获取锁，如果获取锁失败会一直等待，直到获取成功。
所以，我们可以认为，lock实现的是一个阻塞锁，而tryLock实现的是一个非阻塞锁（在没有指定waitTime的情况下）。
```

### 14.集群模式
```
Redis有三种主要的集群模式，用于在分布式环境中实现高可用性和数据复制。这些集群模式分别是：主从复制（Master-Slave Replication）、哨兵模式（Sentinel）和Redis Cluster模式。
1、主从复制：主从模式中，包括一个主节点（Master）和一个或多个从节点（Slave）。主节点负责处理所有写操作和读操作，而从节点则复制主节点的数据，并且只能处理读操作。当主节点发生故障时，可以将一个从节点升级为主节点，实现故障转移（需要手动实现）。
2、哨兵模式：哨兵模式是在主从复制的基础上加入了哨兵节点。哨兵节点是一种特殊的Redis节点，用于监控主节点和从节点的状态。当主节点发生故障时，哨兵节点可以自动进行故障转移，选择一个合适的从节点升级为主节点，并通知其他从节点和应用程序进行更新。
3、Redis Cluster模式：Redis Cluster是Redis中推荐的分布式集群解决方案。它将数据自动分片到多个节点上，每个节点负责一部分数据。 
```

### 15.Redis为什么这么快
```
1、基于内存操作
2、单线程模型
3、多路复用I/O模型
4、高效的数据结构
5、多线程的引入
```

### 16.Redis中Zset的实现
```
Redis中的ZSet在实现中，有多种结构，大类的话有两种，分别是ziplist(压缩列表)和skiplist(跳跃表)，但是这只是以前，在Redis 5.0中新增了一个listpack（紧凑列表）的数据结构，这种数据结构就是为了替代ziplist的，而在之后Redis 7.0的发布中，在Zset的实现中，已经彻底不在使用zipList了。
zipList（ListPack）转换为SkipList条件：总的来说就是，当元素数量少于128，每个元素的长度都小于64字节的时候，使用ZipList（ListPack），否则，使用SkipList！
```