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
@TableName("fcsendmessage")
public class Fcsendmessage implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 短信发送流水号
     */
    @TableId("messageno")
    private String messageno;

    /**
     * 手机号
     */
    @TableField("phone")
    private String phone;

    /**
     * 客户ip
     */
    @TableField("ip")
    private String ip;

    /**
     * 发送内容
     */
    @TableField("content")
    private String content;

    /**
     * 发送日期
     */
    @TableField("senddate")
    private String senddate;

    /**
     * 发送结果，0-成功、1-失败
     */
    @TableField("result")
    private String result;

    /**
     * 入机日期
     */
    @TableField("MakeDate")
    private LocalDate MakeDate;

    /**
     * 入机时间
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
