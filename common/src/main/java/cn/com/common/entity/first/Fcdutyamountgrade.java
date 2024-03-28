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
@TableName("fcdutyamountgrade")
public class Fcdutyamountgrade implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保额档次编码
     */
    @TableId("AmountGrageCode")
    private String AmountGrageCode;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 险种编码
     */
    @TableField("RiskCode")
    private String RiskCode;

    /**
     * 险种类别 (横琴时用于区分交通险，中韩用于区分一年定期寿)
     */
    @TableField("RiskType")
    private String RiskType;

    /**
     * 必选责任编码
     */
    @TableField("DutyCode")
    private String DutyCode;

    /**
     * 责任名称
     */
    @TableField("DutyName")
    private String DutyName;

    /**
     * 责任范围
     */
    @TableField("DutyRange")
    private String DutyRange;

    /**
     * 责任类别  0-必选  1-非必选
     */
    @TableField("DutyType")
    private String DutyType;

    /**
     * 自定义档次名称
     */
    @TableField("AmountGrageName")
    private String AmountGrageName;

    /**
     * 保费
     */
    @TableField("Prem")
    private Double Prem;

    /**
     * 保额下限
     */
    @TableField("Amnt")
    private Double Amnt;

    /**
     * 保额上限
     */
    @TableField("TopAmnt")
    private Double TopAmnt;

    /**
     * 折扣比例
     */
    @TableField("DiscountRatio")
    private Double DiscountRatio;

    /**
     * 医保未结算赔付比例
     */
    @TableField("UnCompensationRatio")
    private Double UnCompensationRatio;

    /**
     * 按次/按年免赔 1--按次  2 --按年
     */
    @TableField("AnnualTimeDeduction")
    private String AnnualTimeDeduction;

    /**
     * 等待期 0-无 1-有
     */
    @TableField("WaitingPeriod")
    private String WaitingPeriod;

    /**
     * 是否含有自费项目 0-无 1-有
     */
    @TableField("Ownexpense")
    private String Ownexpense;

    /**
     * 特别约定
     */
    @TableField("SpecialAgreement")
    private String SpecialAgreement;

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
     * 档次  计划一   计划二
     */
    @TableField("Grade")
    private String Grade;

    /**
     * 责任层保费计算方式  0--表定费率  1--约定保额保费  2--表定加约定
     */
    @TableField("RiskPremCalType")
    private String RiskPremCalType;


}
