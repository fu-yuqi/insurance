package cn.com.common.utils;

import lombok.Data;

import java.io.Serializable;

@Data
public class ResponseResult<E> implements Serializable {

    /**
     * 响应时的状态码
     */
    private Integer state;
    /**
     * 操作失败时的提示信息
     */
    private String message;
    /**
     * 操作成功时响应到客户端的数据
     */
    private E data;

    public ResponseResult() {
        super();
    }

    public ResponseResult(Integer state)  {
        this.state = state;
    }

    public static ResponseResult success() {
        return new ResponseResult(State.SUCCESS_CODE);
    }

    public static <E> ResponseResult success(E data) {
        ResponseResult result = new ResponseResult();
        result.setState(State.SUCCESS_CODE);
        result.setData(data);
        return result;
    }

    public static ResponseResult failure(Integer state, Throwable e) {
        ResponseResult result = new ResponseResult();
        result.setState(state);
        result.setMessage(e.getMessage());
        return result;
    }

    public interface State {

        /**
         * 正确
         */
        Integer SUCCESS_CODE = 200;
        /**
         * 错误：用户名已经被注册
         */
        Integer ERR_CODE = 400;
    }

}
