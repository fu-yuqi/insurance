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
 * 子订单产品要素详情表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcorderitemdetail")
public class Fcorderitemdetail implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 子订单详情编号
     */
    @TableId("OrderItemDetailNo")
    private String OrderItemDetailNo;

    /**
     * 产品编码
     */
    @TableField("ProductCode")
    private String ProductCode;

    /**
     * 产品要素编码
001-责任组合编码
002-保费
003-0表示产品 1表示其他福利
004-责任组合名称

--新增的要素（日常）
0010-责任编码
005-保额
006-交费期间 
007-交费年期 
008-交费方式 
009-保费计算方式 
0011-是否是生日单  0-不是生日单  1-是
0012-是否有犹豫期  0-不需犹豫期  1-需
     */
    @TableField("ProductEleCode")
    private String ProductEleCode;

    /**
     * 产品要素值
     */
    @TableField("Value")
    private String Value;

    /**
     * 产品责任编码
     */
    @TableField("DutyCode")
    private String DutyCode;

    /**
     * 产品责任组合编码
     */
    @TableField("DutyGroupCode")
    private String DutyGroupCode;

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
