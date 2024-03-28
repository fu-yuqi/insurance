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
@TableName("fdagentinfo")
public class Fdagentinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 代理人编码
     */
    @TableId("AgentCode")
    private String AgentCode;

    /**
     * 代理人姓名
     */
    @TableField("AgentName")
    private String AgentName;

    /**
     * 代理人所属机构
     */
    @TableField("ManageCom")
    private String ManageCom;

    /**
     * 代理人状态01-在职,02-二次增员,03-准离职,04-离职
     */
    @TableField("AgentState")
    private String AgentState;

    /**
     * 代理人营业处
     */
    @TableField("AgentBranch")
    private String AgentBranch;

    /**
     * 代理人营业组
     */
    @TableField("AgentGroup")
    private String AgentGroup;

    /**
     * 代理人职级
     */
    @TableField("AgentGrade")
    private String AgentGrade;

    /**
     * 入司日期
     */
    @TableField("EmployDate")
    private LocalDate EmployDate;

    /**
     * 准离职日期
     */
    @TableField("DepartDate")
    private LocalDate DepartDate;

    /**
     * 离职日期
     */
    @TableField("DepartConfDate")
    private LocalDate DepartConfDate;

    /**
     * 代理人手机
     */
    @TableField("Phone")
    private String Phone;

    /**
     * 性别
     */
    @TableField("Sex")
    private String Sex;

    /**
     * 邮箱
     */
    @TableField("Email")
    private String Email;

    /**
     * 展业类型
     */
    @TableField("BranchType")
    private String BranchType;

    /**
     * 机构名
     */
    @TableField("ManageComName")
    private String ManageComName;

    /**
     * 机构地址
     */
    @TableField("Address")
    private String Address;

    /**
     * 机构邮编
     */
    @TableField("ZipCode")
    private String ZipCode;

    /**
     * 上级机构编码
     */
    @TableField("ParentManageCom")
    private String ParentManageCom;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;


}
