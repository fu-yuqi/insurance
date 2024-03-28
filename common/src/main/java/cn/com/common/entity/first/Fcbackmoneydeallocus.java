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
@TableName("fcbackmoneydeallocus")
public class Fcbackmoneydeallocus implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 轨迹流水号
     */
    @TableId("LocusNo")
    private String LocusNo;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 支付流水号
     */
    @TableField("PayFlowNo")
    private String PayFlowNo;

    /**
     * 退款状态  0-退款成功  1-退款中； 2-退款失败； 3-银行卡退款中
     */
    @TableField("PayBackStatus")
    private String PayBackStatus;

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
