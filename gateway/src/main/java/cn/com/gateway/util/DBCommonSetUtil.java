package cn.com.gateway.util;

import cn.com.common.exception.BusinessException;
import cn.com.common.utils.DateTimeUtil;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * @author WuDezhong
 * @date 2019/7/31 10:24
 */
public class DBCommonSetUtil {

    /**
     * 数据库表通用字段赋值 makeDate ， makeTime ， modifyDate ，modifyTime
     *
     * @param obj
     * @return
     */
    @SuppressWarnings("all")
    public static <T> T initObjectUniversalFields(T obj, String operationType) {
        Class objClass = obj.getClass();
        try {
            String date = DateTimeUtil.getCurrentDate();
            String time = DateTimeUtil.getCurrentTime();
            if ("INSERT".equalsIgnoreCase(operationType) || "ADD".equalsIgnoreCase(operationType)) {
                Method setMakedate = objClass.getMethod("setMakedate", String.class);
                setMakedate.invoke(obj, date);
                Method setMaketime = objClass.getMethod("setMaketime", String.class);
                setMaketime.invoke(obj, time);
            }
            if ("INSERT".equalsIgnoreCase(operationType) || "ADD".equalsIgnoreCase(operationType) || "UPDATE".equalsIgnoreCase(operationType)) {
                Method setModifyDate = objClass.getMethod("setModifydate", String.class);
                setModifyDate.invoke(obj, date);
                Method setModifyTime = objClass.getMethod("setModifytime", String.class);
                setModifyTime.invoke(obj, time);
            }
        } catch (Exception e) {
            throw new BusinessException("初始化表通用字段异常：" + e.getMessage());
        }
        return obj;
    }


    /**
     * 判断对象中属性值是否全为空
     *
     * @param obj
     * @return
     */
    public static boolean checkObjAllFieldsIsNull(Object obj) {
        Class stuCla = (Class) obj.getClass();// 得到类对象
        Field[] fs = stuCla.getDeclaredFields();//得到属性集合
        boolean flag = true;
        for (Field f : fs) {//遍历属性
            f.setAccessible(true); // 设置属性是可以访问的(私有的也可以)
            Object val = null;// 得到此属性的值
            try {
                val = f.get(obj);
            } catch (IllegalAccessException e) {
                throw new BusinessException("系统内部错误：判断对象属性是否为空失败！");
            }
            if(val!=null && !"".equals(val)) {//只要有1个属性不为空,那么就不是所有的属性值都为空
                flag = false;
                break;
            }
        }
        return flag;
    }


}
