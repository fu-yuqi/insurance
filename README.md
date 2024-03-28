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