#master 
保险项目

2024.03.27 项目创建

1、springboot版本及springcloud版本对应关系参考官网https://docs.spring.io/spring-cloud/docs/2021.0.9/reference/html/
![image](https://github.com/fu-yuqi/insurance/assets/73983307/c209eb7f-3c64-4f54-ab05-91d455d7e40a)

2、新增契约模块module -insure (主要负责处理契约业务)

3、新增保全模块module -edor (主要负责处理保全业务)

4、修改配置文件（yml）

5、创建公共类模块module -common
    contast: Enum类公共包
    entity.first: 实体类公共包（pojo）
    exception: 异常公共包
    model: request或response实体类
    utils: 辅助工具类包
    
6、连接数据库
    数据库名称：insurance
    数据库表DDL sql: 参考ddl.sql
    新增数据库连接池pom坐标
    修改配置文件
    
7、测试数据库连接是否成功，编写test类进行数据库连接测试（test中DruidLinkTest）
注意：测试数据库连接是不能添加druid

8、新增代码生成器module -generator
    新增代码生成器的依赖，配置数据连接池

9、利用代码生成器生成代码
    生成后pojo移动到common中
    其他的移动到edor的src和resources中
    启动类上添加注解：@MapperScan("cn.com.edor.mapper")
    上传lombok插件

10、测试类Insert插入是否成功

11、统一异常的处理
    因全局都需要使用异常处理，则在common中创建异常类
    创建返回结果Util工具类

12、实现用户注册
    重新生成数据库，删除原来自动的生成的代码
    重新生成代码
    集成swagger测试接口

13、处理edor全局异常类监听：所有抛出的异常均会被MyEexceptionHandler拦截

14、通过Spring Validation检查数据的有效性
    
15、使用nacos实现服务注册，并通过nacos的配置文件启动项目(需要nacos2.0.4版本)
    1、nacos启动：进入bin文件夹,cmd 执行脚本startup.cmd -m standalone    登录地址：localhost:8848/nacos/index.html#/
    2、配置nacos相关配置，导入nacos依赖
    3、新建bootstrap.yml
    4、创建nacos配置类，以便后续动态获取配置文件信息
    5、从nacos上拉去配置启动项目

16、创建网关项目
    1、引入网关依赖，删除web依赖
    2、在nacos上注册服务