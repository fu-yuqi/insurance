package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 存放未注册用户动态验证码信息
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-05-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("ft_validatecode")
public class FtValidatecode implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 动态密码流水号
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 验证码id
            存当前验证码标识：如邮箱或手机号等
     */
    @TableField("code_id")
    private String codeId;

    /**
     * 动态密码类型
            01-手机
            02-邮箱
     */
    @TableField("code_type")
    private String codeType;

    /**
     * 验证码
     */
    @TableField("validate_code")
    private String validateCode;

    /**
     * 是否有效:
            0-否
            1-是
     */
    @TableField("is_valid")
    private String isValid;

    @TableField("startdate")
    private LocalDate startdate;

    /**
     * 起始时间
     */
    @TableField("maketime")
    private String maketime;

    @TableField("enddate")
    private LocalDate enddate;

    @TableField("endtime")
    private String endtime;


}
