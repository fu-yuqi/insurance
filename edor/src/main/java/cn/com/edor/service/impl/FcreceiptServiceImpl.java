package cn.com.edor.service.impl;


import cn.com.common.entity.first.Fcreceipt;
import cn.com.edor.mapper.FcreceiptMapper;
import cn.com.edor.service.IFcreceiptService;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Map;
import java.util.function.Function;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-03-28
 */
@Service
public class FcreceiptServiceImpl extends ServiceImpl<FcreceiptMapper, Fcreceipt> implements IFcreceiptService {

    @Override
    public boolean saveBatch(Collection<Fcreceipt> entityList, int batchSize) {
        return false;
    }

    @Override
    public boolean saveOrUpdateBatch(Collection<Fcreceipt> entityList, int batchSize) {
        return false;
    }

    @Override
    public boolean updateBatchById(Collection<Fcreceipt> entityList, int batchSize) {
        return false;
    }

    @Override
    public boolean saveOrUpdate(Fcreceipt entity) {
        return false;
    }

    @Override
    public Fcreceipt getOne(Wrapper<Fcreceipt> queryWrapper, boolean throwEx) {
        return null;
    }

    @Override
    public Map<String, Object> getMap(Wrapper<Fcreceipt> queryWrapper) {
        return null;
    }

    @Override
    public <V> V getObj(Wrapper<Fcreceipt> queryWrapper, Function<? super Object, V> mapper) {
        return null;
    }
}
