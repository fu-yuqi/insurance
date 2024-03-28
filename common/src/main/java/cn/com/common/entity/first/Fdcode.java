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
@TableName("fdcode")
public class Fdcode implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 代码类型
     */
    @TableId("CodeType")
    private String CodeType;

    /**
     * 代码关键字
     */
    @TableField("CodeKey")
    private String CodeKey;

    /**
     * 代码名称
     */
    @TableField("CodeName")
    private String CodeName;

    /**
     * 代码描述
     */
    @TableField("CodeDesc")
    private String CodeDesc;

    /**
     * 其他标志
     */
    @TableField("OtherSign")
    private String OtherSign;

    /**
     * 代码顺序
     */
    @TableField("CodeOrder")
    private Integer CodeOrder;

    @TableField("CoreCode")
    private String CoreCode;

    @TableField("CoreName")
    private String CoreName;


}
