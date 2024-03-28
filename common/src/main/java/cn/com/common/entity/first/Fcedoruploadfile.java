package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
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
@TableName("fcedoruploadfile")
public class Fcedoruploadfile implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 保单号/企业客户号
     */
    @TableField("GrpContNo")
    private String GrpContNo;

    /**
     * 批次号
     */
    @TableField("Batch")
    private String Batch;

    /**
     * 文件类型 0001-企业营业执照 0002-法人 0304-增人被保人告知书
     */
    @TableField("DocType")
    private String DocType;

    /**
     * 文件名
     */
    @TableField("fileName")
    private String fileName;

    /**
     * 文件上传防止重名转成数字，本字段为变更前文件名
     */
    @TableField("oldFileName")
    private String oldFileName;

    /**
     * 本地路径
     */
    @TableField("localPath")
    private String localPath;

    /**
     * FTP路径
     */
    @TableField("ftpPath")
    private String ftpPath;

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
     * 创建日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 创建时间
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
