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
@TableName("fcgrpquestion")
public class Fcgrpquestion implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("SerialNum")
    private String SerialNum;

    @TableField("BigType")
    private String BigType;

    @TableField("SmallType")
    private String SmallType;

    @TableField("Question")
    private String Question;

    @TableField("Answer")
    private String Answer;


}
