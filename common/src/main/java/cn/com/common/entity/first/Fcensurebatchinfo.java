package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

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
@TableName("fcensurebatchinfo")
public class Fcensurebatchinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 新单保全增人批次号 (新单保全--流水号  统一保全--保全受理号)
     */
    @TableId("AddBatchSN")
    private String AddBatchSN;

    /**
     * 增人申请名称
     */
    @TableField("BatchName")
    private String BatchName;

    /**
     * 所属福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全开始日期
     */
    @TableField("EdorStartDate")
    private LocalDate EdorStartDate;

    /**
     * 保全结束日期
     */
    @TableField("EdorEndDate")
    private LocalDate EdorEndDate;

    /**
     * 保全受理号
     */
    @TableField("EdorAppNo")
    private String EdorAppNo;

    /**
     * 保全类型 0-统一保全 1-新单保全
     */
    @TableField("EdorType")
    private String EdorType;

    /**
     * 保全缴费方式 1-企业全缴 2-企业代缴 3-个人批扣
     */
    @TableField("EdorPayType")
    private String EdorPayType;

    /**
     * 增人批次状态 0-定制中  1-待审核  2-审核通过  3-退回Hr配置 4-已保全确认 5- 复审审核 6 -退回业管 7- hr直接确认
     */
    @TableField("BatchState")
    private String BatchState;

    /**
     * 退回原因
     */
    @TableField("returnReason")
    private String returnReason;

    /**
     * 扣款失败信息首次推送日期
     */
    @TableField("PushDate")
    private LocalDate PushDate;

    /**
     * 是否需要管理员进行审核 0-需要 1-无需
     */
    @TableField("AuditSign")
    private String AuditSign;

    /**
     * 1--整单插销
     */
    @TableField("RevokeState")
    private String RevokeState;

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
     * 申请时间
     */
    @TableField("ApplyDateTime")
    private LocalDateTime ApplyDateTime;

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
