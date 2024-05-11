
package cn.com.gateway.util;

import cn.com.common.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pqc.legacy.math.linearalgebra.ByteUtils;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Arrays;

/**
 * create by fyq 2021-11-29
 *
 * sm4加密、解密与加密结果验证
 * 可逆算法
 *
 */

@Slf4j
public class Sm4Util {

    static {
        Security.addProvider(new BouncyCastleProvider());
    }

    private static final String ENCODING = "UTF-8";
    public static final String ALGORITHM_NAME = "SM4";

    //前台约定密钥
    public static final String PUBLIC_KEY = "69d900afbbe031d694baa054bd0c791b";
    //后台存入数据库时使用的私有密钥
    public static final String PRIVATE_KEY = "a5ac95f5fd7f4c902eb62db7a5afce3c";

    // 加密算法/分组加密模式/分组填充方式
    // PKCS5Padding-以8个字节为一组进行分组加密
    // 定义分组加密模式使用：PKCS5Padding
    public static final String ALGORITHM_NAME_ECB_PADDING = "SM4/ECB/PKCS5Padding";
    // 128-32位16进制；256-64位16进制
    public static final int DEFAULT_KEY_SIZE = 128;

    /**
     * 生成ECB暗号
     * @explain ECB模式（电子密码本模式：Electronic codebook）
     * @param algorithmName 算法名称
     * @param mode 模式
     * @param key
     * @return
     * @throws Exception
     */
    private static Cipher generateEcbCipher(String algorithmName, int mode, byte[] key) {
        Cipher cipher = null;
        try {
            cipher = Cipher.getInstance(algorithmName, BouncyCastleProvider.PROVIDER_NAME);
            Key sm4Key = new SecretKeySpec(key, ALGORITHM_NAME);
            cipher.init(mode, sm4Key);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        return cipher;
    }

    /**
     * 自动生成密钥
     * @return
     * @throws Exception
     */
    private static byte[] generateKey() throws Exception {
        return generateKey(DEFAULT_KEY_SIZE);
    }

    /**
     *
     * @param keySize
     * @return
     * @throws Exception
     */
    public static byte[] generateKey(int keySize) {
        KeyGenerator kg = null;
        try {
            kg = KeyGenerator.getInstance(ALGORITHM_NAME, BouncyCastleProvider.PROVIDER_NAME);
            kg.init(keySize, new SecureRandom());
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        return kg.generateKey().getEncoded();
    }

    /**
     * @explain 加密模式：ECB 前台加密传给后台
     *          密文长度不固定，会随着被加密字符串长度的变化而变化
     * @param paramStr 待加密字符串
     * @return 返回16进制加密字符串
     * @throws Exception
     */
    public static String encryptEcbByPublicKey(String paramStr) {
        String cipherText = "";
        //16进制字符串 --> byte
        byte[] keyData = ByteUtils.fromHexString(PUBLIC_KEY);
        //String --> byte
        byte[] srcData = paramStr.getBytes();
        //加密后的数组
        byte[] cipherArray = new byte[0];
        try {
            cipherArray = encrypt_Ecb_Padding(keyData,srcData);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        //byte --> hexString
        cipherText = ByteUtils.toHexString(cipherArray);
        return cipherText;
    }

    /**
     * @explain 加密模式：ECB 后台加密存入数据库
     *          密文长度不固定，会随着被加密字符串长度的变化而变化
     * @param paramStr 待加密字符串
     * @return 返回16进制加密字符串
     * @throws Exception
     */
    public static String encryptEcbByPrivateKey(String paramStr) {
        String cipherText = "";
        //16进制字符串 --> byte
        byte[] keyData = ByteUtils.fromHexString(PRIVATE_KEY);
        //String --> byte
        byte[] srcData = paramStr.getBytes();
        //加密后的数组
        byte[] cipherArray = new byte[0];
        try {
            cipherArray = encrypt_Ecb_Padding(keyData,srcData);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        //byte --> hexString
        cipherText = ByteUtils.toHexString(cipherArray);
        return cipherText;
    }

    /**
     *  ECB加密
     * @param key
     * @param data
     * @return
     * @throws Exception
     */
    public static byte[] encrypt_Ecb_Padding(byte[] key, byte[] data) {
        Cipher cipher = generateEcbCipher(ALGORITHM_NAME_ECB_PADDING,Cipher.ENCRYPT_MODE,key);
        byte[] bytes = new byte[0];
        try {
            bytes = cipher.doFinal(data);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        return bytes;
    }

    /**
     * smr 解密  模式：ECB解密 前台传到后台解密
     * @param cipherText 16进制的加密字符串，忽略大小写
     * @return 解密后的字符串
     * @throws Exception
     */
    public static String decryptEcbByPublicKey(String cipherText) {
        //用于接收解密后的字符串
        String decryptStr = "";
        //hexString --> byte
        byte[] keyData = ByteUtils.fromHexString(PUBLIC_KEY);
        //hexString --> byte
        byte[] cipherData = ByteUtils.fromHexString(cipherText);
        //解密
        byte[] srcData = new byte[0];
        try {
            srcData = decrypt_Ecb_Padding(keyData, cipherData);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        //byte --> String
        decryptStr = new String(srcData);
        return decryptStr;
    }

    /**
     * smr 解密  模式：ECB解密 后台解密传给前台
     * @param cipherText 16进制的加密字符串，忽略大小写
     * @return 解密后的字符串
     * @throws Exception
     */
    public static String decryptEcbByPrivateKey(String cipherText) {
        //用于接收解密后的字符串
        String decryptStr = "";
        //hexString --> byte
        byte[] keyData = ByteUtils.fromHexString(PRIVATE_KEY);
        //hexString --> byte
        byte[] cipherData = ByteUtils.fromHexString(cipherText);
        //解密
        byte[] srcData = new byte[0];
        try {
            srcData = decrypt_Ecb_Padding(keyData, cipherData);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        //byte --> String
        decryptStr = new String(srcData);
        return decryptStr;
    }

    /**
     * 解密
     * @param key
     * @param cipherText
     * @return
     * @throws Exception
     */
    public static byte[] decrypt_Ecb_Padding(byte[] key, byte[] cipherText) {
        Cipher cipher = generateEcbCipher(ALGORITHM_NAME_ECB_PADDING,Cipher.DECRYPT_MODE,key);
        byte[] bytes = new byte[0];
        try {
            bytes = cipher.doFinal(cipherText);
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException("系统开小差了！请联系管理员！");
        }
        return bytes;
    }

    /**
     * 校验加密前后的字符串是否为同一个
     *
     * @param hexKey 16进制密钥，忽略大小写
     * @param cipherText 16进制加密后的字符串
     * @param paramStr 加密前的字符串
     * @return 是否为统一数据
     * @throws Exception
     */
    public static boolean verifyEcb(String hexKey, String cipherText, String paramStr) throws Exception {
        //用于接收校验结果
        boolean flag = false;
        //hexString --> byte
        byte[] keyData = ByteUtils.fromHexString(hexKey);
        //将16进制字符串转换为数组
        byte[] cipherData = ByteUtils.fromHexString(cipherText);
        //解密
        byte[] decryptData = decrypt_Ecb_Padding(keyData,cipherData);
        //将原字符串转换为byte
        byte[] srcData = paramStr.getBytes(ENCODING);
        //判断两个数组是否一致
        flag = Arrays.equals(decryptData,srcData);
        return flag;
    }

    public static void main(String[] args) {
            /*String json = "{\"name\":\"Marydon\",\"website\":\"http://www.cnblogs.com/Marydon20170307\"}";
            System.out.println(ByteUtils.toHexString(generateKey()));
            // 自定义的32位16进制密钥
            String key = "0123456789abcdeffedcba9876543210";
            String cipher = Sm4Util.encryptEcbByPublicKey(json);
            System.out.println(cipher);
            //05a087dc798bb0b3e80553e6a2e73c4ccc7651035ea056e43bea9d125806bf41c45b4263109c8770c48c5da3c6f32df444f88698c5c9fdb5b0055b8d042e3ac9d4e3f7cc67525139b64952a3508a7619
            System.out.println(Sm4Util.verifyEcb(key, cipher, json));// true
            json = Sm4Util.decryptEcbByPublicKey(cipher);
            System.out.println(json);*/
            String decryptEcbByPrivateKey = decryptEcbByPrivateKey("55e2ce10602e2ad20097bdc345a04a19");
            System.out.println("私钥解密字符串："+decryptEcbByPrivateKey);

            String encryptEcbByPrivateKey = encryptEcbByPrivateKey("a12345");
            System.out.println("私钥加密字符串："+encryptEcbByPrivateKey);

            String encryptEcbByPublicKey = encryptEcbByPublicKey("12345a");
            System.out.println("公钥加密字符串："+encryptEcbByPublicKey);


    }

}
