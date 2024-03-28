package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

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
@TableName("fdmenugrptomenu")
public class Fdmenugrptomenu implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单组编码
     */
    @TableId("MenuGrpCode")
    private String MenuGrpCode;

    /**
     * 菜单编码 1-HR   2-员工  3-审核管理员   4-复核管理员  5-业务管理员  6-暂时不用考虑 7-超级管理员
     */
    @TableField("NodeCode")
    private String NodeCode;


}
