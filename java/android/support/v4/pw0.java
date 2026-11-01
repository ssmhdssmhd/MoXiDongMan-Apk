package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class pw0 {

    /* renamed from: do, reason: not valid java name */
    private static final String[] f5206do = {"0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", com.umeng.analytics.pro.ak.av, "b", "c", "d", "e", "f"};

    /* renamed from: do, reason: not valid java name */
    public static String m6231do(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(m6233if(b));
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m6232for(String str) {
        return m6234new(str, "utf-8");
    }

    /* renamed from: if, reason: not valid java name */
    public static String m6233if(byte b) {
        int i = b;
        if (b < 0) {
            i = b + 256;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = f5206do;
        sb.append(strArr[i / 16]);
        sb.append(strArr[i % 16]);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6234new(String str, String str2) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            str = (str2 == null || "".equals(str2)) ? m6231do(messageDigest.digest(str.getBytes())) : m6231do(messageDigest.digest(str.getBytes(str2)));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }
}
