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
@TableName("fcgrporder")
public class Fcgrporder implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 团体订单号
     */
    @TableId("GrpOrderNo")
    private String GrpOrderNo;

    /**
     * 团体订单类型:
01年度福利
02日常福利
03集中采购
04小微企业
     */
    @TableField("GrpOrderType")
    private String GrpOrderType;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 团体投保人编号
     */
    @TableField("GrpAppNo")
    private String GrpAppNo;

    /**
     * 团体订单状态
01-未提交
02-已提交
03-提交失败
04-投保成功
05-投保失败 06-扣款失败 07-部分承保
     */
    @TableField("GrpOrderStatus")
    private String GrpOrderStatus;

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
     * 扣款失败信息首次推送日期
     */
    @TableField("PushDate")
    private LocalDate PushDate;

    /**
     * 投保单号
     */
    @TableField("PrtNo")
    private String PrtNo;

    /**
     * 团体保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 消费明细号
     */
    @TableField("CostNo")
    private String CostNo;

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


}
