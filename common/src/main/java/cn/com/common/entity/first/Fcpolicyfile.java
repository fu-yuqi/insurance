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
@TableName("fcpolicyfile")
public class Fcpolicyfile implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 文件类型 
0-电子投保书 
1-投保人资料变更(保全申请书)  
2-被保人资料变更(保全申请书) 
3-受益人资料变更(保全申请书) 
4-统一保全增人   (保全申请书) 
5-保全减人         (保全申请书) 
6-保全换人         (保全申请书) 
7-新单保全增人   (保全申请书)
8-投保人资料变更  (保全申请书影像件)
9-被保人资料变更  (保全申请书影像件) 
10-受益人资料变更(保全申请书影像件) 
11-统一保全增人   (保全申请书影像件) 
12-保全减人         (保全申请书影像件) 
13-保全换人         (保全申请书影像件) 
14-新单保全增人   (保全申请书影像件)  
15-电子投保书影像件
     */
    @TableId("fileSn")
    private String fileSn;

    /**
     * 福利编号
     */
    @TableField("ensureCode")
    private String ensureCode;

    /**
     * 文件类型 
000-电子投保书 
001-保全申请书
002-保全申请书影像件
003-电子投保书影像件
004-保全申请书清单Excel文件
005-保全申请书清单Png影像件
006-团体保险被保险人清单及补充信息表Excel
007-团体保险被保险人清单及补充信息表PNG
     */
    @TableField("fileType")
    private String fileType;

    /**
     * 保全受理号
     */
    @TableField("edorAppNo")
    private String edorAppNo;

    /**
     * 本地文件路径
     */
    @TableField("fileUrl")
    private String fileUrl;

    /**
     * 文件服务器路径
     */
    @TableField("fileFtpUrl")
    private String fileFtpUrl;

    @TableField("operator")
    private String operator;

    @TableField("eporatorCom")
    private String eporatorCom;

    @TableField("makeDate")
    private LocalDate makeDate;

    @TableField("makeTime")
    private String makeTime;

    @TableField("modifyDate")
    private LocalDate modifyDate;

    @TableField("modifyTime")
    private String modifyTime;


}
