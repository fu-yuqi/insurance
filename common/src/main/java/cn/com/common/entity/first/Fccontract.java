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
@TableName("fccontract")
public class Fccontract implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 合同流水号
     */
    @TableId("ContractSN")
    private String ContractSN;

    /**
     * 企业编码
     */
    @TableField("GrpNo")
    private String GrpNo;

    /**
     * 个人编码
     */
    @TableField("PersonID")
    private String PersonID;

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
     * 邮政编码
     */
    @TableField("Zipcode")
    private String Zipcode;

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
     * 备注
     */
    @TableField("Remark")
    private String Remark;

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
     * 客户类型
     */
    @TableField("CustomType")
    private String CustomType;

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


}
