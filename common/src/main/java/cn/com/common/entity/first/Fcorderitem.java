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
 * 子订单表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcorderitem")
public class Fcorderitem implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 子订单号
     */
    @TableId("OrderItemNo")
    private String OrderItemNo;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 消费明细号
     */
    @TableField("CostNo")
    private String CostNo;

    /**
     * 人脸识别流水号
     */
    @TableField("faceno")
    private String faceno;

    /**
     * 订单项详情编号
     */
    @TableField("OrderItemDetailNo")
    private String OrderItemDetailNo;

    /**
     * 对应核心团单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 对应核心个单号
     */
    @TableField("ContNo")
    private String ContNo;

    /**
     * 个人缴纳保费
     */
    @TableField("SelfPrem")
    private Double SelfPrem;

    /**
     * 企业缴纳保费
     */
    @TableField("GrpPrem")
    private Double GrpPrem;

    /**
     * 健康服务企业缴费费用
     */
    @TableField("HealthGrpCost")
    private Double HealthGrpCost;

    /**
     * 健康服务个人缴费费用
     */
    @TableField("HealthSelfCost")
    private Double HealthSelfCost;

    /**
     * 订单状态 03-扣款失败  04-扣款成功 06-退费失败
     */
    @TableField("OrderStatus")
    private String OrderStatus;

    /**
     * 收退费失败原因
     */
    @TableField("ErrorReason")
    private String ErrorReason;

    /**
     * 保全减保微信退费金额
     */
    @TableField("EdorRefundSelfPrem")
    private Double EdorRefundSelfPrem;

    /**
     * 保全减保微信退费保全受理号
     */
    @TableField("EdorRefundAppNo")
    private String EdorRefundAppNo;

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

    @TableField("ModifyTime")
    private String ModifyTime;


}
