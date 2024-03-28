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
@TableName("fcedorhomogeneousriskinsured")
public class Fcedorhomogeneousriskinsured implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 同质被保险人流水号
     */
    @TableId("HomogeneousRiskInsuredSN")
    private String HomogeneousRiskInsuredSN;

    /**
     * 保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 保全受理号
     */
    @TableField("EdorAppNo")
    private String EdorAppNo;

    /**
     * 批次号
     */
    @TableField("Batch")
    private String Batch;

    /**
     * 个单号
     */
    @TableField("ContNo")
    private String ContNo;

    /**
     * 计划编码
     */
    @TableField("PlanCode")
    private String PlanCode;

    /**
     * 存储弹性计划员工保费，固定计划无需进行存储
     */
    @TableField("TotalPrem")
    private Double TotalPrem;

    /**
     * 企业号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 新被保险人姓名
     */
    @TableField("newName")
    private String newName;

    /**
     * 新被保险人国籍
     */
    @TableField("newNativeplace")
    private String newNativeplace;

    /**
     * 新被保险人证件类型
     */
    @TableField("newIdType")
    private String newIdType;

    /**
     * 新被保险人证件号
     */
    @TableField("newIdNo")
    private String newIdNo;

    /**
     * 新被保险人证件有效期起期
     */
    @TableField("newIdTypestartDate")
    private LocalDate newIdTypestartDate;

    /**
     * 新被保险人证件有效期止期
     */
    @TableField("newIdTypeEndDate")
    private LocalDate newIdTypeEndDate;

    /**
     * 新被保险人性别
     */
    @TableField("newSex")
    private String newSex;

    /**
     * 新被保险人出生日期
     */
    @TableField("newBirthday")
    private String newBirthday;

    /**
     * 新被保险人手机号
     */
    @TableField("newMobilePhone")
    private String newMobilePhone;

    /**
     * 新被保险人证件有效期
     */
    @TableField("InsuredRelation")
    private String InsuredRelation;

    /**
     * 新被保险人职业类别
     */
    @TableField("newJobType")
    private String newJobType;

    /**
     * 新被保险人职业代码
     */
    @TableField("newJobCode")
    private String newJobCode;

    /**
     * 新被保险人医保标记1-有0-无
     */
    @TableField("newJoinMedProtect")
    private String newJoinMedProtect;

    /**
     * 缴费方式
     */
    @TableField("PayMethod")
    private String PayMethod;

    /**
     * 公司缴费
     */
    @TableField("ComPayment")
    private Double ComPayment;

    /**
     * 个人缴费
     */
    @TableField("PerPayment")
    private Double PerPayment;

    /**
     * 扣款缴费银行
     */
    @TableField("DebitPayBank")
    private String DebitPayBank;

    /**
     * 扣款缴费银行账号
     */
    @TableField("DebitPayCode")
    private String DebitPayCode;

    /**
     * 银行预留手机号
     */
    @TableField("ReservedMobile")
    private String ReservedMobile;

    /**
     * 扣款缴费账户名
     */
    @TableField("DebitPayName")
    private String DebitPayName;

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

    @TableField("sorCode")
    private String sorCode;

    /**
     * 增员生效日
     */
    @TableField("plusEffectDate")
    private String plusEffectDate;

    /**
     * 联系地址
     */
    @TableField("address")
    private String address;


}
