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
@TableName("fcedorhomogeneousriskinsuredold")
public class Fcedorhomogeneousriskinsuredold implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 同质被保险人流水号
     */
    @TableId("HomogeneousRiskInsuredSNOld")
    private String HomogeneousRiskInsuredSNOld;

    /**
     * 保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 保全受理号
     */
    @TableField("EdorAppNo")
    private String EdorAppNo;

    /**
     * 批次号
     */
    @TableField("Batch")
    private String Batch;

    /**
     * 计划编码
     */
    @TableField("PlanCode")
    private String PlanCode;

    /**
     * 企业号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 原被保险人姓名
     */
    @TableField("oldName")
    private String oldName;

    /**
     * 原被保险人证件类型
     */
    @TableField("oldIdType")
    private String oldIdType;

    /**
     * 原被保险人证件号
     */
    @TableField("oldIdNo")
    private String oldIdNo;

    /**
     * 原被保险人性别
     */
    @TableField("oldSex")
    private String oldSex;

    /**
     * 原被保险人出生日期
     */
    @TableField("oldBirthday")
    private String oldBirthday;

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
     * 减员生效日
     */
    @TableField("ZtaliDate")
    private String ZtaliDate;

    /**
     * 缴费来源
     */
    @TableField("FeeFrom")
    private String FeeFrom;


}
