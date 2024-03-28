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
 * 保障计划表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcensureplan")
public class Fcensureplan implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 计划编码
     */
    @TableId("PlanCode")
    private String PlanCode;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 计划名称
     */
    @TableField("PlanName")
    private String PlanName;

    /**
     * 使用人
1-员工
2-家属3-学生
     */
    @TableField("PlanObject")
    private String PlanObject;

    /**
     * 计划重点
     */
    @TableField("PlanKey")
    private String PlanKey;

    /**
     * 投保人数
     */
    @TableField("InsuredNumber")
    private Integer InsuredNumber;

    /**
     * 计划总保费
     */
    @TableField("TotalPrem")
    private Double TotalPrem;

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
