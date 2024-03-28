package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 受益所有人相关信息表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcensurebeneficiary")
public class Fcensurebeneficiary implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 受益人表流水号
     */
    @TableId("beSerialNo")
    private String beSerialNo;

    /**
     * 福利编号
     */
    @TableField("ensureCode")
    private String ensureCode;

    /**
     * 保全标志（减人ZT  换人NZ）
     */
    @TableField("decInsuredSn")
    private String decInsuredSn;

    /**
     * 受益人姓名
     */
    @TableField("name")
    private String name;

    /**
     * 受益人性别
     */
    @TableField("sex")
    private String sex;

    /**
     * 受益人证件类型
     */
    @TableField("idType")
    private String idType;

    /**
     * 受益人证件号码
     */
    @TableField("idNo")
    private String idNo;

    /**
     * 证件有效起期
     */
    @TableField("idNoStartDate")
    private String idNoStartDate;

    /**
     * 证件有效止期
     */
    @TableField("idNoEndDate")
    private String idNoEndDate;

    /**
     * 受益人所在国家
     */
    @TableField("nativePlace")
    private String nativePlace;

    /**
     * 受益人手机号
     */
    @TableField("mobilePhone")
    private String mobilePhone;

    /**
     * 受益人居住地址
     */
    @TableField("address")
    private String address;

    /**
     * 判断受益所有人方式（11：股权或表决权；12：人事、财务控制；13：高级管理人；14：其他）
     */
    @TableField("beneficiary")
    private String beneficiary;

    /**
     * 受益比例
     */
    @TableField("shareHolding")
    private String shareHolding;

    /**
     * 受益人出生日期
     */
    @TableField("birthday")
    private String birthday;

    /**
     * 受益人居住地邮编
     */
    @TableField("zipCode")
    private String zipCode;

    /**
     * 受益人银行
     */
    @TableField("bankCode")
    private String bankCode;

    /**
     * 受益人银行卡号
     */
    @TableField("bankAccNo")
    private String bankAccNo;

    /**
     * 受益人银行卡账户名
     */
    @TableField("accName")
    private String accName;

    /**
     * 受益人证件有效期止期
     */
    @TableField("iDTime")
    private String iDTime;

    /**
     * 受益人户籍所在地
     */
    @TableField("rgtAddress")
    private String rgtAddress;

    /**
     * 受益人工作单位
     */
    @TableField("grpName")
    private String grpName;

    /**
     * 受益人工作单位地址
     */
    @TableField("grpAddress")
    private String grpAddress;

    /**
     * 职业代码
     */
    @TableField("OccupationCode")
    private String OccupationCode;


}
