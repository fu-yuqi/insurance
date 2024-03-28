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
@TableName("fcprtandcorerela")
public class Fcprtandcorerela implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 序列号
     */
    @TableId("RelaSn")
    private String RelaSn;

    /**
     * 平台投保单号
     */
    @TableField("PrtNo")
    private String PrtNo;

    /**
     * 核心投保单号
     */
    @TableField("tPrtNo")
    private String tPrtNo;

    /**
     * 00-福利复核通过  01-已发送，02-承保成功，03-承保失败, 04-待承保, 05-投保失败  ， 06 -核心退回
     */
    @TableField("Status")
    private String Status;

    /**
     * 描述
     */
    @TableField("Describe")
    private String Describe;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;


}
