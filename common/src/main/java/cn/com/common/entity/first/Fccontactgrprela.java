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
@TableName("fccontactgrprela")
public class Fccontactgrprela implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 联系人编号
     */
    @TableId("contactNo")
    private String contactNo;

    /**
     * 联系人类型 01-第一联系人 02-第二联系人
     */
    @TableField("contactType")
    private String contactType;

    /**
     * 企业号
     */
    @TableField("grpNo")
    private String grpNo;

    /**
     * 0-启用  1-禁用
     */
    @TableField("LockState")
    private String LockState;

    /**
     * 授权书图片
     */
    @TableField("GrantImage")
    private String GrantImage;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 操作机构
     */
    @TableField("OperatorCom")
    private String OperatorCom;

    /**
     * 创建日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 创建时间
     */
    @TableField("MakeTime")
    private String MakeTime;

    /**
     * 修改日期
     */
    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    /**
     * 修改时间
     */
    @TableField("ModifyTime")
    private String ModifyTime;


}
