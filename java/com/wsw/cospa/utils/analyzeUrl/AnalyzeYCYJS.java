package com.wsw.cospa.utils.analyzeUrl;

import android.os.Handler;
import android.os.Looper;
import android.support.v4.on0;
import android.support.v4.qy0;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.script.SimpleBindings;
import org.mozilla.javascript.ConsString;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.NativeStringIterator;

/* loaded from: classes2.dex */
public class AnalyzeYCYJS {
    public static String MD5(byte[] bArr) throws NoSuchAlgorithmException {
        return fromBytes(MD5ToBytes(bArr), "hex");
    }

    public static byte[] MD5ToBytes(byte[] bArr) throws NoSuchAlgorithmException {
        return encryptToBytes("MD5", bArr);
    }

    public static String SHA(byte[] bArr) throws NoSuchAlgorithmException {
        return fromBytes(SHAToBytes(bArr), "hex");
    }

    public static byte[] SHAToBytes(byte[] bArr) throws NoSuchAlgorithmException {
        return encryptToBytes(qy0.f5539case, bArr);
    }

    public static String atob(byte[] bArr) {
        return fromBytes(atobToBytes(bArr));
    }

    public static byte[] atobToBytes(byte[] bArr) {
        return Base64.decode(bArr, 2);
    }

    public static String btoa(byte[] bArr) {
        return fromBytes(btoaToBytes(bArr));
    }

    public static byte[] btoaToBytes(byte[] bArr) {
        return Base64.encode(bArr, 2);
    }

    public static String decrypt(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        return fromBytes(decryptToBytes(str, bArr, bArr2, bArr3));
    }

    public static byte[] decryptToBytes(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr == null) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str.substring(0, str.indexOf(on0.f4694final)));
        Cipher cipher = Cipher.getInstance(str);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr);
    }

    public static String encrypt(String str, byte[] bArr) throws NoSuchAlgorithmException {
        return fromBytes(encryptToBytes(str, bArr), "hex");
    }

    public static byte[] encryptToBytes(String str, byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(str).digest(bArr);
    }

    public static String fromBytes(byte[] bArr, String str) {
        if (bArr.length == 0) {
            return "";
        }
        if (str == null || str.isEmpty() || str.startsWith("utf-8") || str.startsWith("UTF-8") || str.startsWith("utf8") || str.startsWith("UTF8")) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
        if ("hex".equalsIgnoreCase(str)) {
            StringBuilder sb = new StringBuilder();
            for (byte b : bArr) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        }
        if ("base64".equalsIgnoreCase(str)) {
            return new String(Base64.encode(bArr, 2), StandardCharsets.UTF_8);
        }
        if (!str.startsWith("gb") && !str.startsWith("GB")) {
            return new String(bArr, StandardCharsets.UTF_8);
        }
        try {
            return new String(bArr, "GBK");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String help(String str) throws SecurityException {
        StringBuilder sb = new StringBuilder();
        sb.append("\n - 开始自检测试\n");
        sb.append("\n - 列出所有符合的方法\n");
        for (Method method : AnalyzeYCYJS.class.getMethods()) {
            if (str != null && method.toString().contains(str)) {
                sb.append("\n - ");
                sb.append(method.toString());
                sb.append("\n\n");
            }
        }
        return sb.toString();
    }

    public static byte[] toBytes(Object obj, String str, int i) throws UnsupportedEncodingException {
        byte[] bytes = new byte[i];
        if (obj == null) {
            return bytes;
        }
        int i2 = 0;
        if (!(obj instanceof String) && !(obj instanceof NativeStringIterator) && !(obj instanceof ConsString)) {
            if (!(obj instanceof NativeArray)) {
                return (byte[]) obj;
            }
            NativeArray nativeArray = (NativeArray) obj;
            byte[] bArr = new byte[nativeArray.size()];
            while (i2 < nativeArray.size()) {
                bArr[i2] = ((Double) nativeArray.get(i2)).byteValue();
                i2++;
            }
            return bArr;
        }
        String strValueOf = String.valueOf(obj);
        if (str == null || str.isEmpty() || str.startsWith("utf-8") || str.startsWith("UTF-8") || str.startsWith("utf8") || str.startsWith("UTF8")) {
            bytes = strValueOf.getBytes(StandardCharsets.UTF_8);
        } else if ("hex".equalsIgnoreCase(str)) {
            int length = strValueOf.length();
            bytes = new byte[length / 2];
            while (i2 < length) {
                bytes[i2 / 2] = (byte) ((Character.digit(strValueOf.charAt(i2), 16) << 4) + Character.digit(strValueOf.charAt(i2 + 1), 16));
                i2 += 2;
            }
        } else if (str.equals("base64")) {
            bytes = Base64.decode(strValueOf, 2);
        } else if (str.startsWith("gb") || str.startsWith("GB")) {
            try {
                bytes = strValueOf.getBytes("GBK");
            } catch (UnsupportedEncodingException e) {
                toast(e);
                e.printStackTrace();
            }
        } else {
            bytes = strValueOf.getBytes(StandardCharsets.UTF_8);
        }
        return bytes;
    }

    public static String toast(Object obj) {
        if (obj == null) {
            return "";
        }
        final String string = obj.toString();
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.p1
            @Override // java.lang.Runnable
            public final void run() {
                v72.m8769if(string);
            }
        });
        return string;
    }

    public void setBindings(SimpleBindings simpleBindings) {
        simpleBindings.put("_", (Object) this);
        simpleBindings.put("ycy", (Object) this);
    }

    public static String decrypt(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        return fromBytes(decryptToBytes(str, bArr, bArr2));
    }

    public static String encrypt(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        return fromBytes(encryptToBytes(str, bArr, bArr2), "base64");
    }

    public static byte[] encryptToBytes(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr == null) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str.substring(0, str.indexOf(on0.f4694final)));
        Cipher cipher = Cipher.getInstance(str);
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(bArr);
    }

    public static String encrypt(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        return fromBytes(encryptToBytes(str, bArr, bArr2, bArr3), "base64");
    }

    public static byte[] decryptToBytes(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr == null) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str.substring(0, str.indexOf(on0.f4694final)));
        Cipher cipher = Cipher.getInstance(str);
        if (bArr3 == null) {
            cipher.init(2, secretKeySpec);
        } else {
            cipher.init(2, secretKeySpec, new IvParameterSpec(toBytes(bArr3)));
        }
        return cipher.doFinal(bArr);
    }

    public static byte[] encryptToBytes(String str, byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr == null) {
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str.substring(0, str.indexOf(on0.f4694final)));
        Cipher cipher = Cipher.getInstance(str);
        if (bArr3 == null) {
            cipher.init(1, secretKeySpec);
        } else {
            cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
        }
        return cipher.doFinal(bArr);
    }

    public static String help() {
        return help("");
    }

    public static String fromBytes(byte[] bArr) {
        return fromBytes(bArr, null);
    }

    public static byte[] toBytes(Object obj, String str) {
        return toBytes(obj, str, 16);
    }

    public static byte[] toBytes(Object obj) {
        return toBytes(obj, null);
    }
}
