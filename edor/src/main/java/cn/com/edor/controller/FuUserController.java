package cn.com.edor.controller;


import cn.com.common.exception.BusinessException;
import cn.com.common.model.request.user.UserDo;
import cn.com.common.utils.ResponseResult;
import cn.com.edor.feign.InsureFeignApi;
import cn.com.edor.service.impl.FuUserServiceImpl;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-29
 */
@RestController
@RequestMapping("/edor/fuUser")
@Slf4j
public class FuUserController {

    @Autowired
    private FuUserServiceImpl fuUserService;

    @Autowired
    private InsureFeignApi insureFeignApi;

    @RequestMapping(value = "/insertUser", method = RequestMethod.POST)
    @ApiOperation(value = "新增用户", httpMethod = "POST", notes = "新增用户")
    public ResponseResult<String> insertUser(@RequestBody @Valid UserDo userDo, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw new BusinessException(bindingResult.getFieldError().getDefaultMessage());
        }
        String result = fuUserService.insertUser(userDo);
        return ResponseResult.success(result);
    }

    @RequestMapping(value = "/testHello", method = RequestMethod.GET)
    @ApiOperation(value = "测试接口", httpMethod = "GET", notes = "测试接口")
    public String testHello() {
        return "hello world";
    }

    @RequestMapping(value = "/testFeignApi", method = RequestMethod.GET)
    @ApiOperation(value = "测试feign远程调用接口", httpMethod = "GET", notes = "测试feign远程调用接口")
    public String testFeignController() {
        String result = insureFeignApi.testHello();
        log.info("result:{}", result);
        return result;
    }

}
