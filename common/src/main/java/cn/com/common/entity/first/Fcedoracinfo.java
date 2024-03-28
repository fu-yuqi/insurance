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
@TableName("fcedoracinfo")
public class Fcedoracinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保全受理号
     */
    @TableId("EdorAppNo")
    private String EdorAppNo;

    /**
     * 保单号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 投保企业名称
     */
    @TableField("GrpName")
    private String GrpName;

    /**
     * 投保企业法人
     */
    @TableField("Corporation")
    private String Corporation;

    /**
     * 付款方式  1-现金  4-银行转账
     */
    @TableField("GetFlag")
    private String GetFlag;

    /**
     * 开户银行
     */
    @TableField("BankCode")
    private String BankCode;

    /**
     * 银行账号
     */
    @TableField("BankAccNo")
    private String BankAccNo;

    /**
     * 企业地址
     */
    @TableField("GrpAddress")
    private String GrpAddress;

    /**
     * 企业邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 企业邮箱
     */
    @TableField("Email")
    private String Email;

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
     * 注册资本
     */
    @TableField("asset")
    private String asset;

    /**
     * 投保人证件类型止期
     */
    @TableField("idTimeEnd")
    private String idTimeEnd;

    /**
     * 员工总数
     */
    @TableField("peoples")
    private String peoples;

    /**
     * 实际经营地或注册地址
     */
    @TableField("comWebsite")
    private String comWebsite;

    /**
     * 机构类别 1-消极非金融机构 2-其他非金融机构 3-豁免机构
     */
    @TableField("negativeFlag")
    private String negativeFlag;

    /**
     * 法定代表人证件号码
     */
    @TableField("corporationIDNo")
    private String corporationIDNo;

    /**
     * 法定代表人身份证件类型
     */
    @TableField("iDType")
    private String iDType;

    /**
     * 法定代表人证件有效期至
     */
    @TableField("iDValidityPeriod")
    private LocalDate iDValidityPeriod;

    /**
     * 统一社会信用代码
     */
    @TableField("socCreNum")
    private String socCreNum;

    /**
     * 组织机构代码
     */
    @TableField("comNo")
    private String comNo;

    /**
     * 税务登记号
     */
    @TableField("taxRegNum")
    private String taxRegNum;

    /**
     * 工商注册号
     */
    @TableField("busRegNum")
    private String busRegNum;

    /**
     * 营业执照有效起期
     */
    @TableField("busliceStartDate")
    private LocalDate busliceStartDate;

    /**
     * 营业执照有效止期
     */
    @TableField("busliceDate")
    private LocalDate busliceDate;

    /**
     * 控股股东或者实际控制人
     */
    @TableField("contrShar")
    private String contrShar;

    /**
     * 控股股东或实际控制人类型
     */
    @TableField("shareholderType")
    private String shareholderType;

    /**
     * 控股股东或实际控制人身份证件类型
     */
    @TableField("shareholderIDType")
    private String shareholderIDType;

    /**
     * 控股股东或实际控制人身份证件号码
     */
    @TableField("shareholderIDNo")
    private String shareholderIDNo;

    /**
     * 控股股东或实际控制人身份证件有效期至
     */
    @TableField("shareholderIDExpDate")
    private String shareholderIDExpDate;

    /**
     * 控股股东统一社会信用代码
     */
    @TableField("shareholderSocCreNum")
    private String shareholderSocCreNum;

    /**
     * 控股股东组织机构代码
     */
    @TableField("shareholderComNo")
    private String shareholderComNo;

    /**
     * 控股股东税务登记号
     */
    @TableField("shareholderTaxRegNum")
    private String shareholderTaxRegNum;

    /**
     * 控股股东工商注册号
     */
    @TableField("shareholderBusRegNum")
    private String shareholderBusRegNum;

    /**
     * 账户名
     */
    @TableField("accName")
    private String accName;

    /**
     * 证件类型
     */
    @TableField("insContIDType1")
    private String insContIDType1;

    /**
     * 证件号
     */
    @TableField("insContIDNo1")
    private String insContIDNo1;

    /**
     * 证件有效期类型
     */
    @TableField("insContIDPeriodOfValidityType1")
    private String insContIDPeriodOfValidityType1;

    /**
     * 证件有效期止期
     */
    @TableField("insContIDPeriodOfValidity1")
    private LocalDate insContIDPeriodOfValidity1;

    /**
     * 联系方式
     */
    @TableField("interFaceType1")
    private String interFaceType1;

    /**
     * 固定电话
     */
    @TableField("phone1")
    private String phone1;

    /**
     * 单位总机
     */
    @TableField("phone")
    private String phone;

    /**
     * 传真
     */
    @TableField("fax")
    private String fax;

    /**
     * 成立时间
     */
    @TableField("foundDate")
    private LocalDate foundDate;

    /**
     * 投保人国籍
     */
    @TableField("appntNativePlace")
    private String appntNativePlace;

    /**
     * 文件id
     */
    @TableField("imageid")
    private String imageid;

    /**
     * 手机
     */
    @TableField("mobilePhone1")
    private String mobilePhone1;

    /**
     * 同质风险加减人比例
     */
    @TableField("nzProportion")
    private String nzProportion;

    /**
     * 机构证件号码
     */
    @TableField("OrgCertificate_Number")
    private String orgcertificateNumber;

    /**
     * 机构证件号码1
     */
    @TableField("OrgCertificate_Number1")
    private String orgcertificateNumber1;

    /**
     * 机构证件类型 01-统一社会信用代码 02-组织机构代码证 03-税务登记证 04-工商注册号码 05-营业执照
     */
    @TableField("OrgCertificate")
    private String OrgCertificate;

    /**
     * 机构证件有效期 0-短期 1-长期
     */
    @TableField("OrgcertificateValidityperiod")
    private String OrgcertificateValidityperiod;

    /**
     * 机构证件有效起期
     */
    @TableField("OrgCertificate_start")
    private LocalDate orgcertificateStart;

    /**
     * 机构证件有效止期
     */
    @TableField("OrgCertificate_end")
    private LocalDate orgcertificateEnd;

    /**
     * 单位是否参加社会统筹 1-是 2-否
     */
    @TableField("IsJoinSocialPooling")
    private String IsJoinSocialPooling;

    /**
     * 单位规模类型 1-大型 2-中型 3-小型 4-微型
     */
    @TableField("CompanySeal")
    private String CompanySeal;


}
