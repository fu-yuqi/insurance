package cn.com.edor.config;

import com.alibaba.nacos.api.config.annotation.NacosValue;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


@EnableSwagger2
@EnableWebMvc  //解决springboot版本太高问题
@EnableOpenApi
@Configuration
public class SwaggerConfig {

    //从配置文件中决定是否可用
//    @Value("${swagger2.enable}")
    @NacosValue("${swagger2.enable}")
    boolean enable ;

    /**
     * Api显示的详细配置信息
     * 访问http://127.0.0.1:8080/swagger-ui/index.html可以看到API文档
     * @return
     */
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("我的第一个保险项目的API接口文档")//标题
                .description("我的第一个SpringCloud整合Swagger2的项目")//接口文档描述
                .termsOfServiceUrl("learn springcloud")//声明
                //联系方式
                .contact(new Contact("fu_yuqi", "www.baidu.com", "fu_yuqi@163.com"))
                .version("1.0.0")//版本
                .build();
    }

    //创建一个RestApi的容器
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)//Swagger2文档
                .apiInfo(apiInfo())//api的信息
                .select()
                //扫描策略 这里扫描demo下的所有包的接口
                .apis(RequestHandlerSelectors.basePackage("cn.com.edor")) //从哪个包下面开始扫描
                //全路径匹配
                .paths(PathSelectors.any())
                .build()
                .enable(enable);//是否可用
//                .globalOperationParameters(globalOperation());//全局属性设置
    }

//    // 添加参数 主要是设置token
//    private List<Parameter> globalOperation(){
//        //添加head参数配置start
//        ParameterBuilder tokenPar = new ParameterBuilder();
//        List<Parameter> pars = new ArrayList<>();
//        //第一个token为传参的key，第二个token为swagger页面显示的值
//        tokenPar.name("token")
//                .description("token")
//                .modelRef(new ModelRef("string"))//String类型
//                .parameterType("header")//给请求头设置token
//                .required(false)//非必须
//                .build();
//        pars.add(tokenPar.build());
//        return pars;
//    }

}
