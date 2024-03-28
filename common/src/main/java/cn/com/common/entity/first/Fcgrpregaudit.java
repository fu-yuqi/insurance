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
@TableName("fcgrpregaudit")
public class Fcgrpregaudit implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 企业注册流水号
     */
    @TableId("grpRegNo")
    private String grpRegNo;

    /**
     * HR客户号
     */
    @TableField("ContactNo")
    private String ContactNo;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 审核结论
     */
    @TableField("AuditResult")
    private String AuditResult;

    /**
     * 审核意见
     */
    @TableField("AuditOpinion")
    private String AuditOpinion;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 操作机构(用于存储退回来源--null 管理员退回至Hr  not null Hr退回至管理员 )
     */
    @TableField("OperatorCom")
    private String OperatorCom;

    /**
     * 录入日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 录入时间
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
