package cn.com.edor.service.impl;

import cn.com.edor.mapper.FcorderitemMapper;
import cn.com.common.entity.first.Fcorderitem;
import cn.com.edor.service.IFcorderitemService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 子订单表 服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Service
public class FcorderitemServiceImpl extends ServiceImpl<FcorderitemMapper, Fcorderitem> implements IFcorderitemService {

}
