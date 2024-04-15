package cn.com.gateway.filter;

import com.alibaba.fastjson.JSON;
import cn.com.common.filter.SessionFilter;
import com.alibaba.cloud.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

@Component
public class ServiceFilter extends SessionFilter {

    @Autowired
    private UrlFilter urlFilter;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String uri = request.getRequestURI();
        boolean doFilter=urlFilter.urlFilter(uri);
        if (doFilter){
            Enumeration<String> tokenEnums = request.getHeaders("Authorization");
            String tokens = request.getParameter("Authorization");
            if (tokenEnums.hasMoreElements() || StringUtils.isNotBlank(tokens)) {
//                String token = request.getHeader("Authorization");
//                if (StringUtils.isEmpty(token)) {
//                    token = tokens;
//                }
//                if (StringUtils.isEmpty(token)) {
//                    returnError(response, ResultUtil.error("用户未登录"));
//                    return;
//                }
                try {
//                    logger.info("token:"+token);
////                    String openId = EncodeUtil.openIdDec(token);
////                    logger.info("请求Id:"+openId);
//                    CurrentUserVo currentUserVo = currentUserCache.getuserVo(token);
//                    if (null == currentUserVo) {
//                        returnError(response, ResultUtil.error("用户未登录或者登录超时"));
//                        return;
//                    }
//                    //续期
//                    //currentUserCache.set(openId,currentUserVo);
                    filterChain.doFilter(request, response);
                    return;
                    //查询用户表的信息进行校验
                } catch (Exception e) {
//                    logger.error("sessionFilter出现异常", e);
//                    returnError(response, ResultUtil.error(ErrorTipsUtil.SYS_EXCEPTION_TIP));
                    return;
                }finally {

                }
            }
//            returnError(response, ResultUtil.error("用户未登录或者登录超时!"));
            return;
        }
        filterChain.doFilter(request, response);
    }





    private void returnError(HttpServletResponse response, Map<String,Object> rt) throws IOException {
        response.setContentType("application/json; charset=utf-8");
        PrintWriter printWriter = response.getWriter();
        printWriter.print(JSON.toJSONString(rt));
        printWriter.flush();
        printWriter.close();
    }

    public static void main(String[] args) {
//        String s = EncodeUtil.openIdDec("93FE4611250074D98C7CF90D64FF089EF5EE641EA5693A0AA6322236B8B8ED7EFD8524ABFD7512ED635A804640B8F08004A01142D266268A");
//        System.out.printf(""+s);
    }


}
