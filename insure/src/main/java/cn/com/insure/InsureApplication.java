package cn.com.insure;

import cn.com.insure.config.FeignConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableDiscoveryClient
@MapperScan("cn.com.insure")
@EnableFeignClients(defaultConfiguration = {FeignConfig.class})
public class InsureApplication {

    public static void main(String[] args) {
        SpringApplication.run(InsureApplication.class, args);
    }

}
