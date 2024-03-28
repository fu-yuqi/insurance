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
@TableName("fcbusinessprodutygrpobject_copy")
public class FcbusinessprodutygrpobjectCopy implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 流水号
     */
    @TableId("SerialNo")
    private String SerialNo;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保额档次编码
     */
    @TableField("AmountGrageCode")
    private String AmountGrageCode;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 职级上限
     */
    @TableField("GradeLevelTopLimit")
    private String GradeLevelTopLimit;

    /**
     * 职级下限
     */
    @TableField("GradeLevelLowLimit")
    private String GradeLevelLowLimit;

    /**
     * 职级类别上限
     */
    @TableField("OccupationTypeTopLimit")
    private String OccupationTypeTopLimit;

    /**
     * 职级类别下限
     */
    @TableField("OccupationTypeLowLimit")
    private String OccupationTypeLowLimit;

    /**
     * 投保年龄上限
     */
    @TableField("AgeTopLimit")
    private String AgeTopLimit;

    /**
     * 投保年龄下限
     */
    @TableField("AgeLowLimit")
    private String AgeLowLimit;

    /**
     * 服务年限上限
     */
    @TableField("ComeAgeTopLimit")
    private String ComeAgeTopLimit;

    /**
     * 服务年限下限
     */
    @TableField("ComeAgeLowLimit")
    private String ComeAgeLowLimit;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 是否退休
     */
    @TableField("Retirement")
    private String Retirement;

    /**
     * 免赔额默认档次
     */
    @TableField("DefaultDeductible")
    private Double DefaultDeductible;

    /**
     * 赔付比例默认档次
     */
    @TableField("DefaultCompensationRatio")
    private Double DefaultCompensationRatio;

    /**
     * 是否为默认档次
     */
    @TableField("IsDefaultFlag")
    private String IsDefaultFlag;

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
     * 被保人类别 0-本人  1-父母 2-配偶  3-子女  6-其他
     */
    @TableField("InsuredType")
    private String InsuredType;

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
