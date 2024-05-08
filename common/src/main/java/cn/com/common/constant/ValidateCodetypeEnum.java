package cn.com.common.constant;

import java.util.EnumSet;

public enum ValidateCodetypeEnum {
    //用户注册
    REGISTRATION("01"),
    //重置密码认证
    PASSWORDAT("02"),
    //手机端验证码登录
    MOBILELOGIN("03");

    public String code;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    ValidateCodetypeEnum(String code) {
        this.code = code;
    }

    public static ValidateCodetypeEnum getBycode(String code) {
        return EnumSet.allOf(ValidateCodetypeEnum.class).stream().filter(e -> e.getCode().equals(code)).findFirst().orElse(null);
    }

}
