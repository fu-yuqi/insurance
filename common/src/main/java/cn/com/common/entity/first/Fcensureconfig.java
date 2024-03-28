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
@TableName("fcensureconfig")
public class Fcensureconfig implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 福利配置流水号
     */
    @TableId("SerialNo")
    private String SerialNo;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 保障配置项编号
001-员工等待期
002-家属等待期
003-医疗机构
004-责任说明
005-既往症
006-其他约定
007-股东业务
008-缴费方式
(2-企业代扣代缴-企业代缴  3-个人批扣-混合缴费)009-股东名称
010-回退原因
011-财务联系方式
 012-回退人员类型 0--HR  1--计划审核(团险/审核管理员)  2--计划审核(运营/复核管理员)  
013-是否续保1是，0否
014-同质风险加减人比例上限
015-是否为保全定期结算Y是，N否
016-保全定期结算周期
017-定期结算金额上限 018-特别约定 019-是否配置健康告知（0-是 1-否） 020-销售渠道
     */
    @TableField("ConfigNo")
    private String ConfigNo;

    /**
     * 保障配置项值
     */
    @TableField("ConfigValue")
    private String ConfigValue;

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
