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
@TableName("fdcodezip")
public class Fdcodezip implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 邮政编码
     */
    @TableId("ZipCodeKey")
    private String ZipCodeKey;

    /**
     * 省
     */
    @TableField("Province")
    private String Province;

    /**
     * 市
     */
    @TableField("City")
    private String City;

    /**
     * 县
     */
    @TableField("County")
    private String County;


}
