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
 * 福利计划联系人表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcensurecontact")
public class Fcensurecontact implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利编号
     */
    @TableId("EnsureCode")
    private String EnsureCode;

    /**
     * 姓名
     */
    @TableField("Name")
    private String Name;

    /**
     * 证件类型
     */
    @TableField("IDType")
    private String IDType;

    /**
     * 证件号码
     */
    @TableField("IDNo")
    private String IDNo;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 手机号码
     */
    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 出生日期
     */
    @TableField("BirthDay")
    private String BirthDay;

    /**
     * 所属部门
     */
    @TableField("DepartMent")
    private String DepartMent;

    /**
     * 证件有效期止期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 证件有效期
     */
    @TableField("PovaliDity")
    private LocalDate PovaliDity;

    /**
     * 邮箱
     */
    @TableField("EMail")
    private String EMail;

    /**
     * 联系地址
     */
    @TableField("address")
    private String address;

    /**
     * 国籍
     */
    @TableField("nativeplace")
    private String nativeplace;

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
     * 生成日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 生成时间
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
