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
@TableName("fcorderpaymethod")
public class Fcorderpaymethod implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 支付方式记录流水号
     */
    @TableId("PayMethodNo")
    private String PayMethodNo;

    /**
     * 团体订单号
     */
    @TableField("GrpOrderNo")
    private String GrpOrderNo;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * ""/保全批次号  ""-表示契约途径投保  保全批次号-表示新单保全增人途径投保
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

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
