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
@TableName("fdlocation_copy")
public class FdlocationCopy implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableField("PlaceType")
    private String PlaceType;

    @TableField("PlaceCode")
    private String PlaceCode;

    @TableField("PlaceName")
    private String PlaceName;

    @TableField("UpplaceCode")
    private String UpplaceCode;

    @TableField("OtherSign")
    private String OtherSign;

    @TableField("CodeDesc")
    private String CodeDesc;


}
