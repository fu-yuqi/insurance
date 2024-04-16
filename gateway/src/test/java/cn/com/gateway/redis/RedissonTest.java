package cn.com.gateway.redis;

import org.junit.jupiter.api.Test;
import org.redisson.RedissonLock;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.concurrent.TimeUnit;

@SpringBootTest
public class RedissonTest {

    @Autowired
    private RedissonClient redissonClient;

    @Test
    public void testRlock() {
        RLock rLock = redissonClient.getLock("555");
        try {
//            rLock.tryLock(3000,30000, TimeUnit.SECONDS);
            rLock.tryLock(3000, TimeUnit.SECONDS);
//            rLock.lock(3000, TimeUnit.SECONDS);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            rLock.unlock();
        }
    }

}
