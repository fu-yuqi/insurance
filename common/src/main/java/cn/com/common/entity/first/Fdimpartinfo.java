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
@TableName("fdimpartinfo")
public class Fdimpartinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 告知版别
     */
    @TableField("ImpartVer")
    private String ImpartVer;

    /**
     * 告知编码
     */
    @TableId("ImpartCode")
    private String ImpartCode;

    /**
     * 告知内容
     */
    @TableField("ImpartContent")
    private String ImpartContent;

    /**
     * 详细描述
     */
    @TableField("ImpartParamModle")
    private String ImpartParamModle;


}
