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
 * 企业弹性福利保障表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcensure")
public class Fcensure implements Serializable {

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
     * 福利名称
     */
    @TableField("EnsureName")
    private String EnsureName;

    /**
     * 福利投保类型：0-企事业单位投保  1-在校学生投保
     */
    @TableField("EnsureType")
    private String EnsureType;

    /**
     * 投保年度
     */
    @TableField("AppntYear")
    private String AppntYear;

    /**
     * 保单生效日
     */
    @TableField("CvaliDate")
    private LocalDate CvaliDate;

    /**
     * 福利状态
0	未定制
010	HR退回后台定制
011	管理员退回后台定制
02	待后台审核
03	后台审核中
04	退回HR定制
05	待复核确认
06	复核确认中
07	后台定制中
08	待HR定制
09	HR定制中
1	复核完成
013           核心退回
     */
    @TableField("EnsureState")
    private String EnsureState;

    /**
     * 保单截止日
     */
    @TableField("PolicyEndDate")
    private LocalDate PolicyEndDate;

    /**
     * 福利保障申请时间
     */
    @TableField("AppDate")
    private LocalDate AppDate;

    /**
     * 投保人数
     */
    @TableField("InsuredNumber")
    private Integer InsuredNumber;

    /**
     * 总保费
     */
    @TableField("TotalPrem")
    private Double TotalPrem;

    /**
     * 投保开放日期
     */
    @TableField("StartAppntDate")
    private LocalDate StartAppntDate;

    /**
     * 投保结束日期
     */
    @TableField("EndAppntDate")
    private LocalDate EndAppntDate;

    /**
     * 计划类型  0-固定计划  1-弹性计划
     */
    @TableField("PlanType")
    private String PlanType;

    /**
     * 保单状态
1-投保中
2-待承保
3-已承保
4-承保结束
5-承保失败
     */
    @TableField("PolicyState")
    private String PolicyState;

    /**
     * 保费计算方式  0--表定费率  1--约定保额保费  2--表定加约定
     */
    @TableField("PremCalType")
    private String PremCalType;

    /**
     * 支付方式
     */
    @TableField("PayType")
    private String PayType;

    /**
     * 业务员工号
     */
    @TableField("ClientNo")
    private String ClientNo;

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

    @TableField("ResetExplain")
    private String ResetExplain;

    /**
     * 1-整单撤销
     */
    @TableField("RevokeState")
    private String RevokeState;

    /**
     * 是否允许员工添加家属 0-允许 1-不许
     */
    @TableField("AddFamilySign")
    private String AddFamilySign;

    /**
     * 发票状态0-未生成1-已生成
     */
    @TableField("MakeInvoice")
    private String MakeInvoice;

    /**
     * 是否包含健康服务 0-不包括，1-包括
     */
    @TableField("healthServices")
    private String healthServices;

    /**
     * 是否为核心退回，是 1 ，否 0
     */
    @TableField("TFReturn")
    private String TFReturn;


}
