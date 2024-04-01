package cn.com.edor.config;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@NacosConfigurationProperties(dataId = "insurance_edor", groupId = "insurance_group", autoRefreshed = true)
public class NacosConfig {
}
