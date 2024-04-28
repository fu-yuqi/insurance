# docker常用命令
## 镜像相关命令
### 1、查看镜像
```
docker images
```

### 搜索镜像
```
docker search 镜像名称
```

### 拉取镜像
```
docker pull 镜像名称
例：docker pull centos:7
```

### 删除镜像
```
按镜像id删除镜像
docker rmi 镜像ID
删除所有镜像
docker rmi `docker images -q`
```

### 查看容器
```
查看正在运行的容器
docker ps
查看所有容器
docker ps –a
查看最后一次运行的容器
docker ps –l
查看停止的容器
docker ps -f status=exited
```

### 创建与启动容器
```
创建容器命令
docker run
-i：表示运行容器
-t：表示容器启动后会进入其命令行。加入这两个参数后，容器创建就能登录进去。即分配一个伪终端。
–name :为创建的容器命名。
-v：表示目录映射关系（前者是宿主机目录，后者是映射到宿主机上的目录），可以使用多个－v做多个目录或文件映射。注意：最好做目录映射，在宿主机上做修改，然后共享到容器上。
-d：在run后面加上-d参数,则会创建一个守护式容器在后台运行（这样创建容器后不会自动登录容器，如果只加-i -t两个参数，创建后就会自动进去容器）。
-p：表示端口映射，前者是宿主机端口，后者是容器内的映射端口。可以使用多个-p做多个端口映射

交互式方式创建容器
docker run -it --name=容器名称 镜像名称:标签 /bin/bash
退出当前容器
exit
守护式方式创建容器：
docker run -di --name=容器名称 镜像名称:标签
登录守护式容器方式：
docker exec -it 容器名称 (或者容器ID)  /bin/bash
```

### 停止与启动容器
```
停止容器：
docker stop 容器名称（或者容器ID）
启动容器：
docker start 容器名称（或者容器ID）
```

# docker安装软件
## 1、docker安装mysql
### 1.1 拉取镜像
```
# 拉取镜像
docker pull mysql
# 或者
docker pull mysql:latest
# 以上两个命令是一致的，默认拉取的就是 latest 版本的
#指定版本号拉取mysql镜像
docker pull mysql:5.7.21
 
# 我们还可以用下面的命令来查看可用版本：
docker search mysql
```

### 1.2 查看镜像
```
docker images
```

### 1.3 运行镜像
```
docker run -p 3306:3306 --name mysql --restart=always --privileged=true \
-v /usr/local/mysql/log:/var/log/mysql \
-v /usr/local/mysql/data:/var/lib/mysql \
-v /usr/local/mysql/conf:/etc/mysql \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7.21
或者
docker run --name mysql --restart=always --privileged=true \
-v /usr/local/mysql/data:/var/lib/mysql \
-v /usr/local/mysql/conf.d:/etc/mysql/conf.d \
-v /etc/localtime:/etc/localtime:ro \
-e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 -d mysql:5.7.21


--p 3306:3306：指定宿主机端口与容器端口映射关系
--name mysql：创建的容器名称
--restart=always：总是跟随docker启动
--privileged=true：获取宿主机root权限
-v /usr/local/mysql/log:/var/log/mysql：映射日志目录，宿主机:容器
-v /usr/local/mysql/data:/var/lib/mysql：映射数据目录，宿主机:容器
-v /usr/local/mysql/conf:/etc/mysql：映射配置目录，宿主机:容器
-v /etc/localtime:/etc/localtime:ro：让容器的时钟与宿主机时钟同步，避免时区的问题，ro是read only的意思，就是只读。
-e MYSQL_ROOT_PASSWORD=123456：指定mysql环境变量，root用户的密码为123456
-d mysql:latest：后台运行mysql容器，版本是latest。
```

### 1.4 查看正在运行的容器
```
# 查看正在运行的容器
docker ps
# 查看所有的docker容器
docker ps -a

#这个时候如果显示的是up状态，那就是启动成功了。如果是restarting，说明是有问题的。我们可以查看日志：
docker logs -f mysql

可能会发现：
Failed to access directory for --secure-file-priv. Please make sure that dir
此时如果我们执行第五步也会报错：
Error response from daemon: Container xxx is restarting, wait until the cont。。。
此时我们需要执行第六步。 
```

### 1.5 查看容器内部
```
docker exec -it mysql /bin/bash
```

### 1.6 修改mysql配置
```
创建mysql配置文件：my.cnf
cd /usr/local/mysql
ll
cd conf
vi my.cnf

在 my.cnf 文件中 写入如下内容：
[client]

default-character-set=utf8mb4

[mysql]

default-character-set=utf8mb4

[mysqld]

# 设置东八区时区
default-time_zone = '+8:00'

# 设置密码验证规则，default_authentication_plugin参数已被废弃

# 改为authentication_policy

#default_authentication_plugin=mysql_native_password
authentication_policy=mysql_native_password

# 限制导入和导出的数据目录
# 为空，不限制导入到处的数据目录；
# 指定目录，必须从该目录导入到处，且MySQL不会自动创建该目录；
# 为NULL，禁止导入与导出功能
#secure_file_priv=/var/lib/mysql
secure_file_priv=

init_connect='SET collation_connection = utf8mb4_0900_ai_ci'

init_connect='SET NAMES utf8mb4'

character-set-server=utf8mb4

collation-server=utf8mb4_0900_ai_ci

skip-character-set-client-handshake

skip-name-resolve

```

### 1.7 重启mysql服务，使其配置生效
```
docker restart mysql
```

### 1.8 设置docker启动时启动mysql
```
docker update mysql --restart=always
```

### 1.9 重启Mysql
```
docker restart mysql
```

### 1.10 如果需要授权远程访问
#### 1.10.1 进入容器内部
```
docker exec -it mysql /bin/bash
```

#### 1.10.2 登陆mysql
```
mysql -u root -p
```

#### 1.10.3 选择数据库
```
show databases;
use mysql;
```

#### 1.10.4 查看用户连接情况
```
select host, user, plugin,  authentication_string, password_expired from user;
```

#### 1.10.5 修改密码认证方式
```
ALTER USER root@'%' IDENTIFIED WITH mysql_native_password BY '123456';
 
ALTER USER root@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
 
-- 刷新权限
FLUSH PRIVILEGES;
```

#### 1.10.6 退出数据库
```
exit
```

