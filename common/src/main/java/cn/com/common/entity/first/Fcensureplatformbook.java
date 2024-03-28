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
@TableName("fcensureplatformbook")
public class Fcensureplatformbook implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利健康服务流水号
     */
    @TableId("HealthSN")
    private String HealthSN;

    /**
     * 福利编码
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全批次号
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    /**
     * 被保人客户号
     */
    @TableField("PersonID")
    private String PersonID;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 子订单号
     */
    @TableField("OrderItemNo")
    private String OrderItemNo;

    /**
     * 所选服务平台编号
     */
    @TableField("PlatFormID")
    private String PlatFormID;

    /**
     * 所选健康服务编号
     */
    @TableField("PlatFormServiceID")
    private String PlatFormServiceID;

    /**
     * 所选健康服务价格
     */
    @TableField("ServicePrice")
    private String ServicePrice;

    /**
     * 所选健康服务份数
     */
    @TableField("ServiceNumber")
    private Integer ServiceNumber;

    /**
     * 所选服务预约时间
     */
    @TableField("ServiceTime")
    private LocalDateTime ServiceTime;

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
