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
@TableName("fcorderface")
public class Fcorderface implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 人脸识别明细号
     */
    @TableId("faceno")
    private String faceno;

    /**
     * 订单号
     */
    @TableField("orderno")
    private String orderno;

    /**
     * 子订单号
     */
    @TableField("orderitemno")
    private String orderitemno;

    /**
     * 对应fpinsureplan的流水号字段
     */
    @TableField("insureplanno")
    private String insureplanno;

    /**
     * 投保人 perNo  被保人 personId
     */
    @TableField("persn")
    private String persn;

    /**
     * 识别结果： 0-待人脸识别  1- 识别通过   2-识别失败 
     */
    @TableField("ispass")
    private String ispass;

    /**
     * 人脸识别URL
     */
    @TableField("faceurl")
    private String faceurl;

    /**
     * 根据redtoken查询识别结果
     */
    @TableField("redtoken")
    private String redtoken;

    /**
     * 截图保存地址
     */
    @TableField("ftppath")
    private String ftppath;

    /**
     * 身份证号
     */
    @TableField("idno")
    private String idno;

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
