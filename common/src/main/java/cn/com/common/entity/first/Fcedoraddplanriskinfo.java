package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.math.BigDecimal;
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
@TableName("fcedoraddplanriskinfo")
public class Fcedoraddplanriskinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 增人计划流水号
     */
    @TableId("EdorAddPlanSN")
    private String EdorAddPlanSN;

    /**
     * 险种编码
     */
    @TableField("RiskCode")
    private String RiskCode;

    /**
     * 团体保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 险种名称
     */
    @TableField("RiskName")
    private String RiskName;

    /**
     * 险种保额
     */
    @TableField("RiskAmnt")
    private BigDecimal RiskAmnt;

    /**
     * 险种保费
     */
    @TableField("RiskPrem")
    private BigDecimal RiskPrem;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 操作员机构
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
     * 保费计算规则
     */
    @TableField("CalRule")
    private String CalRule;

    /**
     * 保险期间
     */
    @TableField("InsuYear")
    private String InsuYear;

    /**
     * 保险期间单位
     */
    @TableField("InsuYearFlag")
    private String InsuYearFlag;

    /**
     * 费率/折扣
     */
    @TableField("FloatRate")
    private String FloatRate;


}
