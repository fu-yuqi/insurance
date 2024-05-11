package cn.com.gateway.mapper;

import cn.com.common.entity.first.Permission;
import cn.com.common.model.vo.PermissionVO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-10
 */
@Repository
public interface PermissionMapper extends BaseMapper<Permission> {

    List<PermissionVO> findByUsername(String userName);

}
