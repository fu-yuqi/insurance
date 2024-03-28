package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 管理机构信息表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fdcominfo")
public class Fdcominfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 机构编码
     */
    @TableId("COMCODE")
    private String comcode;

    /**
     * 对外公布的机构代码
     */
    @TableField("OUTCOMCODE")
    private String outcomcode;

    /**
     *  机构名称
     */
    @TableField("NAME")
    private String name;

    /**
     * 短名称 
     */
    @TableField("SHORTNAME")
    private String shortname;

    /**
     * 机构地址
     */
    @TableField("ADDRESS")
    private String address;

    /**
     * 机构邮编
     */
    @TableField("ZIPCODE")
    private String zipcode;

    /**
     * 机构电话
     */
    @TableField("PHONE")
    private String phone;

    /**
     * 机构传真
     */
    @TableField("FAX")
    private String fax;

    /**
     * Email
     */
    @TableField("EMAIL")
    private String email;

    /**
     * 网址
     */
    @TableField("WEBADDRESS")
    private String webaddress;

    /**
     * 主管人姓名
     */
    @TableField("SATRAPNAME")
    private String satrapname;

    /**
     * 对应保监办代码
     */
    @TableField("INSUMONITORCODE")
    private String insumonitorcode;

    /**
     * 保险公司id
     */
    @TableField("INSUREID")
    private String insureid;

    /**
     * 标识码
     */
    @TableField("SIGNID")
    private String signid;

    /**
     * 行政区划代码
     */
    @TableField("REGIONALISMCODE")
    private String regionalismcode;

    /**
     * 公司性质
     */
    @TableField("COMNATURE")
    private String comnature;

    /**
     * 校验码
     */
    @TableField("VALIDCODE")
    private String validcode;

    /**
     *  标志 
     */
    @TableField("SIGN")
    private String sign;

    /**
     * 收费员渠道机构地区类型
     */
    @TableField("COMCITYSIZE")
    private String comcitysize;

    /**
     * 客户服务机构名称
     */
    @TableField("SERVICENAME")
    private String servicename;

    /**
     * 客户服务机构编码
     */
    @TableField("SERVICENO")
    private String serviceno;

    /**
     * 客户服务电话
     */
    @TableField("SERVICEPHONE")
    private String servicephone;

    /**
     * 客户服务投递地址
     */
    @TableField("SERVICEPOSTADDRESS")
    private String servicepostaddress;

    /**
     * 机构级别
     */
    @TableField("COMGRADE")
    private String comgrade;

    /**
     * 机构地区类型
     */
    @TableField("COMAREATYPE")
    private String comareatype;

    /**
     * 上级管理机构
     */
    @TableField("UPCOMCODE")
    private String upcomcode;

    /**
     * 直属属性
     */
    @TableField("ISDIRUNDER")
    private String isdirunder;

    /**
     * 直销地区类别
     */
    @TableField("COMAREATYPE1")
    private String comareatype1;


}
