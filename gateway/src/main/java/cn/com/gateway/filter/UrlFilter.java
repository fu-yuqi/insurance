//package cn.com.gateway.filter;
//
//import com.baomidou.mybatisplus.core.toolkit.StringUtils;
//import com.google.common.collect.Lists;
//import org.springframework.stereotype.Component;
//
//import java.util.List;
//import java.util.regex.Pattern;
//
//@Component
//public class UrlFilter {
//    public static List<Pattern> urls = Lists.newArrayList();
//
//    static {
//        urls.add(Pattern.compile("swagger"));
//        urls.add(Pattern.compile("api-docs"));
//        urls.add(Pattern.compile("configuration"));
//        urls.add(Pattern.compile("favicon"));
//        urls.add(Pattern.compile("/span"));
//    }
//
//    public   boolean urlFilter(String uri){
//        boolean doFilter = true;
//        for (Pattern s : urls) {
//            if (StringUtils.isNotEmpty(uri) && uri.indexOf(s.toString()) >= 0) {
//                doFilter = false;
//                break;
//            }
//        }
//        return doFilter;
//    }
//}
