package cn.com.common.utils;

import cn.com.common.constant.RestResponseEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;

public class ResponseResultUtil {

    private static Logger log = LoggerFactory.getLogger(ResponseResultUtil.class);

    /**
     * 请求成功拼装响应结果有返回数据
     *
     * @param data
     * @return
     */
    public static <T> ResponseResult<T> success(T data) {
        ResponseResult<T> responseResult = getResponseResult(RestResponseEnum.SUCCESS.getCode());
        responseResult.setMessage("成功");
        responseResult.setData(data);
        return responseResult;
    }

    /**
     * 请求失败拼装响应结果无返回数据
     *
     * @return
     */
    public static <T> ResponseResult<T> error(T data) {
        ResponseResult<T> responseResult = getResponseResult(RestResponseEnum.BUSINESS_ERROR.getCode());
        responseResult.setMessage("失败");
        return responseResult;
    }

    /**
     * 请求失败拼装响应结果无返回数据
     *
     * @return
     */
    public static <T> ResponseResult<T> fail(String data) {
        ResponseResult<T> responseResult = getResponseResult(RestResponseEnum.BUSINESS_ERROR.getCode());
        responseResult.setMessage(data);
        return responseResult;
    }


    /**
     * 请求成功拼装响应结果有返回数据
     *
     * @param responseCode 响应码
     * @param data         响应报文
     * @return ResponseResult
     */
    public static <T> ResponseResult<T> success(String responseCode, String responseMessage, T data) {
        ResponseResult<T> responseResult = getResponseResult(responseCode);
        responseResult.setMessage(responseMessage);
        responseResult.setData(data);
        return responseResult;
    }

    /**
     * 请求成功拼装响应结果无返回数据
     *
     * @return
     */
    public static <T> ResponseResult<T> success() {
        ResponseResult<T> responseResult = getResponseResult(RestResponseEnum.SUCCESS.getCode());
        responseResult.setMessage("成功");
        return responseResult;
    }


    /**
     * 请求失败拼装返回结果
     *
     * @param exception
     * @param responseCode
     * @return
     */
    public static <T> ResponseResult<T> responseErrors(Exception exception, String responseCode) {
        ResponseResult<T> responseResult = getResponseResult(responseCode);
        if (RestResponseEnum.SYSTEM_ERROR.getCode().equals(responseCode)) {
            responseResult.setMessage(exception.getMessage());
        } else {
            responseResult.setMessage(exception.getMessage());
        }
        return responseResult;
    }

    /**
     * 响应报文拼装
     *
     * @param response
     * @param result
     */
    public static <T> void responseResultBuild(HttpServletResponse response, ResponseResult<T> result) {
//        response.setCharacterEncoding("UTF-8");
//        response.setHeader("Content-type", "application/json;charset=UTF-8");
//        response.setStatus(200);
//        try {
//            response.getWriter().write(JsonMapper.INSTANCE.toJson(result));
//        } catch (IOException ex) {
//            log.error(ex.getMessage());
//        }
    }


    public static <T> ResponseResult<T> getResponseResult(String responseCode) {
        ResponseResult<T> responseResult = new ResponseResult<T>();
        responseResult.setState(Integer.parseInt(responseCode));
        return responseResult;
    }
}
