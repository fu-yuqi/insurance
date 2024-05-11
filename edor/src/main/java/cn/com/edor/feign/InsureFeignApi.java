package cn.com.edor.feign;

import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;

@Component
@FeignClient(value = "insurance-insure")
public interface InsureFeignApi {

    @GetMapping(value = "/insure/fuRole/testHello", headers = {"Content-Type=application/json;charset=UTF-8"})
    @LoadBalanced
    String testHello();

}
