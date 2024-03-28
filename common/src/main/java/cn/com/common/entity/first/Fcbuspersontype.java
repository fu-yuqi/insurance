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
@TableName("fcbuspersontype")
public class Fcbuspersontype implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利编号
     */
    @TableId("EnsureCode")
    private String EnsureCode;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 职级编号
     */
    @TableField("GradeLevelCode")
    private String GradeLevelCode;

    /**
     * 职级描述
     */
    @TableField("GradeDesc")
    private String GradeDesc;

    /**
     * 职级顺序号
     */
    @TableField("OrderNum")
    private String OrderNum;

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
