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
@TableName("fcedoraddamountgrade")
public class Fcedoraddamountgrade implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 弹性--增人流水号
     */
    @TableId("PlusInsuredSN")
    private String PlusInsuredSN;

    /**
     * 保额档次编号
     */
    @TableField("AmountGrageCode")
    private String AmountGrageCode;

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
    @TableField("Deductible")
    private Double Deductible;

    /**
     * 免赔额属性
     */
    @TableField("DeductibleType")
    private String DeductibleType;

    /**
     * 赔付比例
     */
    @TableField("CompensationRatio")
    private Double CompensationRatio;

    /**
     * 医保未结算赔付比例
     */
    @TableField("UnCompensationRatio")
    private Double UnCompensationRatio;

    /**
     * 入库日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 入库时间
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
