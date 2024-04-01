package cn.com.insure.config;

import com.alibaba.nacos.api.config.annotation.NacosConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@NacosConfigurationProperties(dataId = "insurance_insurance", groupId = "insurance_group", autoRefreshed = true)
public class NacosConfig {
}
