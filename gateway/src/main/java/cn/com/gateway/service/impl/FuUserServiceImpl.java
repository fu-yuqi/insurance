package cn.com.gateway.service.impl;

import cn.com.common.entity.first.FuUser;
import cn.com.gateway.mapper.FuUserMapper;
import cn.com.gateway.service.IFuUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
