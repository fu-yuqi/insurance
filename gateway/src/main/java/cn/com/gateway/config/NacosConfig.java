package cn.com.gateway.config;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@NacosConfigurationProperties(dataId = "insurance_gateway.yaml", groupId = "INSURANCE_GROUP", autoRefreshed = true)
public class NacosConfig {
}
