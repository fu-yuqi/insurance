package cn.com.common.constant;

import java.util.stream.Stream;

public enum RestResponseEnum {

    SUCCESS("success", "200"),

    BUSINESS_ERROR("business_error", "400"),


    SYSTEM_ERROR("system_error", "500");

    private String desc;
    private String code;

    RestResponseEnum(String desc, String code){
        this.desc = desc;
        this.code = code;
    }

    public String getDesc() {
        return desc;
    }

    public String getCode() {
        return code;
    }

}
