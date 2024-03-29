package cn.com.edor.config;

import cn.com.common.exception.BusinessException;
import cn.com.common.utils.ResponseResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.sql.SQLIntegrityConstraintViolationException;

/**
 * 全局处理异常的类
 */
@RestControllerAdvice
@Slf4j
public class MyExceptionHandler {

    @ExceptionHandler(BusinessException.class)
    public ResponseResult handlerException(Throwable e) {
        if (e instanceof BusinessException) {
            return ResponseResult.failure(ResponseResult.State.ERR_CODE, e);
        } else if (e instanceof MethodArgumentNotValidException) {
            return ResponseResult.failure(ResponseResult.State.ERR_CODE, e);
        } else if (e instanceof MissingServletRequestParameterException) {
            return ResponseResult.failure(ResponseResult.State.ERR_CODE, e);
        } else if (e instanceof SQLIntegrityConstraintViolationException) {
            return ResponseResult.failure(ResponseResult.State.ERR_CODE, e);
        } else {
            return ResponseResult.failure(ResponseResult.State.ERR_UNKNOWN,e);
        }
    }

}
