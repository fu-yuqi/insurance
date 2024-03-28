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
 * 员工注册期的开放日和关闭日
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcperregistday")
public class Fcperregistday implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 注册期流水号
     */
    @TableId("RegistDayNo")
    private String RegistDayNo;

    /**
     * 弹性福利编码
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全批次号
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    /**
     * 个人客户号
     */
    @TableField("PerNo")
    private String PerNo;

    /**
     * 注册期开放日
     */
    @TableField("OpenDay")
    private LocalDate OpenDay;

    /**
     * 注册期结束日
     */
    @TableField("CloseDay")
    private LocalDate CloseDay;

    /**
     * 被开放人身份
     */
    @TableField("PersonType")
    private String PersonType;

    /**
     * 注册期是否有效 0--无效
 1--有效
     */
    @TableField("IsValidy")
    private String IsValidy;

    /**
     * 生效日
     */
    @TableField("Validydate")
    private LocalDate Validydate;

    /**
     * 保单截止日
     */
    @TableField("EndDate")
    private LocalDate EndDate;

    /**
     * 生效日类型 0--保单生效日 1--保全生效日
     */
    @TableField("ValidydateType")
    private String ValidydateType;

    /**
     * 注册期做用人编号
     */
    @TableField("RegistDayToManNo")
    private String RegistDayToManNo;

    /**
     * 员工补助保费
     */
    @TableField("StaffGrpPrem")
    private Double StaffGrpPrem;

    /**
     * 家属补助总保费
     */
    @TableField("FamilyGrpPrem")
    private Double FamilyGrpPrem;

    /**
     * 学生补助总保费
     */
    @TableField("StudentGrpPrem")
    private Double StudentGrpPrem;

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

    /**
     * 配偶补助总保费
     */
    @TableField("SpouseGrpPrem")
    private Double SpouseGrpPrem;

    /**
     * 子女补助总保费
     */
    @TableField("ChildrenGrpPrem")
    private Double ChildrenGrpPrem;

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
     * 家属保费类型 0-整体额度 1-个人额度
     */
    @TableField("FamPremType")
    private String FamPremType;

    /**
     * 启用/禁用员工  0-启用状态  1-禁用状态
     */
    @TableField("LockState")
    private String LockState;


}
