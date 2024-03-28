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
@TableName("fcdutygradeoptionalamountinfo")
public class Fcdutygradeoptionalamountinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保额档次编码
     */
    @TableId("AmountGrageCode")
    private String AmountGrageCode;

    /**
     * 可选责任编码
     */
    @TableField("OptDutyCode")
    private String OptDutyCode;

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
     * 管理员
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
