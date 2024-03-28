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
@TableName("fcedoreflexaddinsuredexceldutyinfo")
public class Fcedoreflexaddinsuredexceldutyinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 弹性统一增人险种责任kay值
     */
    @TableId("DutyKey")
    private String DutyKey;

    /**
     * 责任在Excel中的下标
     */
    @TableField("DutyIndex")
    private Integer DutyIndex;

    /**
     * sheet页码
     */
    @TableField("SheetIndex")
    private Integer SheetIndex;


}
