package cn.com.gateway.redis;

import cn.com.gateway.config.RedisConfig;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@SpringBootTest
public class RedisTest {

    @Autowired
    private StringRedisTemplate redis;

    @Test
    public void testString() {
        //1、插入操作
        redis.opsForValue().set("userName","fyq",30, TimeUnit.SECONDS);
        //2、获取操作
        String username = redis.opsForValue().get("userName");
        System.out.println(username);
    }

    @Test
    public void testHash() {
        //1、插入操作
        redis.opsForHash().put("userName","fyq","20岁");
        //2、获取操作
        Object o = redis.opsForHash().get("userName","fyq");
        System.out.println(o.toString());

        //1、插入一个Map
        Map map = new HashMap();
        map.put("name","fyq");
        map.put("sex","man");
        map.put("hobby","play");
        redis.opsForHash().putAll("hashTest",map);
        //2、获取Map所有信息
        Map<Object, Object> hash02 = redis.opsForHash().entries("hashTest");
        System.out.println(hash02);
    }

    @Test
    public void testSetNX() {
        //redis分布式锁     如果key不存在设置成功
//        Boolean lock = redis.opsForValue().setIfAbsent("lock01", "1",30,TimeUnit.SECONDS);
        Boolean lock = redis.opsForValue().setIfAbsent("lock", "1");
        System.out.println(lock);
//        if (lock){
//            redis.delete("lock");
//        }
        //释放锁
//        redis.delete("lock");
    }

}
