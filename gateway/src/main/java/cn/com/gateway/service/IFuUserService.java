package cn.com.gateway.service;

import cn.com.common.entity.first.FuUser;
import cn.com.common.model.request.user.UniqueValidateCodeReq;
import cn.com.common.model.request.user.UserDo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
public interface IFuUserService extends IService<FuUser> {

    FuUser getUserInfo(String userName);

    public String insertUser(UserDo userDo);

    void uniqueValidateCode(UniqueValidateCodeReq uniqueValidateCodeReq);

}
