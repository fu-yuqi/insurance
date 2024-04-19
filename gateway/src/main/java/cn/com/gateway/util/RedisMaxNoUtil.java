package cn.com.gateway.util;

import ch.qos.logback.classic.Logger;
import cn.com.common.constant.MaxNoTypeEnum;
import cn.com.common.exception.BusinessException;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.RedisConnectionFailureException;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.concurrent.TimeUnit;

@Service
public class RedisMaxNoUtil {

    private static Logger Log = (Logger) LoggerFactory.getLogger(RedisMaxNoUtil.class);

    private StringRedisTemplate redisTemplate;

    @Autowired
    public RedisMaxNoUtil(StringRedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    /**
     * 拼接key
     * @param table
     * @param cNoType
     * @param cNoLimit
     * @return
     */
    private String getKey(String table, String cNoType, String cNoLimit) {
        return new StringBuffer().append(table)
                .append(".").append(cNoType)
                .append(".").append(cNoLimit)
                .toString();
    }

    public long creatMaxNo(String cNoType, String cNoLimit) {
        String key;
        switch (MaxNoTypeEnum.valueOf(cNoType)) {
            case USERID:
                key = getKey("FUUSER",cNoType,cNoLimit);
                break;
            case ORDERNO:
                key = getKey("FOORDERNO", cNoType, cNoLimit);
                break;
            case GRPORDERNO:
                key = getKey("FOGRPORDERNO", cNoType, cNoLimit);
                break;
            case ORDERITEMNO:
                key =getKey("FOORDERITEM", cNoType, cNoLimit);
                break;
            default:
                key = getKey("FZMAXNO", cNoType, cNoLimit);
        }
        int retrycount = 0;
        while (retrycount < 60) {
            try {
                switch (MaxNoTypeEnum.valueOf(cNoType)) {
                    case ORDERNO:
                    case ORDERITEMNO:
                    case GRPORDERNO:
                        //订单需要根据日期生成
                        if (StringUtils.isEmpty(redisTemplate.opsForValue().get(key))) {
                            redisTemplate.opsForValue().set(key,"0", 24, TimeUnit.HOURS);
                        }
                        break;
                    default:
                        break;
                }
                return redisTemplate.opsForValue().increment(key, 1);
            } catch (RedisConnectionFailureException e) {
                Log.error("redis连接失败");
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException ie) {
                    Log.error("重试失败");
                    break;
                }
                retrycount++;
                Log.info("第{}次重试失败", retrycount);
            }
        }

        throw new BusinessException("获取Redis批次号失败");
    }

    public void setValue(String key,String value) {
        redisTemplate.opsForValue().set(key,"0", 7200, TimeUnit.SECONDS);
    }

    public String getValue(String key){
        return redisTemplate.opsForValue().get(key);
    }
}
