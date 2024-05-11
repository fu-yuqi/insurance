package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fu_user")
public class FuUser implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 用户编号
     */
    @TableId("id")
    private String id;

    /**
     * 登录名
     */
    @TableField("login_name")
    private String loginName;

    /**
     * 姓名
     */
    @TableField("user_name")
    private String userName;

    /**
     * 昵称
     */
    @TableField("nick_name")
    private String nickName;

    /**
     * 密码
     */
    @TableField("pass_word")
    private String passWord;

    /**
     * 关联个人客户ID
     */
    @TableField("percustomer_id")
    private String percustomerId;

    /**
     * 锁定标记0未锁定1锁定
     */
    @TableField("is_lock")
    private String isLock;

    /**
     * VIP标记0非1是
     */
    @TableField("is_vip")
    private String isVip;

    /**
     * 登录失败次数>=3锁定用户
     */
    @TableField("login_fail_time")
    private Integer loginFailTime;

    /**
     * 用户状态0无效 1有效
     */
    @TableField("state")
    private String state;

    /**
     *  页面注册用户 直销 01
            分公司管理员创建用户 分公司管理员 02 
            渠道人员创建用户 渠道 存对应渠道编码 
     */
    @TableField("user_source")
    private String userSource;

    /**
     * 邮箱
     */
    @TableField("email")
    private String email;

    /**
     * 手机号
     */
    @TableField("mobile_phone")
    private String mobilePhone;

    /**
     * 是否为初始化密码  0否 1是
     */
    @TableField("is_initpwd")
    private String isInitpwd;

    /**
     * 锁定日期
     */
    @TableField("lockdate")
    private String lockdate;

    /**
     * 锁定时间
     */
    @TableField("locktime")
    private String locktime;

    /**
     * 存业务员ID
     */
    @TableField("agentcode")
    private String agentcode;

    /**
     * 存分公司编码
     */
    @TableField("managecom")
    private String managecom;

    @TableField("province")
    private String province;

    @TableField("city")
    private String city;

    /**
     * 备注
     */
    @TableField("remark")
    private String remark;

    /**
     * 用户注册时的来源 01:pc端 02:移动端 03:管理员 04:渠道用户 05:大型员福hr 06:员工
     */
    @TableField("register_source")
    private String registerSource;

    /**
     * 存当前登录用户ID
     */
    @TableField("operator")
    private String operator;

    /**
     * 存当前操作用户的管理机构
     */
    @TableField("operatorcom")
    private String operatorcom;

    /**
     * 创建日期
     */
    @TableField("makedate")
    private String makedate;

    /**
     * 创建时间
     */
    @TableField("maketime")
    private String maketime;

    /**
     * 修改日期
     */
    @TableField("modifydate")
    private String modifydate;

    /**
     * 修改时间
     */
    @TableField("modifytime")
    private String modifytime;


}
