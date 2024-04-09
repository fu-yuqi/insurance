package cn.com.gateway.service.security;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        if ("root".equals(username)) {
            UserDetails userDetails = User.builder()
                    .username("root")
                    .password("{bcrypt}$2a$10$ATgt/9TWmM4zLMI1T5vd1eeG3u8PX7bS48Am08uLLTufkNxapkgRO")
                    .authorities("a_delete", "a_insert", "u_list", "u_info")
                    .build();
            return userDetails;
        }
        return null;
    }
}
