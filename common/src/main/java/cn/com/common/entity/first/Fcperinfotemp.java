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
@TableName("fcperinfotemp")
public class Fcperinfotemp implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("PerTempNo")
    private String PerTempNo;

    @TableField("EnsureCode")
    private String EnsureCode;

    /**
     * 保全批次号
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    @TableField("CPerNo")
    private String CPerNo;

    @TableField("GrpNo")
    private String GrpNo;

    @TableField("StaffNo")
    private String StaffNo;

    /**
     * 职级
     */
    @TableField("LevelCode")
    private String LevelCode;

    @TableField("department")
    private String department;

    @TableField("Name")
    private String Name;

    @TableField("Sex")
    private String Sex;

    @TableField("IDType")
    private String IDType;

    @TableField("IDNo")
    private String IDNo;

    /**
     * 证件有效起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 证件有效止期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    @TableField("BirthDay")
    private LocalDate BirthDay;

    @TableField("Phone")
    private String Phone;

    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 与投保人关系 0-雇佣 1-其他
     */
    @TableField("InsuredRelation")
    private String InsuredRelation;

    @TableField("OccupationType")
    private String OccupationType;

    @TableField("OccupationCode")
    private String OccupationCode;

    @TableField("JoinMedProtect")
    private String JoinMedProtect;

    @TableField("MedProtectType")
    private String MedProtectType;

    @TableField("Email")
    private String Email;

    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 地址
     */
    @TableField("Address")
    private String Address;

    /**
     * 国籍
     */
    @TableField("Nativeplace")
    private String Nativeplace;

    /**
     * 服务年限
     */
    @TableField("ServiceTerm")
    private String ServiceTerm;

    /**
     * 是否退休  0--是 1--否
     */
    @TableField("Retirement")
    private String Retirement;

    /**
     * 导入状态（01-导入成功；02-导入失败）
     */
    @TableField("ImpotStatus")
    private String ImpotStatus;

    /**
     * 提交状态（01-未提交；02-已提交）
     */
    @TableField("SubStaus")
    private String SubStaus;

    @TableField("ErrorMsg")
    private String ErrorMsg;

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

    @TableField("DefaultPlan")
    private String DefaultPlan;

    @TableField("openbank")
    private String openbank;

    @TableField("OpenAccount")
    private String OpenAccount;

    /**
     * 员工福利额度
     */
    @TableField("StaffGrpPrem")
    private Double StaffGrpPrem;

    /**
     * 父母福利额度
     */
    @TableField("FamilyGrpPrem")
    private Double FamilyGrpPrem;

    /**
     * 学生福利额度
     */
    @TableField("StudentGrpPrem")
    private Double StudentGrpPrem;

    /**
     * 配偶福利额度
     */
    @TableField("SpouseGrpPrem")
    private Double SpouseGrpPrem;

    /**
     * 子女福利额度
     */
    @TableField("ChildrenGrpPrem")
    private Double ChildrenGrpPrem;

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

    /**
     * 税收居民身份
     */
    @TableField("Resident_iden")
    private String residentIden;

    /**
     * 家属保费类型 0-整体额度 1-个人额度
     */
    @TableField("FamPremType")
    private String FamPremType;

    /**
     * 保全开始日期
     */
    @TableField("EdorStartDate")
    private LocalDate EdorStartDate;

    /**
     * 服务机构编码
     */
    @TableField("sorCode")
    private String sorCode;


}
