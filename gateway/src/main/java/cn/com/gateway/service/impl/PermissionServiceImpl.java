package cn.com.gateway.service.impl;

import cn.com.common.entity.first.Permission;
import cn.com.common.model.vo.PermissionVO;
import cn.com.gateway.mapper.PermissionMapper;
import cn.com.gateway.service.IPermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-10
 */
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements IPermissionService {

    @Autowired
    PermissionMapper permissionMapper;

    @Override
    public List<PermissionVO> getUserPermissions(String username) {
        return permissionMapper.findByUsername(username);
    }
}
