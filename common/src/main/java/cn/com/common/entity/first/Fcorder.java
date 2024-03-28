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
 * 订单表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcorder")
public class Fcorder implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单号
     */
    @TableId("OrderNo")
    private String OrderNo;

    /**
     * 订单状态:
01-待生效 
02-已生效 
03-扣款失败(微信/银行卡) 
04-扣款成功 
05-待确认投保信息  
06-退费失败(微信/银行卡)
07-微信退款申请失败
08-退款中
09-退款成功



     */
    @TableField("OrderStatus")
    private String OrderStatus;

    /**
     * 订单类型:
01固定套餐
02年度福利
03日常福利
     */
    @TableField("OrderType")
    private String OrderType;

    /**
     * 注册期起始日
     */
    @TableField("OpenDay")
    private LocalDate OpenDay;

    /**
     * 注册期结束日
     */
    @TableField("CloseDay")
    private LocalDate CloseDay;

    /**
     * 团体订单号
     */
    @TableField("GrpOrderNo")
    private String GrpOrderNo;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 个人客户号
     */
    @TableField("PerNo")
    private String PerNo;

    /**
     * 个人投保人编号
     */
    @TableField("PerAppNo")
    private String PerAppNo;

    /**
     * 消费明细号
     */
    @TableField("CostNo")
    private String CostNo;

    /**
     * 订单公共要素详情编号
     */
    @TableField("PubEleNo")
    private String PubEleNo;

    /**
     * 订单提交日期
     */
    @TableField("CommitDate")
    private LocalDate CommitDate;

    /**
     * 订单生效日期
     */
    @TableField("EffectDate")
    private LocalDate EffectDate;

    /**
     * 是否填写个人告知:
0-可能需要填写
1-不需要填写个人告知
2-需要填写未填写完
3-已填写完
4-不需要填告知，需要温馨提示健康告知
     */
    @TableField("IsInfo")
    private String IsInfo;

    /**
     * 订单来源:
01-PC浏览器网页投保
02-微信端投保
     */
    @TableField("OrderSource")
    private String OrderSource;

    /**
     * 扣款失败退回原因
     */
    @TableField("ErrorReason")
    private String ErrorReason;

    /**
     * 业务员工号
     */
    @TableField("ClientNo")
    private String ClientNo;

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
     * 保费个人缴纳来源 0-银行批扣，1-微信支付
     */
    @TableField("PremSource")
    private String PremSource;

    /**
     * 健康服务个人缴费来源 0-银行批扣，1-微信支付
     */
    @TableField("HealthSource")
    private String HealthSource;


}
