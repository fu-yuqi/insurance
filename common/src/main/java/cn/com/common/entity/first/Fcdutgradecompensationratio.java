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
@TableName("fcdutgradecompensationratio")
public class Fcdutgradecompensationratio implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保额档次编码
     */
    @TableId("AmountGrageCode")
    private String AmountGrageCode;

    /**
     * 赔付比例
     */
    @TableField("CompensationRatio")
    private Double CompensationRatio;

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
