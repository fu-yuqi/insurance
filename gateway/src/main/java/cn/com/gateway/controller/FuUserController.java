package cn.com.gateway.controller;


import cn.com.common.exception.BusinessException;
import cn.com.common.model.request.user.UserDo;
import cn.com.common.utils.ResponseResult;
import cn.com.gateway.service.impl.FuUserServiceImpl;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
@RestController
@RequestMapping("/gateway/fuUser")
public class FuUserController {

    @Autowired
    private FuUserServiceImpl fuUserService;

    @RequestMapping(value = "/insertUserInfo", method = RequestMethod.POST)
    @ApiOperation(value = "新增用户", httpMethod = "POST", notes = "新增用户")
    public ResponseResult<String> insertUser(@RequestParam(value = "用户信息", required = true) @RequestBody @Valid UserDo userDo) {
        String result = fuUserService.insertUser(userDo);
        return ResponseResult.success(result);
    }

}
