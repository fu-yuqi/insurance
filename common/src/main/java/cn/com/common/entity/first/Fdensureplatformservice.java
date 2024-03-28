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
@TableName("fdensureplatformservice")
public class Fdensureplatformservice implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 平台服务ID,标识具体平台相关可预约服务
     */
    @TableId("PlatFormServiceID")
    private String PlatFormServiceID;

    /**
     * 平台ID,标识各个健康服务平台
     */
    @TableField("PlatFormID")
    private String PlatFormID;

    /**
     * 服务名称
     */
    @TableField("ServiceName")
    private String ServiceName;

    /**
     * 服务类型 关联Fdcode关键字HealthServiceType
     */
    @TableField("ServiceType")
    private String ServiceType;

    /**
     * 服务是否在售，0-在售，1-不在售
     */
    @TableField("ServiceState")
    private String ServiceState;

    /**
     * 服务日期(5，周一至周五，7，周一至周日)
     */
    @TableField("ServiceDate")
    private String ServiceDate;

    /**
     * 服务开始时间
     */
    @TableField("ServiceStartTime")
    private String ServiceStartTime;

    /**
     * 服务截止时间
     */
    @TableField("ServiceEndTime")
    private String ServiceEndTime;

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
