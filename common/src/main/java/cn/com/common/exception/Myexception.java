package cn.com.common.exception;

import lombok.Data;

/**
 * tips：
 * 1、自定义异常不要使用嵌套，会把原异常信息打印出来
 */

@Data
public class Myexception extends RuntimeException {
    private String msg;
    private String code = "500";

    private Object data;


    public Myexception(String msg) {
        super(msg);
        this.msg = msg;
    }

    public Myexception(String code, String msg) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public Myexception(String msg, Throwable e) {
        super(msg, e);
        this.msg = msg;
    }

    public Myexception(String msg, Object data) {
        super(msg);
        this.msg = msg;
        this.data = data;
    }

    public Myexception(String code, String msg, Object data) {
        super(msg);
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

}
