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
@TableName("fcgrpedorconfig")
public class Fcgrpedorconfig implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("edorCode")
    private String edorCode;

    @TableField("grpNo")
    private String grpNo;

    @TableField("edorName")
    private String edorName;

    @TableField("Operator")
    private String Operator;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("makeDate")
    private LocalDate makeDate;

    @TableField("makeTime")
    private String makeTime;

    @TableField("modifyDate")
    private LocalDate modifyDate;

    @TableField("modifyTime")
    private String modifyTime;


}
