package cn.com.edor.service.impl;

import cn.com.edor.mapper.FcorderMapper;
import cn.com.common.entity.first.Fcorder;
import cn.com.edor.service.IFcorderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 订单表 服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Service
public class FcorderServiceImpl extends ServiceImpl<FcorderMapper, Fcorder> implements IFcorderService {

}
