package cn.com.gateway.mapper;

import cn.com.common.entity.first.FtValidatecode;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 存放未注册用户动态验证码信息 Mapper 接口
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-05-08
 */
@Repository
public interface FtValidatecodeMapper extends BaseMapper<FtValidatecode> {

    int updateByPrimaryKeySelective(FtValidatecode ftValidatecode);

    //验证码效验
    FtValidatecode selectByCodeId(String codeId);

}
