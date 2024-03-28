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
@TableName("fcedoraddplaninfo")
public class Fcedoraddplaninfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 增人计划流水号
     */
    @TableId("EdorAddPlanSN")
    private String EdorAddPlanSN;

    /**
     * 团体保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 计划编码
     */
    @TableField("PlanCode")
    private String PlanCode;

    /**
     * 计划名称
     */
    @TableField("PlanName")
    private String PlanName;

    /**
     * 计划对象
     */
    @TableField("PlanObject")
    private String PlanObject;

    /**
     * 投保人数
     */
    @TableField("Peoples3")
    private String Peoples3;

    /**
     * 计划总保费
     */
    @TableField("TotalPrem")
    private BigDecimal TotalPrem;

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


}
