package com.wsw.cospa.utils;

import android.util.Base64;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.Cdo;

/* renamed from: com.wsw.cospa.utils.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    public static final String f22660do = "1234567890123456";

    static {
        if (Security.getProvider(Cdo.PROVIDER_NAME) == null) {
            Security.addProvider(new Cdo());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26914case(String[] strArr) throws Exception {
        System.out.println("待加密报文:qq245635595");
        System.out.println("密匙:wwwwwwwwwwwwwww1wwwwwwwwwwwwwww1");
        String strM26918new = m26918new("qq245635595", "wwwwwwwwwwwwwww1wwwwwwwwwwwwwww1");
        System.out.println("加密报文:" + strM26918new);
        String strM26917if = m26917if(strM26918new, "wwwwwwwwwwwwwww1wwwwwwwwwwwwwww1");
        System.out.println("解密报文:" + strM26917if);
        System.out.println("加解密前后内容是否相等:" + strM26917if.equals("qq245635595"));
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m26915do(byte[] bArr, String str) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(f22660do.getBytes("UTF-8"));
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(2, secretKeySpec, ivParameterSpec);
        return cipher.doFinal(bArr);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m26916for(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(f22660do.getBytes()));
            return cipher.doFinal(str.getBytes("UTF-8"));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m26917if(String str, String str2) throws Exception {
        try {
            System.out.println("待解密内容:" + str);
            byte[] bArrDecode = Base64.decode(str, 0);
            System.out.println("base64DecodeStr:" + Arrays.toString(bArrDecode));
            byte[] bArrM26915do = m26915do(bArrDecode, str2);
            System.out.println("aesDecode:" + Arrays.toString(bArrM26915do));
            if (bArrM26915do == null) {
                return null;
            }
            String str3 = new String(bArrM26915do, "UTF-8");
            System.out.println("aesDecode result:" + str3);
            return str3;
        } catch (Exception e) {
            System.out.println("Exception:" + e.getMessage());
            throw new Exception("解密异常");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m26918new(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrM26916for = m26916for(str, str2);
        System.out.println("加密后的byte数组:" + Arrays.toString(bArrM26916for));
        String strEncodeToString = Base64.encodeToString(bArrM26916for, 0);
        System.out.println("加密后 base64EncodeStr:" + strEncodeToString);
        return strEncodeToString;
    }

    /* renamed from: try, reason: not valid java name */
    private static SecretKey m26919try(String str) throws Exception {
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", Security.getProvider("SUN"));
        secureRandom.setSeed(str.getBytes());
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        keyGenerator.init(secureRandom);
        return keyGenerator.generateKey();
    }
}
