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
@TableName("fcedorreason")
public class Fcedorreason implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保全受理号
     */
    @TableId("edorAppNo")
    private String edorAppNo;

    /**
     * 申请原因
     */
    @TableField("appResaon")
    private String appResaon;

    /**
     * 哪种类型的保全项
     */
    @TableField("decInsuredSn")
    private String decInsuredSn;

    /**
     * 其他具体申请原因
     */
    @TableField("cause")
    private String cause;

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
