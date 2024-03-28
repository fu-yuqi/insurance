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
@TableName("fcgrpinfo")
public class Fcgrpinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 企业客户号
     */
    @TableId("GrpNo")
    private String GrpNo;

    /**
     * 核心客户号
     */
    @TableField("CGrpNo")
    private String CGrpNo;

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
     * 业务员工号
     */
    @TableField("Clientno")
    private String Clientno;

    /**
     * 所属行业
     */
    @TableField("Trade")
    private String Trade;

    /**
     * 企业证件图片1(正面)
     */
    @TableField("grpIDImage1")
    private String grpIDImage1;

    /**
     * 企业证件图片2(反面)
     */
    @TableField("grpIDImage2")
    private String grpIDImage2;

    /**
     * 企业法人证件图1
     */
    @TableField("LegIDImage1")
    private String LegIDImage1;

    /**
     * 企业法人证件图2
     */
    @TableField("LegIDImage2")
    private String LegIDImage2;

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
     * 入机日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 入机时间
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
     * 营业期限
     */
    @TableField("BusinessTerm")
    private String BusinessTerm;

    /**
     * 营期开始
     */
    @TableField("BusinessTermStart")
    private LocalDate BusinessTermStart;

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
     * 是否三证合一 0-是 1-否
     */
    @TableField("Three_Certificates")
    private String threeCertificates;

    /**
     * 是否是纳税人
     */
    @TableField("Is_Taxpayer")
    private String isTaxpayer;

    /**
     * 税务登记号
     */
    @TableField("Duty_paragraph")
    private String dutyParagraph;

    /**
     * 工商注册号
     */
    @TableField("Business_number")
    private String businessNumber;

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
     * 公司地址 省
     */
    @TableField("province")
    private String province;

    /**
     * 公司地址 市
     */
    @TableField("city")
    private String city;

    /**
     * 公司地址 区
     */
    @TableField("area")
    private String area;

    /**
     * 注册地址 省
     */
    @TableField("Register_province")
    private String registerProvince;

    /**
     * 注册地址 市
     */
    @TableField("Register_city")
    private String registerCity;

    /**
     * 注册地址 区
     */
    @TableField("Register_area")
    private String registerArea;

    /**
     * 业务员姓名
     */
    @TableField("Salesman_name")
    private String salesmanName;

    /**
     * 业务员电话
     */
    @TableField("Salesman_phone")
    private String salesmanPhone;

    /**
     * 机构类别 1-消极非金融机构，2-其他金融机构，3-豁免机构
     */
    @TableField("Institution_type")
    private String institutionType;

    /**
     * 机构名称
     */
    @TableField("Institution_name")
    private String institutionName;

    /**
     * 机构地址英文
     */
    @TableField("Institution_address_inenglish")
    private String institutionAddressInenglish;

    /**
     * 机构地址中文
     */
    @TableField("Institution_address_chinese")
    private String institutionAddressChinese;

    /**
     * 机构税收居民身份
     */
    @TableField("Institution_people_iden")
    private String institutionPeopleIden;

    /**
     * 临时表流水号，关联控制人信息和税务
     */
    @TableField("temporary_registSN")
    private String temporaryRegistsn;

    /**
     * 单位是否参加社会统筹 1-是 2-否
     */
    @TableField("IsJoinSocialPooling")
    private String IsJoinSocialPooling;

    /**
     * 主营业务
     */
    @TableField("MainBusiness")
    private String MainBusiness;

    /**
     * 机构分布区域
     */
    @TableField("Comarea")
    private String Comarea;

    /**
     * 控制股东
     */
    @TableField("shareholdersName")
    private String shareholdersName;

    /**
     * 开户银行名称
     */
    @TableField("OpenBankName")
    private String OpenBankName;

    /**
     * 单位规模类型 1-大型 2-中型 3-小型 4-微型
     */
    @TableField("CompanySeal")
    private String CompanySeal;


}
