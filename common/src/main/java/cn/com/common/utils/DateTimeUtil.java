package cn.com.common.utils;

import cn.com.common.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DateTimeUtil {

    private static final Logger log = LoggerFactory.getLogger(DateTimeUtil.class);

    public static int getAgeDifference(String day1, String day2) {
        if (day1.compareTo(day2) >= 0) {
            return getCurrentAge(day2, day1);
        } else {
            return getCurrentAge(day1, day2);
        }
    }

    /**
     * 获取当前系统日期
     *
     * @author liucy
     * @return 当前日期字符串，格式为："yyyy-MM-dd"
     */
    public static String getCurrentDate() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 日期加几天
     * @return
     */
    public static Date getDateAdd(Date date,int addDay) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        // 把日期往后增加一天,整数  往后推,负数往前移动
        calendar.add(Calendar.DATE, addDay);
        // 这个时间就是日期往后推一天的结果
        return calendar.getTime();
    }
    /**
     * 日期加几天(string类型入参,出参)
     * @return
     */
    public static String getDateAdd(String date,int addDay) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(strToDate(date,""));
        // 把日期往后增加一天,整数  往后推,负数往前移动
        calendar.add(Calendar.DATE, addDay);
        // 这个时间就是日期往后推一天的结果
        return getDate(calendar.getTime());
    }
    public static String getCurrentChineseDate() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 获取当前系统 月日
     *
     * @author liucy
     * @return 当前日期字符串，格式为："MM-dd"
     */
    public static String getMonthDay() {
        SimpleDateFormat df = new SimpleDateFormat("MM-dd");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 把日期转换成字符串格式
     * @param day
     * @return
     */
    public static String getDate(Date day) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String todayStr = df.format(day);
        return todayStr;
    }

    /**
     * 获取系统当前年度
     *
     * @author hhw
     * @return 当前日期字符串，格式为："yyyy" 例如：当前日期为2018年10月27日，则返回2018
     */
    public static String getCurrentYear() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }

    /**
     * 获取系统当前月份
     * @author hhw
     * @return 当前日期字符串，格式为："MM" 例如：当前日期为2018年10月27日，则返回10
     */
    public static String getCurrentMonth() {
        SimpleDateFormat df = new SimpleDateFormat("MM");
        Date today = new Date();
        String monthStr = df.format(today);
        return monthStr;
    }

    /**
     * 获取系统当前日期天数 dd
     * @author hhw
     * @return 当前日期字符串，格式为："dd"。 例如：当前日期为2018年10月27日，则返回27
     */
    public static String getCurrentDay() {
        SimpleDateFormat df = new SimpleDateFormat("dd");
        Date today = new Date();
        String datStr = df.format(today);
        return datStr;
    }


    /**
     * 获取当前系统时间
     *
     * @author liucy
     * @return 当前日期字符串，格式为："HH:mm:ss"
     */
    public static String getCurrentTime() {
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
        Date now = new Date();
        String nowStr = df.format(now);
        return nowStr;
    }

    /**
     * 获取当前系统时间
     *
     * @author liucy
     * @return 当前日期字符串，格式为："yyyy-MM-dd HH:mm:ss"
     */
    public static String getCurrentDateTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }

    /**
     * 获取当前时间字符串
     *
     * @author liucy
     * @return 当前时间字符串，格式为："yyyyMMddHHmmss"
     */
    public static String getTimeString() {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 获取当前时间字符串YYYYMMDD
     *
     * @author liucy
     * @return 当前时间字符串，格式为："yyyyMMdd"
     */
    public static String getTimeStringYmd() {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 获取当前时间字符串HH:mm:ss
     *
     * @author liucy
     * @return 当前时间字符串，格式为："HHmmss"
     */
    public static String getTimeStringHMS() {
        SimpleDateFormat df = new SimpleDateFormat("HHmmss");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }
    /**
     * 获取当前时间字符串
     *
     * @author liucy
     * @return 当前时间字符串，格式为："yyyyMMddHHmm"
     */
    public static String getTimeHM() {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmm");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }


    /**
     * 日期字符串转日期类型
     * @author liucy
     * @param dateStr 日期字符串
     * @param formatStr 格式化样式 例：yyyy-MM-dd
     * @return date
     */
    public static Date strToDate(String dateStr, String formatStr) {
        if (formatStr==null || "".equals(formatStr)) {
            formatStr = "yyyy-MM-dd";
        }
        SimpleDateFormat format = new SimpleDateFormat(formatStr);
        Date date = null;
        try {
            date = format.parse(dateStr);
        } catch (ParseException e) {
            log.info("", e);
        }
        return date;
    }

    /**
     * 获取出生年月
     */
    public static String getBirthdayDate(String age) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dt = new Date();
        Calendar rightNow = Calendar.getInstance();
        rightNow.setTime(dt);
        rightNow.add(Calendar.YEAR, -Integer.parseInt(age));// 出生日期
        Date dt1 = rightNow.getTime();
        String reStr = sdf.format(dt1);
        return reStr;
    }

    /**
     * 获取年龄
     */
    public static String getAge(String birthday) {
/*
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date birthday = null;
		try {
			birthday = sdf.parse(str);
		} catch (ParseException e) {
		    log.info("", e);
		}
		Calendar calendarBirthday = Calendar.getInstance();
		calendarBirthday.setTime(birthday);
		int birthdayTime = calendarBirthday.get(Calendar.YEAR);
		Calendar calendarNow = Calendar.getInstance();
		calendarNow.setTime(new Date());
		int nowTime = calendarNow.get(Calendar.YEAR);
		return (nowTime - birthdayTime) + "";*/
        String date = getCurrentDate();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        try {
            Calendar curr = Calendar.getInstance();
            Calendar born = Calendar.getInstance();
            curr.setTime(sdf.parse(date));
            born.setTime(sdf.parse(birthday));
            int age = curr.get(Calendar.YEAR)-born.get(Calendar.YEAR);
            if (age<=0){
                return "0";
            }
            int currMonth = curr.get(Calendar.MONTH);
            int currDay = curr.get(Calendar.DAY_OF_MONTH);
            int bornMonth = born.get(Calendar.MONTH);
            int bornDay = born.get(Calendar.DAY_OF_MONTH);
            if((currMonth<bornMonth) || (currMonth==bornMonth && currDay<bornDay)){
                age--;
            }
            return age < 0 ? "0":String.valueOf(age);
        } catch (ParseException e) {
            log.info("计算周岁失败",e);
            return "-2";
        }
    }


    public static  String getBirthday(String value){
        String result=null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            if (value.contains("/")) {
                String replace = value.replace("/", "-0");
                Date date = sdf.parse(replace);
                result=sdf.format(date);
            }
        } catch (ParseException e) {
            log.error("异常信息:",e);
        }
        return result;
    }



    /**
     * 获取周岁
     * @param birthday
     * @return
     */
    public static int getCurrentAge(String birthday,String date){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        try {
            Calendar curr = Calendar.getInstance();
            Calendar born = Calendar.getInstance();
            curr.setTime(sdf.parse(date));
            born.setTime(sdf.parse(birthday));
            int age = curr.get(Calendar.YEAR)-born.get(Calendar.YEAR);
            if (age<=0){
                return 0;
            }
            int currMonth = curr.get(Calendar.MONTH);
            int currDay = curr.get(Calendar.DAY_OF_MONTH);
            int bornMonth = born.get(Calendar.MONTH);
            int bornDay = born.get(Calendar.DAY_OF_MONTH);
            if((currMonth<bornMonth) || (currMonth==bornMonth && currDay<bornDay)){
                age--;
            }
            return age < 0 ? 0:age;
        } catch (ParseException e) {
            log.info("计算周岁失败",e);
            return -2;
        }
    }

    /*
     * 将时间转换为时间戳
     */
    public static String dateToStamp(String s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        long ts = 0;
        try {
            date = simpleDateFormat.parse(s);
            ts = date.getTime() / 1000;
        } catch (ParseException e) {
            log.info("", e);
        }
        res = String.valueOf(ts);
        return res;
    }
    /*
     * 将时间转换为时间戳
     */
    public static String dateToStampNo(String s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        long ts = 0;
        try {
            date = simpleDateFormat.parse(s);
            ts = date.getTime() ;
        } catch (ParseException e) {
            log.info("", e);
        }
        res = String.valueOf(ts);
        return res;
    }
    /*
     * 时间戳转换为日期格式字符串
     *
     */
    public static String timeStamp2Date(String timeStamp){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(new Date(Long.valueOf(timeStamp + "000")));
    }


    /**
     * 两个时间之间相差距离多少天
     * @param str1 时间参数 1：
     * @param str2 时间参数 2：
     * @return 相差天数
     */
    public static long getDistanceDays(String str1, String str2) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date one;
        Date two;
        long days=0;
        try {
            one = df.parse(str1);
            two = df.parse(str2);
            long time1 = one.getTime();
            long time2 = two.getTime();
            long diff ;
            if(time1<time2) {
                diff = time2 - time1;
            } else {
                diff = time1 - time2;
            }
            days = diff / (1000 * 60 * 60 * 24);
        } catch (ParseException e) {
            log.info("", e);
        }
        return days;
    }
    /**
     * 两个时间之间相差距离多少天(具体到是分秒)
     * @param str1 时间参数 1：
     * @param str2 时间参数 2：
     * @return 相差天数
     */
    public static long getDistanceDays1(String str1, String str2) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date one;
        Date two;
        long days=0;
        try {
            one = df.parse(str1);
            two = df.parse(str2);
            long time1 = one.getTime();
            long time2 = two.getTime();
            long diff ;
            if(time1<time2) {
                diff = time2 - time1;
            } else {
                diff = time1 - time2;
            }
            days = diff / (1000 * 60 * 60 * 24);
        } catch (ParseException e) {
            log.info("", e);
        }
        return days;
    }


    /**
     * 日期字符串加一年
     * @param dateStr
     * @return
     */
    public static String dateAddOneYear(String dateStr){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date today = strToDate(dateStr, "yyyy-MM-dd");
        //System.out.println("今天是:" + df.format(today));
        Calendar c = Calendar.getInstance();
        c.setTime(today);
        c.add(Calendar.YEAR, 1);// 今天+1天
        Date nextYear = c.getTime();
        String nextYearStr = df.format(nextYear);
        //System.out.println("明年是:" + nextYearStr);
        return nextYearStr;
    }

    /**
     * 日期字符串减一天
     * @param dateStr
     * @return
     */
    public static String dateSubOneDay(String dateStr){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date today = strToDate(dateStr, "yyyy-MM-dd");
        //System.out.println("今天是:" + df.format(today));
        Calendar c = Calendar.getInstance();
        c.setTime(today);
        // 日期减一天
        c.set(Calendar.DATE, c.get(Calendar.DATE)-1);
        String nextYearStr = df.format(c.getTime());
        return nextYearStr;
    }

    /**
     * 日期字符串加一天
     * @param dateStr
     * @return
     */
    public static String dateAddOneDay(String dateStr){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date today = strToDate(dateStr, "yyyy-MM-dd");
        //System.out.println("今天是:" + df.format(today));
        Calendar c = Calendar.getInstance();
        c.setTime(today);
        // 日期加一天
        c.set(Calendar.DATE, c.get(Calendar.DATE)+1);
        String nextYearStr = df.format(c.getTime());
        return nextYearStr;
    }

    /**
     * 获取日期年月日格式，可增加减少天数
     * @param amount 天数，为负数时为减少的天数，为正整数时为增加的天数
     * @return
     */
    public static String getdateYMD(int amount){
        Calendar c = Calendar.getInstance();
        c.add(Calendar.DAY_OF_MONTH, amount);
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH) + 1;
        int day = c.get(Calendar.DAY_OF_MONTH);
        String nextYearStr = year+"年"+month+"月"+day+"日";
        return nextYearStr;
    }


    //校验未来日期
    public static boolean checkFutureDate(String strDate){
        //判断是否为未来日期
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
        String nowdate = dateFormat.format(new Date());
//		String strdate = strDate.replace("/","-");
        if(nowdate.compareTo(strDate)>0){
            return false;//不是未来日期
        }
        return true;//未来日期（含当前日期）
    }

    //比较日期 前>后：false
    public static boolean checkDate(String strDate,String strDate1){
        if(strDate.compareTo(strDate1)>0){
            return false;
        }
        return true;
    }


    //获取指定时间
    public static String getAppointDate(Date date,int value,int DateParm) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        switch (DateParm) {
            case 1:
                calendar.add(Calendar.YEAR, value);//把日期往后增加一年.整数往后推,负数往前移动
                break;
            case 2:
                calendar.add(Calendar.MONTH,value);//把日期往后增加一天.整数往后推,负数往前移动
                break;
            case 3:
                calendar.add(Calendar.DAY_OF_MONTH,value);//把日期往后增加一天.整数往后推,负数往前移动
                break;
        }
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String newStr = df.format(calendar.getTime());
        return newStr;
    }

    //获取指定时间
    public static String getAppointDate(Date date,int value,String dateUnit) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        switch (dateUnit) {
            case "Y":
                calendar.add(Calendar.YEAR, value);//把日期往后增加一年.整数往后推,负数往前移动
                break;
            case "M":
                calendar.add(Calendar.MONTH,value);//把日期往后增加一天.整数往后推,负数往前移动
                break;
            case "D":
                calendar.add(Calendar.DAY_OF_MONTH,value);//把日期往后增加一天.整数往后推,负数往前移动
                break;
        }
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String newStr = df.format(calendar.getTime());
        return newStr;
    }
    public static boolean checkAdult(String dateStr) {
        Date date = strToDate(dateStr, "yyyy-MM-dd");
        Calendar current = Calendar.getInstance();
        Calendar birthDay = Calendar.getInstance();
        birthDay.setTime(date);
        Integer year = current.get(Calendar.YEAR) - birthDay.get(Calendar.YEAR);
        if (year > 18) {
            return true;
        } else if (year < 18) {
            return false;
        }
        // 如果年相等，就比较月份
        Integer month = current.get(Calendar.MONTH) - birthDay.get(Calendar.MONTH);
        if (month > 0) {
            return true;
        } else if (month < 0) {
            return false;
        }
        // 如果月也相等，就比较天
        Integer day = current.get(Calendar.DAY_OF_MONTH) - birthDay.get(Calendar.DAY_OF_MONTH);
        return  day >= 0;
    }
    public static void main(String[] args) throws NumberFormatException, ParseException {

//        String s = timePastTenSecond(30);
//        System.out.println(s);
//
//        String dateAdd = getDateAdd("2023-06-02", 60);
//        System.out.println("日期加n天："+dateAdd);
//        boolean b = timeCompare("08:00:00");
//        if (b){
//            System.out.println("当前大于8点");
//        }else {
//            System.out.println("小于8点");
//        }
//
//        int ageDifference = getAgeDifference(DateTimeUtil.getCurrentDate(), "1997-05-11");
//        System.out.println(ageDifference);
//        int ageDifference1 = getAgeDifference(DateTimeUtil.getCurrentDate(), "2015-10-02");
//        System.out.println(ageDifference1);
//
//        int ageDifference2 = getAgeDifference("1997-05-11", "2015-10-02");
//        System.out.println(ageDifference2);
//
//        System.out.println(getCurToEndSecond());

        System.out.println(getTimeStringYmd());

    }

    //校验身份证号码
    private final static int[] PARITYBIT = {'1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'};
    private final static int[] POWER_LIST = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2};

    public static boolean isIDCard(String certNo){
        if(certNo == null || (certNo.length() != 15 && certNo.length() != 18))
            return false;
        final char[] cs = certNo.toUpperCase().toCharArray();
        //校验位数
        int power = 0;
        for(int i=0; i<cs.length; i++){
            if(i==cs.length-1 && cs[i] == 'X')
                break;//最后一位可以 是X或x
            if(cs[i]<'0' || cs[i]>'9')
                return false;
            if(i < cs.length -1){
                power += (cs[i] - '0') * POWER_LIST[i];
            }
        }

        /*//校验区位码
        if(!zoneNum.containsKey(Integer.valueOf(certNo.substring(0,2)))){
            return false;
        }*/

        //校验年份
        String year = certNo.length() == 15 ? "19" + certNo.substring(6,8) :certNo.substring(6, 10);

        final int iyear = Integer.parseInt(year);
        if(iyear < 1900 || iyear > Calendar.getInstance().get(Calendar.YEAR))
            return false;//1900年的PASS，超过今年的PASS

        //校验月份
        String month = certNo.length() == 15 ? certNo.substring(8, 10) : certNo.substring(10,12);
        final int imonth = Integer.parseInt(month);
        if(imonth <1 || imonth >12){
            return false;
        }

        //校验天数
        String day = certNo.length() ==15 ? certNo.substring(10, 12) : certNo.substring(12, 14);
        final int iday = Integer.parseInt(day);
        if(iday < 1 || iday > 31)
            return false;

        //校验"校验码"
        if(certNo.length() == 15)
            return true;
        return cs[cs.length -1 ] == PARITYBIT[power % 11];
    }

    //校验日期的合法性
    public static boolean isDate(String date){
        String rexp = "^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))";
        Pattern pat = Pattern.compile(rexp);
        Matcher mat = pat.matcher(date);
        boolean dateType = mat.matches();
        return dateType;
    }

    //指定日期+指定天数
    public static String plusDay(int num,String appointDate) throws ParseException{
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date  currdate = format.parse(appointDate);
        System.out.println("指定的日期是：" + currdate);
        Calendar ca = Calendar.getInstance();
        ca.setTime(currdate);
        ca.add(Calendar.DATE, num);
        currdate = ca.getTime();
        String enddate = format.format(currdate);
        System.out.println("增加天数以后的日期：" + enddate);
        return enddate;
    }
    //日期补0，yyyyn年mm月dd日
    public static String fillDateWillZero(String dateStr) {
        int start = dateStr.indexOf("/");
        int end = dateStr.lastIndexOf("/");
        String month = dateStr.substring(start + 1, end);
        if (month.length() == 1) {
            month = "0" + month;
        }
        String day = dateStr.substring(end + 1);
        if (day.length() == 1) {
            day = "0" + day;
        }
        return dateStr.substring(0, start) + "年" + month + "月" + day;
    }


    public static String getTimeStamp() {
        return String.valueOf(new Date().getTime() / 1000);
    }

    /**
     * 获取当前时间字符串 订单号生成前前十位 年月日时
     *
     * @return 当前时间字符串，格式为："yyyyMMddHH"
     * @author liucy
     */
    public static String getTimeYMDH() {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHH");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }

    /*
     * 将时间转换为时间戳
     */
    public static String dateToString(String s) {
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        long ts = 0;
        try {
            date = simpleDateFormat.parse(s);
            ts = date.getTime();
        } catch (ParseException e) {
            log.info("", e);
        }
        res = String.valueOf(ts);
        return res;
    }

    public static String dateTo(String s) throws ParseException {
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = simpleDateFormat.parse(s);
        long ts = date.getTime();
        res = String.valueOf(ts);
        return res;
    }
    // 根据年月日计算年龄,birthTimeString:"1994-11-14"
    public static int getAgeFromBirthTime(String birthTimeString) {
        // 先截取到字符串中的年、月、日
        String strs[] = birthTimeString.trim().split("-");
        int selectYear = Integer.parseInt(strs[0]);
        int selectMonth = Integer.parseInt(strs[1]);
        int selectDay = Integer.parseInt(strs[2]);
        // 得到当前时间的年、月、日
        Calendar cal = Calendar.getInstance();
        int yearNow = cal.get(Calendar.YEAR);
        int monthNow = cal.get(Calendar.MONTH) + 1;
        int dayNow = cal.get(Calendar.DATE);

        // 用当前年月日减去生日年月日
        int yearMinus = yearNow - selectYear;
        int monthMinus = monthNow - selectMonth;
        int dayMinus = dayNow - selectDay;

        int age = yearMinus;// 先大致赋值
        if (yearMinus < 0) {// 选了未来的年份
            age = 0;
        } else if (yearMinus == 0) {// 同年的，要么为1，要么为0
            if (monthMinus < 0) {// 选了未来的月份
                age = 0;
            } else if (monthMinus == 0) {// 同月份的
                if (dayMinus < 0) {// 选了未来的日期
                    age = 0;
                } else if (dayMinus >= 0) {
                    age = 1;
                }
            } else if (monthMinus > 0) {
                age = 1;
            }
        } else if (yearMinus > 0) {
            if (monthMinus < 0) {// 当前月>生日月
            } else if (monthMinus == 0) {// 同月份的，再根据日期计算年龄
                if (dayMinus < 0) {
                } else if (dayMinus >= 0) {
                    age = age + 1;
                }
            } else if (monthMinus > 0) {
                age = age + 1;
            }
        }
        return age-1;
    }

    //日期补0，yyyyn-mm-dd
    public static String newFillDateWillZero(String dateStr) {
        int start = dateStr.indexOf("/");
        int end = dateStr.lastIndexOf("/");
        String month = dateStr.substring(start + 1, end);
        if (month.length() == 1) {
            month = "0" + month;
        }
        String day = dateStr.substring(end + 1);
        if (day.length() == 1) {
            day = "0" + day;
        }
        return dateStr.substring(0, start) + "-" + month + "-" + day;
    }

    /**
     * yyyyMMdd转yyyy-MM-dd
     * @return
     */
    public static String dateToYYYYMMDD(String str) {
        try {
            Date format1 = new SimpleDateFormat("yyyyMMdd").parse(str);
            String longDate = new SimpleDateFormat("yyyy-MM-dd").format(format1);
            return longDate;
        } catch (ParseException e) {
            throw new BusinessException("日期转换异常");
        }
    }

    /**
     * HHSSMM转HH:SS:MM
     * @return
     */
    public static String dateToHHSSMM(String str) {
        try {
            Date format1 = new SimpleDateFormat("HHSSMM").parse(str);
            String longDate = new SimpleDateFormat("HH:SS:MM").format(format1);
            return longDate;
        } catch (ParseException e) {
            throw new BusinessException("日期转换异常");
        }
    }
    /**
     * yyyy-MM-dd转yyyyMMdd
     */
    public static String dateToyyyyMMdd(String str) {
        try {
            Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(str);
            String shortDate = new SimpleDateFormat("yyyyMMdd").format(format2);
            return shortDate;
        } catch (ParseException e) {
            throw new BusinessException("日期转换异常");
        }
    }

    //日期补0，yyyyn年mm月dd日
    public static String addDateWillZero(String dateStr) {
        int start = dateStr.indexOf("-");
        int end = dateStr.lastIndexOf("-");
        String month = dateStr.substring(start + 1, end);
        if (month.length() == 1) {
            month = "0" + month;
        }
        String day = dateStr.substring(end + 1);
        if (day.length() == 1) {
            day = "0" + day;
        }
        return dateStr.substring(0, start) + "年" + month + "月" + day;
    }

    /**

     * 获取当月的 天数

     */

    public static int getCurrentMonthDay() {

        Calendar a = Calendar.getInstance();

        a.set(Calendar.DATE, 1);

        a.roll(Calendar.DATE, -1);

        int maxDate = a.get(Calendar.DATE);

        return maxDate;

    }

    /**

     * 根据年 月 获取对应的月份 天数

     */

    public static int getDaysByYearMonth(int year, int month) {

        Calendar a = Calendar.getInstance();

        a.set(Calendar.YEAR, year);

        a.set(Calendar.MONTH, month - 1);

        a.set(Calendar.DATE, 1);

        a.roll(Calendar.DATE, -1);

        int maxDate = a.get(Calendar.DATE);

        return maxDate;

    }


    /**
     *  计算距离生日还有多少天
     * @param addtime：生日日期yyyy-MM-dd
     */
    public static int getBirthDay(String addtime) {
        int days = 0;
        try {
            SimpleDateFormat myFormatter = new SimpleDateFormat("yyyy-MM-dd");
            String clidate = addtime;
            Calendar cToday = Calendar.getInstance(); // 存今天
            Calendar cBirth = Calendar.getInstance(); // 存生日
            cBirth.setTime(myFormatter.parse(clidate)); // 设置生日
            cBirth.set(Calendar.YEAR, cToday.get(Calendar.YEAR)); // 修改为本年
            if (cBirth.get(Calendar.DAY_OF_YEAR) < cToday.get(Calendar.DAY_OF_YEAR)) {
                // 生日已经过了，要算明年的了
                days = cToday.getActualMaximum(Calendar.DAY_OF_YEAR) - cToday.get(Calendar.DAY_OF_YEAR);
                days += cBirth.get(Calendar.DAY_OF_YEAR);
            } else {
                // 生日还没过
                days = cBirth.get(Calendar.DAY_OF_YEAR) - cToday.get(Calendar.DAY_OF_YEAR);
            }
        } catch (ParseException e) {
            log.error("异常信息:",e);
        }
        return days;
    }


    /**
     *  yyyy-MM-dd 转换为年月日，先用parse转成date型，再用format转成string。
     * @param str
     * @return
     */
    public static String toYMD(String str) {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(str);
            String now = new SimpleDateFormat("yyyy年MM月dd日").format(date);
            return now;
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    public static String toMD(String str) {
        Date date = null;
        try {
            date = new SimpleDateFormat("yyyy-MM-dd").parse(str);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        String now = new SimpleDateFormat("M月d日").format(date);
        return now;
    }
    /*
     * 将时分秒转换为毫秒
     */
    public static long timeToMillisecond(String s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date;
        long ts = 0;
        try {
            date = simpleDateFormat.parse(s);
            ts = date.getTime() ;
        } catch (ParseException e) {
            log.info("", e);
        }
        return ts;
    }

    /**
     * 获取当前时间字符串 年月
     *
     * @return 当前时间字符串，格式为："yyyyMMddHH"
     * @author liucy
     */
    public static String getTimeYM() {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMM");
        Date today = new Date();
        String todayStr = df.format(today);
        return todayStr;
    }

    /**
     * 日期增加 对应年数
     * @param date
     * @param year
     * @return
     */
    public static String addYear(String date,long year){
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate localDate = LocalDate.parse(date,dateTimeFormatter);
        return dateTimeFormatter.format(localDate.plusYears(year));
    }

    public static String calculateDays(String Day){
        Date d = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String currdate = format.format(d);
        log.info("现在的日期是：" + currdate);
        Calendar ca = Calendar.getInstance();
        try {
            ca.setTime(format.parse(currdate));
        } catch (ParseException e) {
            log.error("异常信息:",e);
        }
        ca.add(Calendar.DATE, Integer.valueOf(Day));// num为增加的天数，可以改变的
        d = ca.getTime();
        String enddate = format.format(d);
        log.info("增加天数以后的日期：" + enddate);
        return enddate;
    }

    /**
     * 获取本周周一的日期
     * @return yyyy-MM-dd
     */
    public static String getMondayOfThisWeek() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek + 1);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println("本周第一天="+sdf.format(c.getTime()));
        return sdf.format(c.getTime());
    }

    /**
     *得到本周周日日期
     * @return yyyy-MM-dd
     */
    public static String getSundayOfThisWeek() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek + 7);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println(sdf.format(c.getTime()));
        return sdf.format(c.getTime());
    }
    /**
     * 获取上周周一的日期
     * @return yyyy-MM-dd
     */
    public static String getMondayOfLastWeek() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek + 1 - 7);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(c.getTime());
    }

    /**
     *得到上周周日日期
     * @return yyyy-MM-dd
     */
    public static String getSundayOfLastWeek() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(c.getTime());
    }


    /**
     * 获取上周周一的日期
     * @return yyyy-MM-dd
     */
    public static String getMondayOfLast2Week() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek + 1 - 14);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(c.getTime());
    }

    /**
     *得到上周周日日期
     * @return yyyy-MM-dd
     */
    public static String getSundayOfLast2Week() {
        Calendar c = Calendar.getInstance();
        int dayofweek = c.get(Calendar.DAY_OF_WEEK) - 1;
        if (dayofweek == 0){
            dayofweek = 7;
        }
        c.add(Calendar.DATE, -dayofweek-7);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(c.getTime());
    }

    /**
     * 当前时间增加半小时
     * @return
     */
    public static String timeAdd (){
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");

        Date now = new Date();
        long time = 30*60*1000;//30分钟

        Date afterDate = new Date(now .getTime() + time);//30分钟后的时间
        String format = sdf.format(afterDate);
//		Date beforeDate = new Date(now .getTime() - time);//30分钟前的时间

        return format;
    }

    public static boolean compareTime(String time){
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        try {
            Date sd1=sdf.parse(getCurrentTime());
            Date sd2=sdf.parse(time);
            return sd1.after(sd2);
        }catch (Exception e){
            log.info("\n-------时间比较出错-------\n");
            return false;
        }
    }



    /**
     * 判断时间节点是否大于当前时间
     * @param time
     * @return
     */
    public static boolean timeCompare(String time){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalTime localTime=LocalTime.parse(time,dtf);
        return LocalTime.now() .isAfter(localTime);
    }

    /**
     * 出生日期格式统一
     */

    public static String birthDate(String date){
        if (StringUtils.isEmpty(date)){
            return date;
        }
        String replace = date.replace("/", "-");
        String replace1 = replace.replace(",", "-");
        String replace2 = replace1.replace(".", "-");
        String replace3 = replace2.replace("，", "-");
        if (!replace3.contains("-")){
            return DateTimeUtil.dateToYYYYMMDD(replace3);
        }
        return replace3;
    }

    /**
     * 当前时间+ 几秒
     * @param seconds
     * @return
     */
    public static String timePastTenSecond(int seconds) {
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date today = new Date();
            String todayStr = df.format(today);
            Date dt = df.parse(todayStr);
            Calendar newTime = Calendar.getInstance();
            newTime.setTime(dt);
            newTime.add(Calendar.SECOND, seconds);//日期加几秒秒
            Date dt1 = newTime.getTime();
            String retval = df.format(dt1);
            return dateToStampNo(retval);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    public static long getCurToEndSecond() {
        long start = System.currentTimeMillis()/1000;
        String currentDate = getCurrentDate();
        String endDate = currentDate + " " + "23:59:59";

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = sdf.parse(endDate);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        long end = date.getTime()/1000;
        return end - start;
    }
}
