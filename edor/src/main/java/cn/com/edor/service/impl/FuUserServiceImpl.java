package cn.com.edor.service.impl;

import cn.com.common.entity.first.FuUser;
import cn.com.common.model.request.user.UserDo;
import cn.com.common.utils.ResponseResult;
import cn.com.edor.mapper.FuUserMapper;
import cn.com.edor.service.IFuUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-29
 */
@Service
public class FuUserServiceImpl extends ServiceImpl<FuUserMapper, FuUser> implements IFuUserService {

    @Autowired
    private FuUserMapper fuUserMapper;

    @Override
    public String insertUser(UserDo userDo) {
        FuUser fuUser = new FuUser();
        BeanUtils.copyProperties(userDo, fuUser);
        fuUser.setId("11111111");
        fuUser.setOperator("10000001");
        fuUser.setOperatorcom("86");
        fuUser.setMakedate("2024-03-29");
        fuUser.setMaketime("14:44:19");
        fuUser.setModifydate("2024-03-29");
        fuUser.setModifytime("14:44:19");
//        throw new BusinessException("新增用户失败");
        fuUserMapper.insert(fuUser);
        return "用户新增成功！";
    }
}
