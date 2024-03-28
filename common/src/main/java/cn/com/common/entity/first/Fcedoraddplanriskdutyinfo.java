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
@TableName("fcedoraddplanriskdutyinfo")
public class Fcedoraddplanriskdutyinfo implements Serializable {

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
     * 责任编码
     */
    @TableField("DutyCode")
    private String DutyCode;

    /**
     * 团体保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 责任名称
     */
    @TableField("DutyName")
    private String DutyName;

    /**
     * 责任保额
     */
    @TableField("DutyAmnt")
    private BigDecimal DutyAmnt;

    /**
     * 责任保费
     */
    @TableField("DutyPrem")
    private BigDecimal DutyPrem;

    /**
     * 免赔额
     */
    @TableField("GetLimit")
    private Double GetLimit;

    /**
     * 给付天数
     */
    @TableField("PayDay")
    private String PayDay;

    /**
     * 免赔天数
     */
    @TableField("NoGetDay")
    private String NoGetDay;

    /**
     * 赔付比例
     */
    @TableField("GetRate")
    private Double GetRate;

    /**
     * 费率/折扣
     */
    @TableField("FloatRate")
    private String FloatRate;

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
     * 免赔额属性
     */
    @TableField("GetLimitType")
    private String GetLimitType;

    /**
     * 医保未结算赔付比例
     */
    @TableField("NoGetRate")
    private Double NoGetRate;


}
