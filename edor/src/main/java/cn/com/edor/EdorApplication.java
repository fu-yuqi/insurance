package cn.com.edor;

import cn.com.edor.config.FeignConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@MapperScan("cn.com.edor.mapper")
@EnableDiscoveryClient
@EnableFeignClients(defaultConfiguration = {FeignConfig.class})
public class EdorApplication {

    public static void main(String[] args) {
        SpringApplication.run(EdorApplication.class, args);
    }

}
