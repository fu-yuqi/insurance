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
@TableName("fcplanriskinfo")
public class Fcplanriskinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利编号
     */
    @TableId("EnsureCode")
    private String EnsureCode;

    /**
     * 险种编码
     */
    @TableField("RiskCode")
    private String RiskCode;

    /**
     * 责任编码
     */
    @TableField("DutyCode")
    private String DutyCode;

    /**
     * 责任类别 存储责任类别 主要针对一年定期寿
     */
    @TableField("RiskType")
    private String RiskType;

    /**
     * 分保标记 0--否  1--合约分保  2--临分  3--公司自保
     */
    @TableField("reinsuranceMark")
    private String reinsuranceMark;

    /**
     * 手续费比率
     */
    @TableField("feeRatio")
    private Double feeRatio;

    /**
     * 佣金/奖励津贴比率
     */
    @TableField("commissionOrAllowanceRatio")
    private Double commissionOrAllowanceRatio;

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
     * 档次   计划一或二
     */
    @TableField("Grade")
    private String Grade;


}
