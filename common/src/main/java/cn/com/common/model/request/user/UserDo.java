package cn.com.common.model.request.user;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 *
 */
@Data
public class UserDo {

    /**
     * 登录名
     */
    @NotNull(message = "登录名不能为空")
    @NotEmpty(message = "登录名不能为空")
    private String loginName;

    /**
     * 姓名
     */
    @NotNull(message = "用户名不能为空")
    @NotEmpty(message = "用户名不能为空")
    private String userName;

    /**
     * 昵称
     */
    private String nickName;

    /**
     * 密码
     */
    @NotNull(message = "登录密码不能为空")
    @NotEmpty(message = "登录密码不能为空")
    private String passWord;

    /**
     * 关联个人客户ID
     */
    private String percustomerId;


    /**
     * 角色id
     */
    private String roleId;

    /**
     * 锁定标记0未锁定1锁定
     */
    private String isLock;

    /**
     * VIP标记0非1是
     */
    private String isVip;

    /**
     * 登录失败次数>=3锁定用户
     */
    private Integer loginFailTime;

    /**
     * 用户状态0无效 1有效
     */
    private String state;

    /**
     * 页面注册用户 直销 01
     * 分公司管理员创建用户 分公司管理员 02
     * 渠道人员创建用户 渠道 存对应渠道编码
     */
    private String userSource;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 手机号
     */
    private String mobilePhone;

    /**
     * 是否为初始化密码  0否 1是
     */
    private String isInitpwd;

    /**
     * 锁定日期
     */
    private String lockdate;

    /**
     * 锁定时间
     */
    private String locktime;

    /**
     * 存业务员ID
     */
    private String agentcode;

    /**
     * 存分公司编码
     */
    private String managecom;

    private String province;

    @NotNull(message = "用户所在地不能为空")
    @NotEmpty(message = "用户所在地不能为空")
    private String city;

    /**
     * 备注
     */
    private String remark;

    /**
     * 用户注册时的来源 01:pc端 02:移动端 03:管理员 04:渠道用户 05:大型员福hr 06:员工
     */
    private String registerSource;

    private String SecurityCode;

}
