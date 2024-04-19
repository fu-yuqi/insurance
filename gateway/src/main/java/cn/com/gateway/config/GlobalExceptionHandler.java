package cn.com.gateway.config;

import cn.com.common.constant.RestResponseEnum;
import cn.com.common.exception.BusinessException;
import cn.com.common.exception.Myexception;
import cn.com.common.utils.ResponseResult;
import cn.com.common.utils.ResponseResultUtil;
import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.stream.Collectors;

@ControllerAdvice
public class GlobalExceptionHandler {

    // 日志对象
    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public ResponseResult exceptionHandler(HttpServletRequest req, Exception e) {
        ResponseResult responseResult = null;
        if (e instanceof BusinessException) {
            BusinessException myexception = (BusinessException) e;
            log.warn("\r\n异常信息:" + myexception.getMessage() + "\r\n异常数据:" +  e.getStackTrace());
            responseResult = ResponseResultUtil.responseErrors(e, RestResponseEnum.BUSINESS_ERROR.getCode());
        }else if (e instanceof BusinessException) {
            log.warn("\r\n异常信息:" + e.getMessage() + "\r\n异常堆栈:" + e.getStackTrace());
            responseResult = ResponseResultUtil.responseErrors(e, RestResponseEnum.BUSINESS_ERROR.getCode());
        } else if (e instanceof MethodArgumentNotValidException) {
            String errorMsg = ((MethodArgumentNotValidException) e).getBindingResult().getAllErrors().stream()
                    .map(DefaultMessageSourceResolvable::getDefaultMessage).collect(Collectors.joining("，"));
            log.warn("\r\n异常信息::" + errorMsg + "\r\n异常堆栈:" + e.getStackTrace());
            BusinessException businessException = new BusinessException(errorMsg);
            responseResult = ResponseResultUtil.responseErrors(businessException, RestResponseEnum.BUSINESS_ERROR.getCode());
        } else if (e instanceof MissingServletRequestParameterException) {
            log.warn("\r\n异常信息:" + e.getMessage() + "\r\n异常堆栈:" + e.getStackTrace());
            responseResult = ResponseResultUtil.responseErrors(e, RestResponseEnum.BUSINESS_ERROR.getCode());
        } else if (e instanceof HttpMessageNotReadableException) {
            BusinessException businessException = new BusinessException("请求报文解析失败");
            log.warn("\r\n异常信息:" + businessException.getMessage() + "\r\n异常堆栈:" + e.getStackTrace());
            responseResult = ResponseResultUtil.responseErrors(businessException, RestResponseEnum.BUSINESS_ERROR.getCode());
        } else {
            log.error("\r\n信息:" + "系统发生内部异常" + "\r\n异常堆栈:" +  e.getStackTrace());
            responseResult = ResponseResultUtil.responseErrors(e, RestResponseEnum.SYSTEM_ERROR.getCode());
        }
        return responseResult;
    }
}
