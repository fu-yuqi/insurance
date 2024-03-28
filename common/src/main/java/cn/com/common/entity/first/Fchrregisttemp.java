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
@TableName("fchrregisttemp")
public class Fchrregisttemp implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * hr姓名
     */
    @TableField("name")
    private String name;

    /**
     * 流水号
     */
    @TableId("RegistSN")
    private String RegistSN;

    /**
     * hr手机号
     */
    @TableField("mobilePhone")
    private String mobilePhone;

    /**
     * hr国籍
     */
    @TableField("nativeplace")
    private String nativeplace;

    /**
     * hr证件类型
     */
    @TableField("idType")
    private String idType;

    /**
     * hr证件号
     */
    @TableField("idNo")
    private String idNo;

    /**
     * hr证件有效期止期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 证件有效期起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * hr性别
     */
    @TableField("sex")
    private String sex;

    /**
     * hr生日
     */
    @TableField("birthday")
    private LocalDate birthday;

    /**
     * 企业名称
     */
    @TableField("grpName")
    private String grpName;

    /**
     * 邮编
     */
    @TableField("zipCode")
    private String zipCode;

    /**
     * 企业详细地址
     */
    @TableField("grpAddress")
    private String grpAddress;

    /**
     * 社会信用代码
     */
    @TableField("unifiedsociCode")
    private String unifiedsociCode;

    /**
     * 投保人性质
     */
    @TableField("grpType")
    private String grpType;

    /**
     * 开户名称
     */
    @TableField("accName")
    private String accName;

    /**
     * 开户银行
     */
    @TableField("grpBankcode")
    private String grpBankcode;

    /**
     * 开户账号
     */
    @TableField("grpBankaccno")
    private String grpBankaccno;

    /**
     * 注册电话
     */
    @TableField("telphone")
    private String telphone;

    /**
     * 注册详细地址
     */
    @TableField("regAddress")
    private String regAddress;

    /**
     * 业务员工号
     */
    @TableField("clientNo")
    private String clientNo;

    /**
     * hr证件图片1
     */
    @TableField("idImage1")
    private String idImage1;

    /**
     * hr证件图片2
     */
    @TableField("idImage2")
    private String idImage2;

    /**
     * 证件影像件1
     */
    @TableField("grpIDImage1")
    private String grpIDImage1;

    /**
     * 证件影像件2
     */
    @TableField("grpIDImage2")
    private String grpIDImage2;

    /**
     * 法人证件图1
     */
    @TableField("legIDImage1")
    private String legIDImage1;

    /**
     * 法人证件图2
     */
    @TableField("legIDImage2")
    private String legIDImage2;

    /**
     * 企业法人代表
     */
    @TableField("corporationMan")
    private String corporationMan;

    @TableField("checkStatus")
    private String checkStatus;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("Operator")
    private String Operator;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("auditOpinion")
    private String auditOpinion;

    @TableField("ModifyTime")
    private String ModifyTime;

    @TableField("grpNo")
    private String grpNo;

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
     * 机构证件有效期 0-短期 1-长期
     */
    @TableField("OrgcertificateValidityperiod")
    private String OrgcertificateValidityperiod;

    /**
     * 所属行业
     */
    @TableField("Trade")
    private String Trade;

    /**
     * 员工总数
     */
    @TableField("Peoples")
    private Long Peoples;

    /**
     * 股东业务0否1是
     */
    @TableField("shareBusiness")
    private String shareBusiness;

    /**
     * 控制股东
     */
    @TableField("shareholdersName")
    private String shareholdersName;

    /**
     * hr授权书
     */
    @TableField("warrant")
    private String warrant;

    /**
     * 机构证件类型 01-统一社会信用代码 02-组织机构代码证 03-税务登记证 04-工商注册号码 05-营业执照
     */
    @TableField("OrgCertificate")
    private String OrgCertificate;

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
     * 是否三证合一  0--是  1--否
     */
    @TableField("Three_Certificates")
    private String threeCertificates;

    /**
     * 是否是纳税人
     */
    @TableField("Is_Taxpayer")
    private String isTaxpayer;

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
     * 授权书图片
     */
    @TableField("RegImage")
    private String RegImage;

    /**
     * 开户银行名称
     */
    @TableField("OpenBankName")
    private String OpenBankName;

    /**
     * 管理--0通过1修改2未通过。HR--3提交修改4确认修改5退回 6注册通过
     */
    @TableField("auditState")
    private String auditState;

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
