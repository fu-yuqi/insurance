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
 * 个人信息表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcperson")
public class Fcperson implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 个人编码
     */
    @TableId("PersonID")
    private String PersonID;

    /**
     * 姓名
     */
    @TableField("Name")
    private String Name;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 国籍
     */
    @TableField("nativeplace")
    private String nativeplace;

    /**
     * 出生日期
     */
    @TableField("BirthDate")
    private LocalDate BirthDate;

    /**
     * 证件类型
     */
    @TableField("IDType")
    private String IDType;

    /**
     * 证件号
     */
    @TableField("IDNo")
    private String IDNo;

    /**
     * 证件有效期起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 证件有效期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 员工职级
     */
    @TableField("LevelCode")
    private String LevelCode;

    /**
     * 服务年限
     */
    @TableField("ServiceTerm")
    private String ServiceTerm;

    /**
     * 是否退休
     */
    @TableField("Retirement")
    private String Retirement;

    /**
     * 移动电话
     */
    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 固定电话
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 与投保人关系 0-雇佣 1-其他
     */
    @TableField("InsuredRelation")
    private String InsuredRelation;

    /**
     * 职业类别
     */
    @TableField("OccupationType")
    private String OccupationType;

    /**
     * 职业代码
     */
    @TableField("OccupationCode")
    private String OccupationCode;

    /**
     * 是否参加医保:
            0-否
            1-是
     */
    @TableField("JoinMedProtect")
    private String JoinMedProtect;

    /**
     * 医保类型
     */
    @TableField("MedProtectType")
    private String MedProtectType;

    /**
     * 邮箱
     */
    @TableField("EMail")
    private String EMail;

    /**
     * 邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 详细地址
     */
    @TableField("Address")
    private String Address;

    /**
     * 身份证正面
     */
    @TableField("idImage1")
    private String idImage1;

    /**
     * 身份证反面
     */
    @TableField("idImage2")
    private String idImage2;

    /**
     * 开户银行
     */
    @TableField("OpenBank")
    private String OpenBank;

    /**
     * 开户账户
     */
    @TableField("OpenAccount")
    private String OpenAccount;

    @TableField("Operator")
    private String Operator;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;

    @TableField("sorCode")
    private String sorCode;


}
