package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
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
@TableName("fdcodeocc")
public class Fdcodeocc implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 旧职业编号
     */
    @TableField("OldCodeKey")
    private String OldCodeKey;

    /**
     * 旧职业名称
     */
    @TableField("OldCodeName")
    private String OldCodeName;

    /**
     * 新职业编号
     */
    @TableField("CodeKey")
    private String CodeKey;

    /**
     * 新职业名称
     */
    @TableField("CodeName")
    private String CodeName;

    /**
     * 职业类别
     */
    @TableField("OccupationType")
    private String OccupationType;


}
