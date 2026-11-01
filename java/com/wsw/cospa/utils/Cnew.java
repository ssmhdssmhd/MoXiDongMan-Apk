package com.wsw.cospa.utils;

import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.wsw.cospa.utils.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final String f22680do = "AES/CBC/PKCS7Padding";

    /* renamed from: for, reason: not valid java name */
    private static final String f22681for = "SHA-256";

    /* renamed from: if, reason: not valid java name */
    private static final String f22682if = "UTF-8";

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f22683new = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    private Cnew() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m26977do(String str, String str2) throws GeneralSecurityException {
        try {
            return new String(m26979if(m26981try(str), f22683new, Base64.decode(str2, 2)), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new GeneralSecurityException(e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m26978for(String str, String str2) throws GeneralSecurityException {
        try {
            return Base64.encodeToString(m26980new(m26981try(str), f22683new, str2.getBytes("UTF-8")), 2);
        } catch (UnsupportedEncodingException e) {
            throw new GeneralSecurityException(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m26979if(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(f22680do);
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        return cipher.doFinal(bArr2);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m26980new(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(f22680do);
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        return cipher.doFinal(bArr2);
    }

    /* renamed from: try, reason: not valid java name */
    private static SecretKeySpec m26981try(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes("UTF-8");
        messageDigest.update(bytes, 0, bytes.length);
        return new SecretKeySpec(messageDigest.digest(), "AES");
    }
}
