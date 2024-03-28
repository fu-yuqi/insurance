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
@TableName("fcpaymoneydeal")
public class Fcpaymoneydeal implements Serializable {

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
     * 支付金额
     */
    @TableField("Amount")
    private Double Amount;

    /**
     * 支付状态  0-有效；1-无效
     */
    @TableField("PayStatus")
    private String PayStatus;

    /**
     * 收银台收单号
     */
    @TableField("PaPayDeskFlowNo")
    private String PaPayDeskFlowNo;

    /**
     * 支付方式 01-微信；02-支付宝；03-银行卡；
     */
    @TableField("PayType")
    private String PayType;

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
