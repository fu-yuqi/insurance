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
@TableName("fdfiledoctype")
public class Fdfiledoctype implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("DocType")
    private String DocType;

    @TableField("TypeName")
    private String TypeName;

    @TableField("DocDesc")
    private String DocDesc;

    @TableField("Operator")
    private String Operator;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;


}
