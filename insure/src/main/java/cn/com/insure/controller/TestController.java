package cn.com.insure.controller;

import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/insure/fuRole")
public class TestController {

    @RequestMapping(value = "/testHello", method = RequestMethod.GET)
    @ApiOperation(value = "测试接口", httpMethod = "GET", notes = "测试接口")
    public String testHello() {
        return "hello world";
    }
}
