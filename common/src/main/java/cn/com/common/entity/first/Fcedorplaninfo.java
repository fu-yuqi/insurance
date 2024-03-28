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
@TableName("fcedorplaninfo")
public class Fcedorplaninfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 计划编码
     */
    @TableField("planCode")
    private String planCode;

    /**
     * 批次号
     */
    @TableField("batch")
    private String batch;

    /**
     * 计划名称
     */
    @TableField("planName")
    private String planName;

    /**
     * 使用人
     */
    @TableField("planObject")
    private String planObject;

    /**
     * 险种名称
     */
    @TableField("riskName")
    private String riskName;

    /**
     * 险种编码
     */
    @TableField("riskCode")
    private String riskCode;

    /**
     * 责任名称
     */
    @TableField("dutyName")
    private String dutyName;

    /**
     * 责任编码
     */
    @TableField("dutyCode")
    private String dutyCode;

    /**
     * 保额
     */
    @TableField("Amnt")
    private Double Amnt;

    /**
     * 保费
     */
    @TableField("prem")
    private Double prem;

    /**
     * 免赔额
     */
    @TableField("GetLimit")
    private Double GetLimit;

    /**
     * 赔付比例
     */
    @TableField("GetRatio")
    private Double GetRatio;

    /**
     * 备用字段1
     */
    @TableField("spare1")
    private String spare1;

    /**
     * 备用字段2
     */
    @TableField("spare2")
    private String spare2;

    /**
     * 备用字段3
     */
    @TableField("spare3")
    private String spare3;

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
     * 创建日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 创建时间
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
     * 保全计划流水号
     */
    @TableId("edorPlanSN")
    private String edorPlanSN;

    /**
     * 免赔额属性
     */
    @TableField("GetLimitType")
    private String GetLimitType;


}
