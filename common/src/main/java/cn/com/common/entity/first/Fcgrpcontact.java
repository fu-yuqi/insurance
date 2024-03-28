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
 * 企业联系人表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcgrpcontact")
public class Fcgrpcontact implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 联系人编号
     */
    @TableId("ContactNo")
    private String ContactNo;

    /**
     * 联系人类型 01-第一联系人 02-第二联系人
     */
    @TableField("ContactType")
    private String ContactType;

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
     * 国籍
     */
    @TableField("nativeplace")
    private String nativeplace;

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
     * 证件有效期起期
     */
    @TableField("idTypestartDate")
    private LocalDate idTypestartDate;

    /**
     * 证件有效期
     */
    @TableField("idTypeEndDate")
    private LocalDate idTypeEndDate;

    /**
     * 手机号码
     */
    @TableField("MobilePhone")
    private String MobilePhone;

    /**
     * 出生日期
     */
    @TableField("BirthDay")
    private String BirthDay;

    /**
     * 邮箱
     */
    @TableField("EMail")
    private String EMail;

    /**
     * 证件图片1
     */
    @TableField("IDImage1")
    private String IDImage1;

    /**
     * 证件图片2
     */
    @TableField("IDImage2")
    private String IDImage2;

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
