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
@TableName("fcfiledocmain")
public class Fcfiledocmain implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("DocID")
    private String DocID;

    /**
     * 01--影像、图片文件 0101-个人证件图片 0102-企业证件图片 0103-未成年人投保声明影像 0104-关系证明 0105-其他文件  0106-企业授权书 02--计划制定 0201-计划导入  0202-员工清单导入 03--保全相关 0301-增加导入 0302-减人导入 0303-团体保险被保险人清单及补充信息表
     */
    @TableField("DocType")
    private String DocType;

    @TableField("FileName")
    private String FileName;

    @TableField("FileSaveName")
    private String FileSaveName;

    @TableField("FileSuffix")
    private String FileSuffix;

    @TableField("FileURL")
    private String FileURL;

    @TableField("FilePath")
    private String FilePath;

    @TableField("ValidFlag")
    private String ValidFlag;

    @TableField("Remark")
    private String Remark;

    @TableField("Operator")
    private String Operator;

    @TableField("OperatorCom")
    private String OperatorCom;

    @TableField("MakeDate")
    private LocalDate MakeDate;

    @TableField("MakeTime")
    private String MakeTime;

    @TableField("ModifyDate")
    private LocalDate ModifyDate;

    @TableField("ModifyTime")
    private String ModifyTime;

    /**
     * 外键
     */
    @TableField("Type_id")
    private String typeId;


}
