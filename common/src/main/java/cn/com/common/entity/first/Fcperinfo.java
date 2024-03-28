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
 * 个人客户信息表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcperinfo")
public class Fcperinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 个人客户号
            来自EBA系统
     */
    @TableId("PerNo")
    private String PerNo;

    @TableField("CPerNo")
    private String CPerNo;

    /**
     * 所属企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 员工编号
     */
    @TableField("StaffNo")
    private String StaffNo;

    /**
     * 员工职级
     */
    @TableField("LevelCode")
    private String LevelCode;

    /**
     * 部门
     */
    @TableField("department")
    private String department;

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
     * 0--身份证
            1--护照
            2--军官证
            3--驾照
            4--户口本
            5--学生证
            6--工作证
            8--其他
            9--无证件
            a--社保号
            （与eba保持一致）
     */
    @TableField("IDType")
    private String IDType;

    /**
     * 证件号
     */
    @TableField("IDNo")
    private String IDNo;

    /**
     * 证件有效期止期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 证件有效期起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 出生日期
     */
    @TableField("BirthDay")
    private LocalDate BirthDay;

    /**
     * 固定电话
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 移动电话
     */
    @TableField("MobilePhone")
    private String MobilePhone;

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
     * 有无医保 0-否
  1-是
     */
    @TableField("JoinMedProtect")
    private String JoinMedProtect;

    /**
     * 医保类型 01--城镇职工
 02--城镇居民
 03--新农合
     */
    @TableField("MedProtectType")
    private String MedProtectType;

    /**
     * 邮箱
     */
    @TableField("Email")
    private String Email;

    /**
     * 邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 地址
     */
    @TableField("Address")
    private String Address;

    /**
     * 默认计划编码
     */
    @TableField("DefaultPlan")
    private String DefaultPlan;

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

    /**
     * 启用/禁用员工  0-启用状态  1-禁用状态
     */
    @TableField("LockState")
    private String LockState;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("Operator")
    private String Operator;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;


}
