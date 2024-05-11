package cn.com.gateway.mapper;

import cn.com.common.entity.first.FuUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
@Repository
public interface FuUserMapper extends BaseMapper<FuUser> {

    FuUser findByUsername(String userName);

    int insertSelective(FuUser fuUser);

    List<String> findIdByUserInfoAndRoleId(@Param("userInfo") String userInfo, @Param("email") String email,
                                           @Param("mobilePhone") String mobilePhone, @Param("roleId") String roleId);

}
