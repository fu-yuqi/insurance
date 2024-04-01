package cn.com.insure;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class InsureApplication {

    public static void main(String[] args) {
        SpringApplication.run(InsureApplication.class, args);
    }

}
