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
 * 员工家属信息关联表
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("fcstafffamilyrela")
public class Fcstafffamilyrela implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 客户编码
     */
    @TableId("PerNo")
    private String PerNo;

    /**
     * 个人编码
     */
    @TableField("PersonID")
    private String PersonID;

    /**
     * 0-本人
 1-配偶
 2-子女
 3-父母
5其它
     */
    @TableField("Relation")
    private String Relation;

    /**
     * 如果是本人，则此字段存本人的客户号，其他则存对应自己的客户号，将家庭其他成员做成客户，同步程序时需要插入数据
     */
    @TableField("RelationProve")
    private String RelationProve;

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
     * 员工和家属之间的关系证明（未成年的家属）
     */
    @TableField("Relation_image")
    private String relationImage;


}
