package cn.com.edor.controller;


import cn.com.common.model.request.user.UserDo;
import cn.com.common.utils.ResponseResult;
import cn.com.edor.service.impl.FuUserServiceImpl;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
public class FuUserController {

    @Autowired
    private FuUserServiceImpl fuUserService;

    @RequestMapping(value = "/insertUser", method = RequestMethod.POST)
    @ApiOperation(value = "新增用户", httpMethod = "POST", notes = "新增用户")
    public ResponseResult<String> insertUser(@RequestBody UserDo userDo) {
        String result = fuUserService.insertUser(userDo);
        return ResponseResult.success(result);
    }

}
