package cn.com.edor.service.impl;

import cn.com.edor.mapper.FcpersonMapper;
import cn.com.common.entity.first.Fcperson;
import cn.com.edor.service.IFcpersonService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 个人信息表 服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Service
public class FcpersonServiceImpl extends ServiceImpl<FcpersonMapper, Fcperson> implements IFcpersonService {

}
