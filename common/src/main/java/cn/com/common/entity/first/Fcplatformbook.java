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
@TableName("fcplatformbook")
public class Fcplatformbook implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 预约流水号
     */
    @TableId("BookSN")
    private String BookSN;

    /**
     * 企业编码
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 服务平台ID
     */
    @TableField("PlatFormID")
    private String PlatFormID;

    /**
     * 预约服务ID
     */
    @TableField("PlatFormServiceID")
    private String PlatFormServiceID;

    /**
     * 员工编码
     */
    @TableField("PerNo")
    private String PerNo;

    /**
     * 预约手机号
     */
    @TableField("BookPhone")
    private String BookPhone;

    /**
     * 预约时间
     */
    @TableField("BookDate")
    private LocalDateTime BookDate;

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
