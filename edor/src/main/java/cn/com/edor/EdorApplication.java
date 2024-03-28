package cn.com.edor;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.com.edor.mapper")
public class EdorApplication {

    public static void main(String[] args) {
        SpringApplication.run(EdorApplication.class, args);
    }

}
