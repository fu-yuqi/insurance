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
 * 健康告知表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcinform")
public class Fcinform implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 告知编号
     */
    @TableId("InformNumber")
    private String InformNumber;

    /**
     * 告知版本
     */
    @TableField("InformVersion")
    private String InformVersion;

    /**
     * 告知内容
     */
    @TableField("InformContent")
    private String InformContent;

    /**
     * 详细描述
     */
    @TableField("InformDescribe")
    private String InformDescribe;

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
