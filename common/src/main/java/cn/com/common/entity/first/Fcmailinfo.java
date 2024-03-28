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
@TableName("fcmailinfo")
public class Fcmailinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 发票寄送信息流水号
     */
    @TableId("InvoiceInfoSN")
    private String InvoiceInfoSN;

    /**
     * 企业编号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 个人客户号
     */
    @TableField("PersonId")
    private String PersonId;

    /**
     * 客户类型
     */
    @TableField("CustomType")
    private String CustomType;

    /**
     * 发票类型
     */
    @TableField("InvoiceType")
    private String InvoiceType;

    /**
     * 发票金额
     */
    @TableField("InvoiceAmount")
    private Double InvoiceAmount;

    /**
     * 收件人
     */
    @TableField("Receiver")
    private String Receiver;

    /**
     * 手机号码
     */
    @TableField("TelPhone")
    private String TelPhone;

    /**
     * 邮政编码
     */
    @TableField("Zipcode")
    private String Zipcode;

    /**
     * 付款人
     */
    @TableField("PayName")
    private String PayName;

    /**
     * 电子邮箱
     */
    @TableField("Email")
    private String Email;

    /**
     * 所在地区
     */
    @TableField("Location")
    private String Location;

    /**
     * 详细地址
     */
    @TableField("Address")
    private String Address;

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

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 申请人姓名
     */
    @TableField("ApplicantName")
    private String ApplicantName;

    /**
     * 注册地址
     */
    @TableField("RegAddress")
    private String RegAddress;

    /**
     * 注册电话
     */
    @TableField("Regphone")
    private String Regphone;

    /**
     * 开户银行
     */
    @TableField("GrpBankcode")
    private String GrpBankcode;

    /**
     * 开户账号
     */
    @TableField("GrpBankaccno")
    private String GrpBankaccno;


}
