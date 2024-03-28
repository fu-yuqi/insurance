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
@TableName("fdensureplatformserviceprice")
public class Fdensureplatformserviceprice implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 平台服务ID,标识具体平台相关可预约服务
     */
    @TableId("PlatFormServiceID")
    private String PlatFormServiceID;

    /**
     * 服务价格
     */
    @TableField("ServicePrice")
    private String ServicePrice;

    /**
     * 服务单位
     */
    @TableField("ServiceUnit")
    private String ServiceUnit;

    /**
     * 服务地区
     */
    @TableField("ServiceRegion")
    private String ServiceRegion;

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
