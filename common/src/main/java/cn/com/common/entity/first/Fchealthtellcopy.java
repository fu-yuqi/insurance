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
@TableName("fchealthtellcopy")
public class Fchealthtellcopy implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 告知编码
     */
    @TableId("ImpartCode")
    private String ImpartCode;

    /**
     * 详细描述
     */
    @TableField("ImpartParamModle")
    private String ImpartParamModle;

    /**
     * 性别:
0男  
1女
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 年龄 1：2岁以下男孩  2:2岁以下女孩  3：2岁以上男  4： 2岁以上女
     */
    @TableField("age")
    private String age;


}
