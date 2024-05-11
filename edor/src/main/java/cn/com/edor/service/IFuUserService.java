package cn.com.edor.service;

import cn.com.common.entity.first.FuUser;
import cn.com.common.model.request.user.UserDo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-29
 */
public interface IFuUserService extends IService<FuUser> {

    public String insertUser(UserDo userDo);

}
