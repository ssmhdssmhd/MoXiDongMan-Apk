package android.support.v4;

import android.util.Base64;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.lang3.Cclass;

/* renamed from: android.support.v4.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final String f6669do = "12345678901234567890123456789012";

    /* renamed from: if, reason: not valid java name */
    private static final String f6670if = "1234567890123456";

    /* renamed from: do, reason: not valid java name */
    public static String m8103do(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            str = hexString.length() == 1 ? str + "0" + hexString : str + hexString;
        }
        return str;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m8104for(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("1234567890123456".getBytes("UTF-8"));
            SecretKeySpec secretKeySpec = new SecretKeySpec(f6669do.getBytes("UTF-8"), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return new String(Base64.encode(cipher.doFinal(str.getBytes()), 0));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m8105if(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("1234567890123456".getBytes("UTF-8"));
            SecretKeySpec secretKeySpec = new SecretKeySpec(f6669do.getBytes("UTF-8"), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Base64.decode(str, 0)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m8106new(String str) {
        String upperCase = str.trim().replace(Cclass.f28652do, "").toUpperCase(Locale.US);
        int length = upperCase.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) (Integer.decode("0x" + upperCase.substring(i2, i3) + upperCase.substring(i3, i3 + 1)).intValue() & 255);
        }
        return bArr;
    }
}
