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
@TableName("fdedoritem")
public class Fdedoritem implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保全项目编码
     */
    @TableId("edorcode")
    private String edorcode;

    /**
     * 保全名称
     */
    @TableField("edorName")
    private String edorName;

    /**
     * 是否有效  0-有效  1-无效
     */
    @TableField("IsValid")
    private String IsValid;

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
     * 入机日期
     */
    @TableField("makeDate")
    private LocalDate makeDate;

    /**
     * 入机时间
     */
    @TableField("makeTime")
    private String makeTime;

    /**
     * 修改日期
     */
    @TableField("modifyDate")
    private LocalDate modifyDate;

    /**
     * 修改时间
     */
    @TableField("modifyTime")
    private String modifyTime;


}
