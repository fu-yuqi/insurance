package cn.com.common.constant;

import java.util.EnumSet;

/**
 * @author Li Jiang
 * @date 2019/9/16.
 * 验证验证码是否有效
 */
public enum UniqueValidateCodeEnum {
    //无效
    INVALID("0"),
    //有效
    VALID("1");

    public String code;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    UniqueValidateCodeEnum(String code) {
        this.code = code;
    }

    public static UniqueValidateCodeEnum getBycode(String code) {
        return EnumSet.allOf(UniqueValidateCodeEnum.class).stream().filter(e -> e.getCode().equals(code)).findFirst().orElse(null);
    }
}
