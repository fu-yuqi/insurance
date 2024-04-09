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
 * @since 2024-04-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fu_role")
public class FuRole implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 1、HR
            2、分公司管理员
            3、总公司管理员
     */
    @TableId("id")
    private String id;

    /**
     * 1、HR
            2、分公司管理员
            3、总公司管理员
     */
    @TableField("role_name")
    private String roleName;

    /**
     * 存当前登录用户ID
     */
    @TableField("operator")
    private String operator;

    /**
     * 存当前操作用户的管理机构
     */
    @TableField("operatorcom")
    private String operatorcom;

    /**
     * 创建日期
     */
    @TableField("makedate")
    private LocalDate makedate;

    /**
     * 创建时间
     */
    @TableField("maketime")
    private String maketime;

    /**
     * 修改日期
     */
    @TableField("modifydate")
    private LocalDate modifydate;

    /**
     * 修改时间
     */
    @TableField("modifytime")
    private String modifytime;


}
