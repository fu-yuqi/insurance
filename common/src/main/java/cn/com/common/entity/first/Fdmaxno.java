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
@TableName("fdmaxno")
public class Fdmaxno implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("NoType")
    private String NoType;

    @TableField("NoLimit")
    private String NoLimit;

    @TableField("MaxNo")
    private Integer MaxNo;


}
