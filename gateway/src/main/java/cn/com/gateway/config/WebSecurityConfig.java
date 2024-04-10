package cn.com.gateway.config;

import cn.com.gateway.service.impl.security.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserDetailsServiceImpl userDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 登录页面的URL
        String loginPageUrl = "/login.html";
        // 处理登录请求的URL
        String loginProcessingUrl = "/login";
        // 配置不需要登录即可访问的路径，注意：被html页面引用的相关资源文件也需要添加进来
        String[] accessWithoutLoginUrls = {
                "/favicon.ico",
                "/browser_components/**",
                "/css/**",
                "/js/**",
                "/img/**",
                "/register.html",
                "/api-user/v1/users/reg",
                "/resetpassword.html",
                "/swagger-ui/index.html#/",
                loginPageUrl,
                loginProcessingUrl
        };
        // 对请求进行授权验证
        http.authorizeRequests()
                // 设置不需要登录即可访问
                .antMatchers(accessWithoutLoginUrls).permitAll()
                // 其它的需要登录
                .anyRequest().authenticated();
        // 使用表单验证登录，即：启用登录页面
        http.formLogin()
                .loginPage(loginPageUrl)
                .loginProcessingUrl(loginProcessingUrl);
        // 禁用跨域功击
        http.csrf().disable();
    }

}
