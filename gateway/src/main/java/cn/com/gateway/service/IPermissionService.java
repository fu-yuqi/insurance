package cn.com.gateway.service;

import cn.com.common.entity.first.Permission;
import cn.com.common.model.vo.PermissionVO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-10
 */
public interface IPermissionService extends IService<Permission> {

    List<PermissionVO> getUserPermissions(String userName);

}
