package cn.com.gateway.service.impl;

import cn.com.common.constant.MaxNoTypeEnum;
import cn.com.common.constant.UniqueValidateCodeEnum;
import cn.com.common.constant.ValidateCodetypeEnum;
import cn.com.common.entity.first.FtValidatecode;
import cn.com.common.entity.first.FuUser;
import cn.com.common.exception.BusinessException;
import cn.com.common.model.request.user.UniqueValidateCodeReq;
import cn.com.common.model.request.user.UserDo;
import cn.com.gateway.mapper.FtValidatecodeMapper;
import cn.com.gateway.mapper.FuUserMapper;
import cn.com.gateway.service.IFuUserService;
import cn.com.gateway.service.common.CommonService;
import cn.com.gateway.util.DBCommonSetUtil;
import cn.com.gateway.util.MaxNoUtil;
import cn.com.gateway.util.Sm4Util;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fu_yuqi
 * @since 2024-04-09
 */
@Service
public class FuUserServiceImpl extends ServiceImpl<FuUserMapper, FuUser> implements IFuUserService {

    @Autowired
    FuUserMapper fuUserMapper;

    @Autowired
    private FtValidatecodeMapper ftValidatecodeMapper;

    @Autowired
    private MaxNoUtil maxNoUtil;

    @Autowired
    private CommonService commonService;

    @Override
    public FuUser getUserInfo(String username) {
        return fuUserMapper.findByUsername(username);
    }
    @Override
    public String insertUser(UserDo userDo) {
        FuUser oldUser = fuUserMapper.findByUsername(userDo.getUserName());
        if (!ObjectUtils.isEmpty(oldUser)) {
            throw new BusinessException("该账户已经存在！");
        }
        String roleId = userDo.getRoleId();
        String agentcode = userDo.getAgentcode();
        String province = userDo.getProvince();// 企业所在地（省）
        String city = userDo.getCity();// 企业所在地（市）
        if (StringUtils.isEmpty(city)) {
            throw new BusinessException("请选择企业所在地");
        }

        // copy数据到用户实体类
        FuUser fuUser = new FuUser();
        BeanUtils.copyProperties(userDo, fuUser);
        String identify = null;
        String manageCom = null;
        //再次校验用户唯一性
        String email = userDo.getEmail();
        String mobilePhone = userDo.getMobilePhone();
        String userInfo = "";
        if (!StringUtils.isEmpty(email)) {// 电子邮箱注册
            // 验证是否有该用户
            List<String> userIds = fuUserMapper.findIdByUserInfoAndRoleId(userInfo, email, mobilePhone, roleId);
            if (userIds.size() > 0) {
                throw new BusinessException("注册信息有误，请确认后重试！");
            }
        } else if (!StringUtils.isEmpty(mobilePhone)) {
            // 验证是否有该用户
            List<String> userIds = fuUserMapper.findIdByUserInfoAndRoleId(userInfo, email, mobilePhone, roleId);
            if (userIds.size() > 0) {
                throw new BusinessException("注册信息有误，请确认后重试！");
            }
        }
        String key = "";
        if (StringUtils.isEmpty(fuUser.getEmail()) && !StringUtils.isEmpty(fuUser.getMobilePhone())) {
            key = fuUser.getMobilePhone() + "register";
        } else if (!StringUtils.isEmpty(fuUser.getEmail()) && StringUtils.isEmpty(fuUser.getMobilePhone())) {
            key = fuUser.getEmail() + "register";
        }
        // 新增用户数据存入数据库
        saveFuUserDo(fuUser,userDo.getSecurityCode());
        return "用户新增成功！";
    }

    /**
     * 用户新增
     *
     * @param fuUser
     */
    private void saveFuUserDo(FuUser fuUser,String securityCode) {
        /************************* add by fyq start ***************************/
        UniqueValidateCodeReq uniqueValidateCodeReq = new UniqueValidateCodeReq();
        uniqueValidateCodeReq.setValidateCode(securityCode);
        uniqueValidateCodeReq.setType("01");
        if (!StringUtils.isEmpty(fuUser.getEmail())) {
            uniqueValidateCodeReq.setCodeId(fuUser.getEmail());
        } else if (!StringUtils.isEmpty(fuUser.getMobilePhone())) {
            uniqueValidateCodeReq.setCodeId(fuUser.getMobilePhone());
        } else {
            throw new BusinessException("输入参数有误！");
        }
        uniqueValidateCode(uniqueValidateCodeReq);
        /************************* add by fyq  end  ***************************/
        String password = fuUser.getPassWord();
        if (StringUtils.isEmpty(password)) { // 判断用户新增时是否输入密码
            throw new BusinessException("密码不能为空！");
        }
        // 密码解密
        //password = AESUtils.aesDecrypt(password);
        //调用Sm4公钥解密
        password = Sm4Util.decryptEcbByPublicKey(password);
        // 密码效验
        int i = password.matches(".*\\d+.*") ? 1 : 0;
        int j = password.matches(".*[a-zA-Z]+.*") ? 1 : 0;
        int k = password.matches(".*[~!@#$%^&*()_+|<>,.?/:;'\\[\\]{}\"]+.*") ? 1 : 0;
        int l = password.length();
        if (i + j + k < 2 || l < 6 || l > 18) {
            throw new BusinessException("请输入6-18位数字、字母或常用字符组合！");
        }
        // 加密处理
        //fuUserDo.setPassWord(lisIDEA.encryptString(password));
        //调用Sm4私钥加密
        fuUser.setPassWord(Sm4Util.encryptEcbByPrivateKey(password));
        // 初始化默认参数
        String userID = maxNoUtil.createMaxNo(MaxNoTypeEnum.USERID.name(), "0");
        fuUser.setId(userID);
        fuUser = DBCommonSetUtil.initObjectUniversalFields(fuUser, "insert");
        fuUser.setOperator(fuUser.getOperator());
        fuUser.setOperatorcom(fuUser.getOperatorcom());
        // 判断用户名是否为空,为空将邮箱或手机号作为用户名存储
        if (StringUtils.isEmpty(fuUser.getEmail()) && !StringUtils.isEmpty(fuUser.getMobilePhone())) {
            fuUser.setLoginName(fuUser.getMobilePhone());
        } else if (!StringUtils.isEmpty(fuUser.getEmail()) && StringUtils.isEmpty(fuUser.getMobilePhone())) {
            fuUser.setLoginName(fuUser.getEmail());
        }
        fuUserMapper.insertSelective(fuUser);
    }

    /**
     * 验证码效验
     *
     * @param uniqueValidateCodeReq
     */
    @Override
    public void uniqueValidateCode(UniqueValidateCodeReq uniqueValidateCodeReq) {
        // 标识符
        String type = uniqueValidateCodeReq.getType();
        // 用户输入的验证码
        String validateCode = uniqueValidateCodeReq.getValidateCode();
        if (type.equals(ValidateCodetypeEnum.REGISTRATION.code)) {// 用户注册
            // 注册效验验证码信息
            registerUniqueValidateCode(uniqueValidateCodeReq, validateCode);
        } else if (type.equals(ValidateCodetypeEnum.PASSWORDAT.code)) {// 重置密码效验
            // 重置密码效验验证码信息
            //passwordReplaceUniqueValidateCode(uniqueValidateCodeReq, validateCode);
        } else if (type.equals(ValidateCodetypeEnum.MOBILELOGIN.code)) {// 手机端登录效验
            // 手机端登录验证码信息
            loginUniqueValidateCode(uniqueValidateCodeReq, validateCode);
        } else {
            throw new BusinessException("请求参数缺失，请确认后再试~");
        }
    }

    // 注册效验验证码信息
    private void registerUniqueValidateCode(UniqueValidateCodeReq uniqueValidateCodeReq, String validateCode) {
        // copy数据
        FtValidatecode ftValidatecode = new FtValidatecode();
        BeanUtils.copyProperties(uniqueValidateCodeReq, ftValidatecode);
        // 根据验证码id查询数据库
        String codeId = uniqueValidateCodeReq.getCodeId();
        ftValidatecode = ftValidatecodeMapper.selectByCodeId(codeId);
        if (StringUtils.isEmpty(ftValidatecode)) {
            throw new BusinessException("请先获取验证码哦~");
        }
        // 拼接数据库查询时间参数
        String ftTime = ftValidatecode.getEnddate() + " " + ftValidatecode.getEndtime();
        // 封装相应操作时间参数
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date now = new Date();
        String nowTime = sdf.format(now);
        try {
            Date parse = sdf.parse(ftTime);// 数据库存储时间
            Date parse1 = sdf.parse(nowTime);// 用户验证时间
            int overtime = parse1.compareTo(parse);
            if (overtime == 1) {// 用户验证超时
                // 更改验证码状态
                ftValidatecode.setIsValid(UniqueValidateCodeEnum.INVALID.code);// 无效
                ftValidatecodeMapper.updateByPrimaryKeySelective(ftValidatecode);
                throw new BusinessException("验证码已过期，请重新验证！");
            } else {// 验证验证码是否有效
                if (ftValidatecode.getIsValid().equals(UniqueValidateCodeEnum.VALID.code)) {// 验证码有效
                    // 用户输入的验证码和数据库验证码参数比较
                    if (validateCode.equals(ftValidatecode.getValidateCode())) {// 比较通过
                        // 更改验证码状态
                        ftValidatecode.setIsValid(UniqueValidateCodeEnum.INVALID.code);// 无效
                        FtValidatecode finalFtValidatecodeDo = ftValidatecode;
                        BeanUtils.copyProperties(ftValidatecode, finalFtValidatecodeDo);
                        commonService.saveByNewTransaction(() -> ftValidatecodeMapper.updateByPrimaryKeySelective(finalFtValidatecodeDo));
                    } else {
                        throw new BusinessException("验证码输入错误，请重新输入！");
                    }
                } else {
                    throw new BusinessException("验证码已失效，请重新验证！");
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    // 手机端登录效验验证码信息
    private void loginUniqueValidateCode(UniqueValidateCodeReq uniqueValidateCodeReq, String validateCode) {
        // copy数据
        FtValidatecode ftValidatecode = new FtValidatecode();
        BeanUtils.copyProperties(uniqueValidateCodeReq, ftValidatecode);
        // 根据验证码id查询数据库
        String codeId = uniqueValidateCodeReq.getCodeId();
        ftValidatecode = ftValidatecodeMapper.selectByCodeId(codeId);
        if (StringUtils.isEmpty(ftValidatecode)) {
            throw new BusinessException("请先获取验证码哦~");
        }
        // 拼接数据库查询时间参数
        String ftTime = ftValidatecode.getEnddate() + " " + ftValidatecode.getEndtime();
        // 封装相应操作时间参数
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date now = new Date();
        String nowTime = sdf.format(now);
        try {
            Date parse = sdf.parse(ftTime);// 数据库存储时间
            Date parse1 = sdf.parse(nowTime);// 用户验证时间
            int overtime = parse1.compareTo(parse);
            if (overtime == 1) {// 用户验证超时
                // 更改验证码状态
                ftValidatecode.setIsValid(UniqueValidateCodeEnum.INVALID.code);// 无效
                ftValidatecodeMapper.updateByPrimaryKeySelective(ftValidatecode);
                throw new BusinessException("验证码已过期，请重新验证！");
            } else {// 验证验证码是否有效
                if (ftValidatecode.getIsValid().equals(UniqueValidateCodeEnum.VALID.code)) {// 验证码有效
                    // 用户输入的验证码和数据库验证码参数比较
                    if (Sm4Util.decryptEcbByPublicKey(validateCode).equals(ftValidatecode.getValidateCode())) {// 比较通过
                        // 更改验证码状态
                        ftValidatecode.setIsValid(UniqueValidateCodeEnum.INVALID.code);// 无效
                        FtValidatecode finalFtValidatecodeDo = ftValidatecode;
                        BeanUtils.copyProperties(ftValidatecode, finalFtValidatecodeDo);
                        commonService.saveByNewTransaction(() -> ftValidatecodeMapper.updateByPrimaryKeySelective(finalFtValidatecodeDo));
                    } else {
                        throw new BusinessException("验证码输入错误，请重新输入！");
                    }
                } else {
                    throw new BusinessException("验证码已失效，请重新验证！");
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }


}
