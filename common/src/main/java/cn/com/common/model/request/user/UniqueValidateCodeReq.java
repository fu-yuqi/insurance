package cn.com.common.model.request.user;

import lombok.Data;

@Data
public class UniqueValidateCodeReq {

    //验证码验证标识,用户注册（01），重置密码认证（02）,手机端登录（03）
    private String type;
    //动态密码
    private String validateCode;
    //验证码id，用户注册效验使用
    private String codeId;
    //用户编号，重置密码效验使用
    private String userId;
}
