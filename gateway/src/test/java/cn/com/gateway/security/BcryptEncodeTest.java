package cn.com.gateway.security;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
public class BcryptEncodeTest {

    // 测试加密
    @Test
    void bcryptEncode() {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String rawPassword = "1234";
        String encodePassword = passwordEncoder.encode(rawPassword);
        System.out.println("encodePassword=" + encodePassword);
    }
    // 测试验证密码
    @Test
    void bcryptMatches() {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String rawPassword = "1234";
        String encodePassword =
                "$2a$10$.eQiB/9PjQOQLfKJOG4vCekDoObxETfBir8hoRQpOA5/ggaAPSAxm";
        boolean result = passwordEncoder.matches(rawPassword, encodePassword);
        System.err.println("原文=" + rawPassword);
        System.err.println("密码=" + encodePassword);
        System.err.println("验证结果=" + result);
    }
}
