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
 * 计划险种表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcplanrisk")
public class Fcplanrisk implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利编号
     */
    @TableId("EnsureCode")
    private String EnsureCode;

    /**
     * 计划编码
     */
    @TableField("PlanCode")
    private String PlanCode;

    /**
     * 险种编码
     */
    @TableField("RiskCode")
    private String RiskCode;

    /**
     * 险种名称
     */
    @TableField("RiskName")
    private String RiskName;

    /**
     * 附加险种绑定主险种
     */
    @TableField("BinRiskCode")
    private String BinRiskCode;

    /**
     * 分保标记
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
