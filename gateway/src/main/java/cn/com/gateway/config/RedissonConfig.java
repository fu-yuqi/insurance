//package cn.com.gateway.config;
//
//import org.redisson.Redisson;
//import org.redisson.api.RedissonClient;
//import org.redisson.config.Config;
//import org.springframework.cache.annotation.CachingConfigurerSupport;
//import org.springframework.cache.annotation.EnableCaching;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.connection.RedisConnectionFactory;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
//import org.springframework.data.redis.serializer.StringRedisSerializer;
//
//import javax.annotation.Resource;
//import java.io.IOException;
//
//@Configuration
//@EnableCaching
//public class RedissonConfig extends CachingConfigurerSupport {
//
//    @Bean
//    public RedissonClient redissonClient() throws IOException {
//        // 默认连接地址 127.0.0.1:6379
//        RedissonClient redisson = Redisson.create();
//        Config config = Config.fromYAML(RedissonConfig.class.getClassLoader().getResource("redisson.yml"));
//        config.useSingleServer().setAddress("localhost:6379");
//        return Redisson.create(config);
//    }
//
//
//    @Bean
//    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory connectionFactory) {
//        //deBug 会发现其 connectionFactory 实例为 redission
//        RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
//        redisTemplate.setConnectionFactory(connectionFactory);
//        redisTemplate.setDefaultSerializer(new GenericJackson2JsonRedisSerializer());
//        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
//        redisTemplate.setKeySerializer(stringRedisSerializer);
//        redisTemplate.setHashKeySerializer(stringRedisSerializer);
//        return redisTemplate;
//    }
//}
