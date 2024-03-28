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
 * 企业投保联系人表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcgrpapplicantcontact")
public class Fcgrpapplicantcontact implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 流水号
     */
    @TableId("SerialNo")
    private String SerialNo;

    /**
     * 团体投保人编号
     */
    @TableField("GrpAppNo")
    private String GrpAppNo;

    /**
     * 企业客户号
     */
    @TableField("GrpNo")
    private String GrpNo;

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
     * 证件号码
     */
    @TableField("IDNo")
    private String IDNo;

    /**
     * 手机号码
     */
    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 邮箱
     */
    @TableField("EMail")
    private String EMail;

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
