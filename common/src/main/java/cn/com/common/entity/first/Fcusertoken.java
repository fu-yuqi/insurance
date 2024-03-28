package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDate;

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
@TableName("fcusertoken")
public class Fcusertoken implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("token")
    private String token;

    @TableField("userNo")
    private String userNo;

    @TableField("IsValid")
    private String IsValid;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;


}
