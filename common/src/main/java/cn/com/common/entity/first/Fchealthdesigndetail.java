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
@TableName("fchealthdesigndetail")
public class Fchealthdesigndetail implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 健康方案编号
     */
    @TableId("HealthDesignNo")
    private String HealthDesignNo;

    /**
     * 险种编码
     */
    @TableField("RiskCode")
    private String RiskCode;

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
     * 保额上限
     */
    @TableField("AmntTopLimit")
    private Double AmntTopLimit;

    /**
     * 保额下限
     */
    @TableField("AmntLowLimit")
    private Double AmntLowLimit;

    /**
     * 年龄上限
     */
    @TableField("AgeTopLimit")
    private String AgeTopLimit;

    /**
     * 年龄下限
     */
    @TableField("AgeLowLimit")
    private String AgeLowLimit;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 被保人类别 01-本人  02-配偶  03-子女  04-父母
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
