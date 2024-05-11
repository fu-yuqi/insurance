package cn.com.gateway.util;

import ch.qos.logback.classic.Logger;
import cn.com.common.constant.MaxNoTypeEnum;
import cn.com.common.exception.BusinessException;
import cn.com.common.utils.DateTimeUtil;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Service
public class MaxNoUtil {

    // 日志
    private static Logger Log = (Logger) LoggerFactory.getLogger(MaxNoUtil.class);


    /**
     * 定义限制类型的一种常量为SN
     */
    public static final String NOLIMITSN = "SN";

    /**
     * 定义占位符为0
     */
    public static final char  FILLCHAR = '0';

    @Autowired
    private RedisMaxNoUtil redisMaxNoUtil;

    /**
     * 生成最大号
     *
     * @param cNoType   最大号类型
     * @param cNoLimit  限制条件
     * @return
     */
    public String createMaxNo(String cNoType, String cNoLimit) {

        try {
            //传入的参数不能为空，如果为空，则直接返回
            if ((cNoType == null) || (cNoType.trim().length() <= 0)) {
                Log.info("NoType长度错误或者NoType为空");
                return null;
            }
            cNoType = cNoType.toUpperCase();
            cNoLimit = cNoLimit.toUpperCase();
            String maxNoReturn = null;
            //生成最大号
            long maxNo = 0L;
            //最终用于补位的数值长度
            int seqnoLen;
            MaxNoTypeEnum type = null;
            try {
                type = Enum.valueOf(MaxNoTypeEnum.class, cNoType);
            } catch (IllegalAccessError e) {
                return "0";
            }
            //对不同NoType定义长度
            seqnoLen = getNoLimitNotSNSerialCount(type, cNoLimit);
            if (seqnoLen < 0) {
                throw new BusinessException("错误的NoLimit");
            }
            //如果cNoLimit大于4，则认为传入机构号
            String tCom = "";
            if (cNoLimit.trim().length()>=4) {
                tCom = cNoLimit.trim().substring(0,4);
            }
            //调整noLimit
            String adjustedNoLimit = adjustNoLimit(type,tCom,cNoLimit);
            maxNo = getMaxNo(cNoType,adjustedNoLimit);
            Log.info("生成的最大号为:{}", maxNo);
            String maxNoReturnStr = fillLeft(String.valueOf(maxNo), FILLCHAR,seqnoLen);
            if (adjustedNoLimit.equals(NOLIMITSN)) {
                maxNoReturn = maxNoReturnStr.trim();
            } else {
                maxNoReturn = adjustedNoLimit.trim() + maxNoReturnStr.trim();
            }
            return maxNoReturn;
        } catch (Exception e) {
            Log.info("error-->redis生成id时出现异常", e);
        }
        return null;

    }

    /**
     * noLimit 非SN位数，返回数值长度位数
     * @param type
     * @param cNoLimit
     * @return
     */
    private int getNoLimitNotSNSerialCount(MaxNoTypeEnum type, String cNoLimit) {
        switch (type) {
            case GRPORDERNO:
                return 3;
            case ORDERNO:
            case USERID:
                return 8;
            case ORDERITEMNO:
                return 9;
            default:
                return 1;
        }
    }

    private String adjustNoLimit(MaxNoTypeEnum type, String tCom, String cNoLimit) {
        switch (type) {
            case USERID:
                return "10" + tCom;
            case ORDERNO:
                return "PO" + DateTimeUtil.getTimeStringYmd();
            case GRPORDERNO:
                return "GO" + DateTimeUtil.getTimeStringYmd();
            case ORDERITEMNO:
                return "IO" + DateTimeUtil.getTimeStringYmd();
            default:
                return cNoLimit;
        }
    }

    private long getMaxNo(String cNoType, String cNoLimit) {
        return redisMaxNoUtil.creatMaxNo(cNoType,cNoLimit);
    }

    private String fillLeft(String sourceString, char fillChar, int allLength){
        String oldStr = sourceString == null ? "" : sourceString.trim();
        StringBuffer sb = new StringBuffer();

        int i = oldStr.length();
        while (i<allLength) {
            sb.append(fillChar);
            i++;
        }
        sb.append(oldStr);
        return sb.toString();
    }

}
