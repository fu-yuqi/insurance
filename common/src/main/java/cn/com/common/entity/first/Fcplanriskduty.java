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
 * 计划险种责任表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcplanriskduty")
public class Fcplanriskduty implements Serializable {

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
    @TableField("Riskcode")
    private String Riskcode;

    /**
     * 责任编码
     */
    @TableField("DutyCode")
    private String DutyCode;

    /**
     * 责任名称
     */
    @TableField("DutyName")
    private String DutyName;

    /**
     * 责任类型身故保险金：1-身故、2-疾病身故、3-意外身故，1包含2和3全残保险金：1-全残、2-疾病全残、3-意外全残，1包含2和3
     */
    @TableField("DutyType")
    private String DutyType;

    /**
     * 保额
     */
    @TableField("Amnt")
    private Double Amnt;

    /**
     * 保费
     */
    @TableField("Prem")
    private Double Prem;

    /**
     * 免赔额
     */
    @TableField("GetLimit")
    private Double GetLimit;

    /**
     * 免赔额属性 1-按次免赔 2-按年免赔
     */
    @TableField("GetLimitType")
    private String GetLimitType;

    /**
     * 赔付比例
     */
    @TableField("GetRatio")
    private Double GetRatio;

    /**
     * 医保未结算赔付比例
     */
    @TableField("UnSettledCompensationRatio")
    private Double UnSettledCompensationRatio;

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
     * 等待期   0-否  1-是
     */
    @TableField("StandbyFlag1")
    private String StandbyFlag1;


}
