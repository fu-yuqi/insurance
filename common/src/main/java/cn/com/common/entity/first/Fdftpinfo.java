package cn.com.common.entity.first;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

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
@TableName("fdftpinfo")
public class Fdftpinfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("FTPInfoSN")
    private String FTPInfoSN;

    @TableField("ModuleType")
    private String ModuleType;

    @TableField("OperateType")
    private String OperateType;

    @TableField("FTPSiteType")
    private String FTPSiteType;

    @TableField("FileType")
    private String FileType;

    @TableField("FTPRootPath")
    private String FTPRootPath;

    @TableField("IPAddress")
    private String IPAddress;

    @TableField("Port")
    private Integer Port;

    @TableField("UserName")
    private String UserName;

    @TableField("PassWord")
    private String PassWord;

    @TableField("LocalFilePath")
    private String LocalFilePath;


}
