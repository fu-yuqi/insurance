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
@TableName("fcbatchpaybankinfo")
public class Fcbatchpaybankinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利编号
     */
    @TableId("EnsureCode")
    private String EnsureCode;

    /**
     * 主被保人客户号:
01-待提交核心
02-已提交核心
     */
    @TableField("PerNo")
    private String PerNo;

    /**
     * 签约流水号
     */
    @TableField("SignSN")
    private String SignSN;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 持卡人姓名
     */
    @TableField("Name")
    private String Name;

    /**
     * 持卡人证件类型
     */
    @TableField("IdType")
    private String IdType;

    /**
     * 持卡人证件号
     */
    @TableField("IdNo")
    private String IdNo;

    /**
     * 开户行账户
     */
    @TableField("BankAccount")
    private String BankAccount;

    /**
     * 开户银行编码
     */
    @TableField("PayBankCode")
    private String PayBankCode;

    /**
     * 银行名称
     */
    @TableField("PayBankName")
    private String PayBankName;

    /**
     * 预留手机号
     */
    @TableField("ReservePhone")
    private String ReservePhone;

    /**
     * 验证码
     */
    @TableField("ValidateCode")
    private String ValidateCode;

    /**
     * 签约状态 0-不支持 1-未签约  2-已签约 3-签约失败  4-签约中  5-解约成功
     */
    @TableField("IsSidned")
    private String IsSidned;

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
     * 验证码结束日期
     */
    @TableField("EndDate")
    private LocalDate EndDate;

    /**
     * 验证码结束时间
     */
    @TableField("EndTime")
    private String EndTime;

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
