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
@TableName("fcplanconfig")
public class Fcplanconfig implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利配置流水号
     */
    @TableId("SerialNo")
    private String SerialNo;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 计划编码
     */
    @TableField("PlanCode")
    private String PlanCode;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 保障配置项 001-等待期 003-既往症 004-是否个告 005-下限 006-下限单位 007-下限符号 008-上限  009-上限单位  010-上限符号 011-投保年龄段下限 012-下限单位 013-投保年龄段上限  014-上限单位 015-特别约定 016-与员工关系017-职业类别下限 018-职业类别上限 019-性别 020-有无医保 021-医疗机构 022-其他约定
     */
    @TableField("ConfigNo")
    private String ConfigNo;

    /**
     * 保障配置项值
     */
    @TableField("ConfigValue")
    private String ConfigValue;

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
