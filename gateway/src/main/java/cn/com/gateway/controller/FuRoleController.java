package cn.com.gateway.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
@RestController
@RequestMapping("/edor/fuRole")
public class FuRoleController {

    @GetMapping("/admin_delete")
    public String adminDelete() {
        return "admin_delete";
    }

    @GetMapping("/admin_insert")
    public String adminInsert() {
        return "admin_insert";
    }

    @GetMapping("/user_info")
    public String userInfo() {
        return "user_info";
    }

    @GetMapping("/user_list")
    public String userList() {
        return "user_list";
    }
}
