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
 * 被保人表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcorderinsured")
public class Fcorderinsured implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 订单项编号
     */
    @TableId("OrderItemNo")
    private String OrderItemNo;

    /**
     * 订单号
     */
    @TableField("OrderNo")
    private String OrderNo;

    /**
     * 团体订单号
     */
    @TableField("GrpOrderNo")
    private String GrpOrderNo;

    /**
     * ""/保全批次号  ""-表示契约途径投保  保全批次号-表示新单保全增人途径投保
     */
    @TableField("AddBatchSN")
    private String AddBatchSN;

    /**
     * 被保险人ID
     */
    @TableField("PersonID")
    private String PersonID;

    /**
     * 姓名
     */
    @TableField("Name")
    private String Name;

    /**
     * 性别:
0男  
1女
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 出生日期
     */
    @TableField("Birthday")
    private LocalDate Birthday;

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
     * 手机号
     */
    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 固定电话
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 部门
     */
    @TableField("Department")
    private String Department;

    /**
     * 职业类别
     */
    @TableField("OccupationType")
    private String OccupationType;

    /**
     * 职业代码
     */
    @TableField("OccupationCode")
    private String OccupationCode;

    /**
     * 是否参加医保:
0-否
1-是
     */
    @TableField("JoinMedProtect")
    private String JoinMedProtect;

    /**
     * 医保类型
     */
    @TableField("MedProtectType")
    private String MedProtectType;

    /**
     * 邮箱
     */
    @TableField("EMail")
    private String EMail;

    /**
     * 邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 通讯地址
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


}
