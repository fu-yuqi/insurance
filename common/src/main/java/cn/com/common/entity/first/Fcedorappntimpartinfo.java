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
@TableName("fcedorappntimpartinfo")
public class Fcedorappntimpartinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保全批次号
     */
    @TableId("BatchNo")
    private String BatchNo;

    /**
     * 保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 告知编码
     */
    @TableField("ImpartCode")
    private String ImpartCode;

    /**
     * 详细描述
     */
    @TableField("ImpartParamModle")
    private String ImpartParamModle;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 操作机构
     */
    @TableField("OperatorCom")
    private String OperatorCom;

    /**
     * 生成日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 生成时间
     */
    @TableField("MakeTime")
    private String MakeTime;

    /**
     * 修改日期
     */
    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    /**
     * 修改时间
     */
    @TableField("ModifyTime")
    private String ModifyTime;


}
