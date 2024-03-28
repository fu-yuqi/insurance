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
@TableName("fcorderlocus")
public class Fcorderlocus implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单轨迹流水号
     */
    @TableId("OrderLocusSN")
    private String OrderLocusSN;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 订单状态
     */
    @TableField("OrderStatus")
    private String OrderStatus;

    /**
     * 错误信息
     */
    @TableField("ErrorMsg")
    private String ErrorMsg;

    /**
     * 备注
     */
    @TableField("Remark")
    private String Remark;

    /**
     * 是否是问题件1--是 0--否
     */
    @TableField("IsQuestDoc")
    private String IsQuestDoc;

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
