package cn.com.gateway.service.impl;

import cn.com.common.constant.MaxNoTypeEnum;
import cn.com.common.entity.first.FuUser;
import cn.com.common.exception.BusinessException;
import cn.com.common.model.request.user.UserDo;
import cn.com.gateway.mapper.FuUserMapper;
import cn.com.gateway.service.IFuUserService;
import cn.com.gateway.util.MaxNoUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
@Service
public class FuUserServiceImpl extends ServiceImpl<FuUserMapper, FuUser> implements IFuUserService {

    @Autowired
    FuUserMapper fuUserMapper;

    @Autowired
    private MaxNoUtil maxNoUtil;

    @Override
    public FuUser getUserInfo(String username) {
        return fuUserMapper.findByUsername(username);
    }
    @Override
    public String insertUser(UserDo userDo) {
        FuUser oldUser = fuUserMapper.findByUsername(userDo.getUserName());
        if (ObjectUtils.isEmpty(oldUser)) {
            throw new BusinessException("该账户已经存在！");
        }
        FuUser fuUser = new FuUser();
        BeanUtils.copyProperties(userDo, fuUser);
        //用Redis生成ID最大号
        String userId = maxNoUtil.createMaxNo(MaxNoTypeEnum.USERID.name(),"0");
        fuUser.setId(userId);
        fuUser.setOperator("10000001");
        fuUser.setOperatorcom("86");
        fuUser.setMakedate("2024-03-29");
        fuUser.setMaketime("14:44:19");
        fuUser.setModifydate("2024-03-29");
        fuUser.setModifytime("14:44:19");
        fuUserMapper.insert(fuUser);
        return "用户新增成功！";
    }


}
