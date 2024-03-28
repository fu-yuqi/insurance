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
@TableName("fcperinfofamilytemp")
public class Fcperinfofamilytemp implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 家属临时编号
     */
    @TableId("FamilyTempNo")
    private String FamilyTempNo;

    /**
     * 员工临时编号
     */
    @TableField("PerTempNo")
    private String PerTempNo;

    /**
     * 福利编号
     */
    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全批次号
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    /**
     * 姓名
     */
    @TableField("Name")
    private String Name;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 证件类型
     */
    @TableField("IDType")
    private String IDType;

    /**
     * 证件号
     */
    @TableField("IDNo")
    private String IDNo;

    /**
     * 证件有效期起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 证件有效期止期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 出生日期
     */
    @TableField("BirthDay")
    private LocalDate BirthDay;

    /**
     * 手机号
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 联系地址
     */
    @TableField("address")
    private String address;

    /**
     * 与投保人关系 0-雇佣 1-其他
     */
    @TableField("InsuredRelation")
    private String InsuredRelation;

    /**
     * 职业类型
     */
    @TableField("OccupationType")
    private String OccupationType;

    /**
     * 职业代码
     */
    @TableField("OccupationCode")
    private String OccupationCode;

    /**
     * 有无医保  无-0  有-1
     */
    @TableField("JoinMedProtect")
    private String JoinMedProtect;

    /**
     * 国籍
     */
    @TableField("Nativeplace")
    private String Nativeplace;

    /**
     * 与员工关系
     */
    @TableField("Relation")
    private String Relation;

    /**
     * 员工姓名
     */
    @TableField("PerName")
    private String PerName;

    /**
     * 员工证件类型
     */
    @TableField("PerIDType")
    private String PerIDType;

    /**
     * 员工证件号
     */
    @TableField("PerIDNo")
    private String PerIDNo;

    /**
     * 提交状态(未提交-01 已提交-02)
     */
    @TableField("SubStaus")
    private String SubStaus;

    /**
     * 税收居民身份
     */
    @TableField("Resident_iden")
    private String residentIden;

    /**
     * 保全开始日期
     */
    @TableField("EdorStartDate")
    private LocalDate EdorStartDate;

    /**
     * 保全收退费新增字段 存储企业缴纳费用(核心返回)
     */
    @TableField("GrpPrem")
    private Double GrpPrem;

    /**
     * 保全收退费新增字段 存储企业缴纳费用(核心返回)
     */
    @TableField("SelfPrem")
    private Double SelfPrem;

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

    @TableField("ModifyTime")
    private String ModifyTime;

    /**
     * 服务机构编码
     */
    @TableField("sorCode")
    private String sorCode;


}
