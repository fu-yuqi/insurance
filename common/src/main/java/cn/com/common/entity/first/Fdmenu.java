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
@TableName("fdmenu")
public class Fdmenu implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单节点
     */
    @TableId("NodeCode")
    private String NodeCode;

    /**
     * 菜单父节点
     */
    @TableField("ParentNodeCode")
    private String ParentNodeCode;

    /**
     * 菜单层级
     */
    @TableField("NodeLevel")
    private Integer NodeLevel;

    /**
     * 菜单名称
     */
    @TableField("NodeName")
    private String NodeName;

    /**
     * 子菜单个数
     */
    @TableField("ChildFlag")
    private Integer ChildFlag;

    /**
     * 页面链接地址
     */
    @TableField("RunScript")
    private String RunScript;

    /**
     * 菜单图片
     */
    @TableField("NodeImgUrl")
    private String NodeImgUrl;

    /**
     * 菜单节点说明
     */
    @TableField("NodeDesc")
    private String NodeDesc;

    /**
     * 菜单顺序
     */
    @TableField("NodeOrder")
    private Integer NodeOrder;


}
