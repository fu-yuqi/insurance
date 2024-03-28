package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcuserlogin")
public class Fcuserlogin implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("LoginSerialNo")
    private String LoginSerialNo;

    @TableField("UserNo")
    private String UserNo;

    @TableField("LoginDate")
    private LocalDate LoginDate;

    @TableField("LoginTime")
    private String LoginTime;

    @TableField("LoginIP")
    private String LoginIP;

    @TableField("LoginType")
    private String LoginType;

    @TableField("LoginSource")
    private String LoginSource;

    @TableField("LogoutDate")
    private LocalDate LogoutDate;

    @TableField("LogoutTime")
    private String LogoutTime;


}
