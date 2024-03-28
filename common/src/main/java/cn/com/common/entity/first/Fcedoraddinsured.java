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
@TableName("fcedoraddinsured")
public class Fcedoraddinsured implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 被保人流水编号
     */
    @TableId("PlusInsuredSN")
    private String PlusInsuredSN;

    /**
     * 保全编号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 保全受理号
     */
    @TableField("EdorAppNo")
    private String EdorAppNo;

    /**
     * 企业编号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 批次
     */
    @TableField("Batch")
    private String Batch;

    /**
     * 个单号
     */
    @TableField("ContNo")
    private String ContNo;

    /**
     * 被保险人性名
     */
    @TableField("Name")
    private String Name;

    /**
     * 国籍
     */
    @TableField("nativeplace")
    private String nativeplace;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 证件号
     */
    @TableField("IdNo")
    private String IdNo;

    /**
     * 证件类型
     */
    @TableField("IdType")
    private String IdType;

    /**
     * 证件有效止期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 证件有效起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 出生日期
     */
    @TableField("Birthday")
    private String Birthday;

    /**
     * 存储弹性计划员工保费，固定计划无需进行存储
     */
    @TableField("TotalPrem")
    private Double TotalPrem;

    /**
     * 手机号
     */
    @TableField("mobile")
    private String mobile;

    /**
     * 与投保人关系 0-雇佣 1-其他
     */
    @TableField("InsuredRelation")
    private String InsuredRelation;

    /**
     * 与被保人关系
     */
    @TableField("RelationToAppnt")
    private String RelationToAppnt;

    /**
     * 增援生效日期
     */
    @TableField("PlusEffectDate")
    private String PlusEffectDate;

    /**
     * 计划编码
     */
    @TableField("plancode")
    private String plancode;

    /**
     * 是否拥有社保
     */
    @TableField("MedicareStatus")
    private String MedicareStatus;

    /**
     * 保全类型
     */
    @TableField("EdorType")
    private String EdorType;

    /**
     * 提交试算状态0-未提交1-已提交
     */
    @TableField("TrialStatus")
    private String TrialStatus;

    /**
     * 职业类别
     */
    @TableField("JobType")
    private String JobType;

    /**
     * 职业代码
     */
    @TableField("JobCode")
    private String JobCode;

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
     * 员工姓名
     */
    @TableField("staffName")
    private String staffName;

    /**
     * 主被保人证件号
     */
    @TableField("MainIdNo")
    private String MainIdNo;

    /**
     * 主被保人证件类型
     */
    @TableField("MainIdType")
    private String MainIdType;

    /**
     * 与员工关系
     */
    @TableField("relation")
    private String relation;

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
     * 扣款缴费帐户名
     */
    @TableField("DebitPayName")
    private String DebitPayName;

    /**
     * 银行预留手机号
     */
    @TableField("ReservedMobile")
    private String ReservedMobile;

    /**
     * 受益人姓名
     */
    @TableField("DeathBenefiName")
    private String DeathBenefiName;

    /**
     * 受益人与被保人关系
     */
    @TableField("DeathBenefiRelation")
    private String DeathBenefiRelation;

    /**
     * 被保人签字
     */
    @TableField("AutoInsured")
    private String AutoInsured;

    /**
     * 备注
     */
    @TableField("remarks")
    private String remarks;

    /**
     * 已投保身故保额总和（航空险除外）
     */
    @TableField("DeathBenefiPrem")
    private Double DeathBenefiPrem;

    /**
     * 核心人员身份
     */
    @TableField("subsidiaryInsuredFlag")
    private String subsidiaryInsuredFlag;

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

    @TableField("sorCode")
    private String sorCode;

    /**
     * 联系地址
     */
    @TableField("contactAddress")
    private String contactAddress;


}
