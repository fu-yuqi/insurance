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
@TableName("fcedorreduinsured")
public class Fcedorreduinsured implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 删除被保人流水编号
     */
    @TableId("DecInsuredSn")
    private String DecInsuredSn;

    /**
     * 团体保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 保全受理号
     */
    @TableField("EdorAppNo")
    private String EdorAppNo;

    /**
     * 企业代码
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 批次
     */
    @TableField("Batch")
    private String Batch;

    /**
     * 被保险人性名
     */
    @TableField("Name")
    private String Name;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 出生日期
     */
    @TableField("BirthDay")
    private String BirthDay;

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
     * 减保生效日期
     */
    @TableField("ZtaliDate")
    private String ZtaliDate;

    /**
     * 退费说明
     */
    @TableField("RefundInstruct")
    private String RefundInstruct;

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

    /**
     * 退费银行
     */
    @TableField("BankOfRefundfee")
    private String BankOfRefundfee;

    /**
     * 退费账户名
     */
    @TableField("AccountNameOfRefundfee")
    private String AccountNameOfRefundfee;

    /**
     * 退费银行账号
     */
    @TableField("RefundBankAccount")
    private String RefundBankAccount;

    /**
     * 付款方式
     */
    @TableField("getFlag")
    private String getFlag;


}
