package cn.com.gateway.service.impl.security;

import cn.com.common.entity.first.FuUser;
import cn.com.common.model.vo.PermissionVO;
import cn.com.common.security.LoginUserInfo;
import cn.com.gateway.service.IFuUserService;
import cn.com.gateway.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    IFuUserService userService;
    @Autowired
    IPermissionService permissionService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 根据用户名查询用户信息
        FuUser fuUser = userService.getUserInfo(username);
        // 如果没有查询到用户信息，则返回null
        if (fuUser == null) {
            return null;
        }

        // 根据用户名查询该用户的权限信息（列表）
        List<PermissionVO> permissions = permissionService.getUserPermissions(username);

        // 基于以上权限列表创建GrantedAuthority集合
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (PermissionVO permission : permissions) {
            authorities.add(new SimpleGrantedAuthority(permission.getAuthority()));
        }

        // 创建返回对象
//        UserDetails userDetails = org.springframework.security.core.userdetails.User.builder()
//                .username(user.getUsername())
//                .password(user.getPassword())
//                .disabled(user.getIsEnabled() == 0)
//                .accountLocked(user.getIsLocked() == 1)
//                .accountExpired(false)
//                .credentialsExpired(false)
//                .authorities(authorities)
//                .build();
        // 关于构造方法的参数，在构造方法的括号中按下Ctrl+P可以提示参数列表
        // String username：用户名
        // String password：密码
        // boolean enabled：账号是否启用
        // boolean accountNonExpired：账号是否未过期
        // boolean credentialsNonExpired：证书是否未过期
        // boolean accountNonLocked：账号未被锁定
        // Collection<? extends GrantedAuthority> authorities：权限列表
        LoginUserInfo loginUserInfo = new LoginUserInfo(
                fuUser.getUserName(),
                fuUser.getPassWord(),
                true,
                true,
                true,
                "0".equals(fuUser.getIsLock()),
                authorities
        );
        loginUserInfo.setId(fuUser.getId());
        loginUserInfo.setNickName(fuUser.getNickName());

        // 返回用户信息
        return loginUserInfo;
    }
}
