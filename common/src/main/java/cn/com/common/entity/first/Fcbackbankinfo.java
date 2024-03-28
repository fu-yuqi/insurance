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
@TableName("fcbackbankinfo")
public class Fcbackbankinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单号
     */
    @TableId("OrderNo")
    private String OrderNo;

    /**
     * 支付流水号
     */
    @TableField("PayFlowNo")
    private String PayFlowNo;

    /**
     * 持卡人姓名
     */
    @TableField("NAME")
    private String name;

    /**
     * 银行账号
     */
    @TableField("BankAccount")
    private String BankAccount;

    /**
     * 付款银行
     */
    @TableField("PayBankCode")
    private String PayBankCode;

    /**
     * 预留手机号
     */
    @TableField("ReservePhone")
    private String ReservePhone;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 管理机构
     */
    @TableField("OperatorCom")
    private String OperatorCom;

    /**
     * 入机日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 入机时间
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
