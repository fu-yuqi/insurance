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
@TableName("fcorderpay")
public class Fcorderpay implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单缴费明细号
     */
    @TableId("PayNo")
    private String PayNo;

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
     * 缴费类型  01-企业代扣代缴 02-个人实时批扣 03-个人批扣 04-企业缴纳
     */
    @TableField("PayType")
    private String PayType;

    /**
     * 总保费
     */
    @TableField("TotalPrem")
    private Double TotalPrem;

    /**
     * 企业缴纳
     */
    @TableField("GrpPrem")
    private Double GrpPrem;

    /**
     * 个人缴费
     */
    @TableField("PersonPrem")
    private Double PersonPrem;

    /**
     * 健康服务缴纳总费
     */
    @TableField("TotalHealthCost")
    private Double TotalHealthCost;

    /**
     * 健康服务缴纳总费
     */
    @TableField("GrpHealthCost")
    private Double GrpHealthCost;

    /**
     * 健康服务缴纳总费
     */
    @TableField("PersonHealthCost")
    private Double PersonHealthCost;

    /**
     * 是否有效
     */
    @TableField("IsValid")
    private String IsValid;

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

    /**
     * 对接系统
     */
    @TableField("TransSource")
    private String TransSource;

    /**
     * 接口编码
     */
    @TableField("TransCode")
    private String TransCode;

    /**
     * 首付款状态 (1-未支付,2-已支付,3-支付失败,4-支付中,6-退款,其他-未知)
     */
    @TableField("TransState")
    private String TransState;

    /**
     * 企业方收款虚拟账号
     */
    @TableField("VCorpAct")
    private String VCorpAct;

    /**
     * 金额
     */
    @TableField("Amount")
    private Double Amount;

    /**
     * 支付信息码
     */
    @TableField("PayInfoCode")
    private String PayInfoCode;

    /**
     * 支付信息描述
     */
    @TableField("PayInfo")
    private String PayInfo;

    /**
     * 支付链接
     */
    @TableField("PayUrl")
    private String PayUrl;

    /**
     * 支付链接过期时间
     */
    @TableField("PayUrlExpirationTime")
    private String PayUrlExpirationTime;

    /**
     * 支付确认时间
     */
    @TableField("PayMadeDate")
    private String PayMadeDate;

    /**
     * 支付是否通知核心 1-通知
     */
    @TableField("NoticeState")
    private String NoticeState;


}
