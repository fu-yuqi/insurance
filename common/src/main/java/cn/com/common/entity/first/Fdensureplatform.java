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
@TableName("fdensureplatform")
public class Fdensureplatform implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 平台ID,标识各个健康服务平台
     */
    @TableId("PlatFormID")
    private String PlatFormID;

    /**
     * 平台名称
     */
    @TableField("PlatFormName")
    private String PlatFormName;

    /**
     * 平台公司名称
     */
    @TableField("PlatFormGrpName")
    private String PlatFormGrpName;

    /**
     * 平台类型，Fdcode关键字：PlatFormType
     */
    @TableField("PlatFormType")
    private String PlatFormType;

    /**
     * 平台地址
     */
    @TableField("PlatFormUrl")
    private String PlatFormUrl;

    /**
     * 平台是否在员福显示，0-显示，1-隐藏
     */
    @TableField("PlatFormState")
    private String PlatFormState;

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
