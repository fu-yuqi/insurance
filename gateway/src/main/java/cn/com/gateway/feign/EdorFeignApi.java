package cn.com.gateway.feign;

import com.alibaba.csp.sentinel.annotation.SentinelResource;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;

@Component
@FeignClient(value = "insurance-edor")
public interface EdorFeignApi {

    @GetMapping(value = "/edor/fuUser/testHello", headers = {"Content-Type=application/json;charset=UTF-8"})
    @SentinelResource("testHello")
    String testHello();

}
