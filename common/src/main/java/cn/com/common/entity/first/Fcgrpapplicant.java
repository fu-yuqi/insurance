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
 * 团体投保人表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcgrpapplicant")
public class Fcgrpapplicant implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 团体投保人编号
     */
    @TableId("GrpAppNo")
    private String GrpAppNo;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 企业名称
     */
    @TableField("GrpName")
    private String GrpName;

    /**
     * 企业地址
     */
    @TableField("GrpAddRess")
    private String GrpAddRess;

    /**
     * 邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 统一社会信用代码
     */
    @TableField("UnifiedsociCode")
    private String UnifiedsociCode;

    /**
     * 单位证件类型
     */
    @TableField("GrpIdType")
    private String GrpIdType;

    /**
     * 单位证件号码
     */
    @TableField("GrpIdNo")
    private String GrpIdNo;

    /**
     * 企业性质
     */
    @TableField("GrpType")
    private String GrpType;

    /**
     * 开户账户名名称
     */
    @TableField("AccName")
    private String AccName;

    /**
     * 开户银行编码
     */
    @TableField("grpBankCode")
    private String grpBankCode;

    /**
     * 开户银行账号
     */
    @TableField("grpBankAccNo")
    private String grpBankAccNo;

    /**
     * 企业总人数
     */
    @TableField("Peoples")
    private Integer Peoples;

    /**
     * 企业法人代表
     */
    @TableField("CorporationMan")
    private String CorporationMan;

    /**
     * 企业注册电话
     */
    @TableField("telphone")
    private String telphone;

    /**
     * 企业注册地址
     */
    @TableField("regaddress")
    private String regaddress;

    /**
     * 企业邮箱
     */
    @TableField("Email")
    private String Email;

    /**
     * 操作机构
     */
    @TableField("OperatorCom")
    private String OperatorCom;

    /**
     * 操作员
     */
    @TableField("Operator")
    private String Operator;

    /**
     * 入机时间
     */
    @TableField("MakeTime")
    private String MakeTime;

    /**
     * 入机日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

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
