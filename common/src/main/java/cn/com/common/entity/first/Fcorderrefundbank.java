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
 * 银行卡退款信息表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcorderrefundbank")
public class Fcorderrefundbank implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 退费流水号
     */
    @TableId("RefundNo")
    private String RefundNo;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 新单保全批次号
     */
    @TableField("BatchNo")
    private String BatchNo;

    /**
     * 支付流水号
     */
    @TableField("PayNo")
    private String PayNo;

    /**
     * 退费类型 0-契约退费 1-保全退费
     */
    @TableField("RefundType")
    private String RefundType;

    /**
     * 退款金额
     */
    @TableField("RefundAmount")
    private Double RefundAmount;

    /**
     * 退款状态       2-退款成功  4-退款中
     */
    @TableField("RefundState")
    private String RefundState;

    /**
     * 退款失败原因
     */
    @TableField("RefundOriInfoCode")
    private String RefundOriInfoCode;

    /**
     * 银行编码
     */
    @TableField("BankCode")
    private String BankCode;

    /**
     * 银行帐号
     */
    @TableField("BankAccNo")
    private String BankAccNo;

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
     * 入库日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 入库时间
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
     * 银行所在省
     */
    @TableField("Province")
    private String Province;


}
