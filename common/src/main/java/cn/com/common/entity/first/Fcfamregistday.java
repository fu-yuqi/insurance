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
@TableName("fcfamregistday")
public class Fcfamregistday implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 家属注册流水号
     */
    @TableId("FamRegistDayNo")
    private String FamRegistDayNo;

    /**
     * 员工注册流水号
     */
    @TableField("PerRegistDayNo")
    private String PerRegistDayNo;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全批次号
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    /**
     * 家属编码
     */
    @TableField("PersonID")
    private String PersonID;

    /**
     * 保全生效日
     */
    @TableField("OpenDay")
    private LocalDate OpenDay;

    /**
     * 保全收退费新增字段 存储企业缴纳费用(核心返回)
     */
    @TableField("GrpPrem")
    private Double GrpPrem;

    /**
     * 保全收退费新增字段 存储企业缴纳费用(核心返回)
     */
    @TableField("SelfPrem")
    private Double SelfPrem;

    /**
     * 操作人员
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
