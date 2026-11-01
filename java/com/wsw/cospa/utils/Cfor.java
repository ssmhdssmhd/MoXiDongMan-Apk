package com.wsw.cospa.utils;

import android.support.v4.de;
import android.support.v4.pw0;
import android.support.v4.q3;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import com.wsw.cospa.bean.ComicSourceBean;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Security;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.Cdo;

/* renamed from: com.wsw.cospa.utils.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final String f22647do = "AES/CBC/PKCS7Padding";

    /* renamed from: for, reason: not valid java name */
    private static final String f22648for = "1234567890123456";

    /* renamed from: if, reason: not valid java name */
    private static final String f22649if = "12345678901234567890123456789012";

    /* renamed from: new, reason: not valid java name */
    public static Map<String, String> f22650new;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f22650new = linkedHashMap;
        linkedHashMap.put("S001", "F41QW5WFH3E88FFGEE22FBE34WGHF9WF");
        f22650new.put("S002", "P0FWIswsFGnqny5h75TMpS2pcp4Lpc1k");
        f22650new.put("S003", "qHjYXQxJInOb0UdYbPBWTsJdI20jkCOB");
        f22650new.put("S004", "CFteSRlSNwXhAsdTIdEhm87ibJOuh3DQ");
        f22650new.put("S005", "c26zIwWMF20xDq3VExNTLaJdPxDiieKQ");
        f22650new.put("S006", "YUmJ0jsShFlJVeyI3thZrj8HlRWyRcrj");
        f22650new.put("S007", "nrP2wkM6mpqQggW1q7EQ2oD6vjcw3Oiq");
        f22650new.put("S008", "dLSfJq3baOeve33H6dkqFPv0sJUI6auQ");
        f22650new.put("S009", "LH5C4HH2I2Uqk7FyNZzKWRarzhi3jxwq");
        f22650new.put("S010", "CbpvdsaeILv4tlvu4nXGkFFA2oax8gEf");
        f22650new.put("R001", "");
        f22650new.put("R002", "");
        f22650new.put("R003", "");
        f22650new.put("R004", "iZktBxUNG3QZOWRDak0bIaLQpkSLCBAu");
        f22650new.put("R005", "nP1lcVxFBozrkq6zoTvwzjXYiBmcu0Fo");
        f22650new.put("R006", "lp17FfIRIvMdK6PBxrJkHLH1fIRxAKof");
        f22650new.put("H001", "F41QW5WFH3E88FFGEE22FBE34WGHF9WF");
        f22650new.put("H002", "P0FWIswsFGnqny5h75TMpS2pcp4Lpc1k");
        f22650new.put("H003", "clnd8CDIs6oqq3bJG2wI6N55B8HFJyl2");
        f22650new.put("H004", "UFbrrNHE5Sv8HqVFhtssJjR0CCBPZ7DP");
        f22650new.put("H005", "ScoyV09Veuam8YPMFvA9e9pSJzTJLNOm");
        f22650new.put("H006", "t7UNxE8HiRWWOY1Ob9YUSJ4sfQlcU4x8");
        f22650new.put("T001", "F41QW5WFH3E88FFGEE22FBE34WGHF9WF");
        f22650new.put("T002", "P0FWIswsFGnqny5h75TMpS2pcp4Lpc1k");
        f22650new.put("T003", "ZOH0jEUBYu249jvCVCYrrHYEn7VGv0dn");
        f22650new.put("T004", "4zZQwmFX7LvF4fBwRgf3GbXUNnidclCe");
        f22650new.put("T005", "IfAW3JUE2OrVJbzIq0kKbnWbxl60CUZ1");
        f22650new.put("T006", "LbFdkUsBfYqMMEyKl6rpR83zfrUNSAse");
    }

    /* renamed from: case, reason: not valid java name */
    private static SecretKeySpec m26900case(String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[32];
        q3.c(bArr, (byte) 0);
        byte[] bytes = str.getBytes("UTF-8");
        System.arraycopy(bytes, 0, bArr, 0, bytes.length < 32 ? bytes.length : 32);
        return new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: do, reason: not valid java name */
    public static String m26901do(String str, String str2) {
        try {
            return str.startsWith("R001") ? Cinterface.m26955for(str2, Cinterface.m26954else(Cinterface.f22672do, Cinterface.f22674for)) : str.startsWith("R002") ? Cinterface.m26957if(str2, Cinterface.m26954else(Cinterface.f22677new, Cinterface.f22679try)) : str.startsWith("R003") ? Cinterface.m26957if(str2, Cinterface.m26954else(Cinterface.f22668case, Cinterface.f22673else)) : str.startsWith("R004") ? Cinterface.m26957if(str2, Cinterface.m26954else(Cinterface.f22675goto, Cinterface.f22678this)) : str.startsWith("R005") ? Cinterface.m26957if(str2, Cinterface.m26954else(Cinterface.f22667break, Cinterface.f22669catch)) : str.startsWith("R006") ? Cinterface.m26957if(str2, Cinterface.m26954else(Cinterface.f22670class, Cinterface.f22671const)) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized String m26902for(String str, ComicSourceBean comicSourceBean) {
        try {
            if (str.startsWith(":")) {
                String[] strArrSplit = new String[3];
                if (str.indexOf("_") != -1) {
                    strArrSplit = str.split("_");
                }
                Map<String, String> map = f22650new;
                Iterator<String> it = map.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    if (next.equalsIgnoreCase(strArrSplit[1])) {
                        String str2 = map.get(next);
                        if (next.startsWith("R")) {
                            str = m26901do(next, strArrSplit[2]);
                        } else if (next.startsWith("H")) {
                            str = m26904new(strArrSplit[2], pw0.m6232for(new Cgoto().m26907for(de.m1297case(comicSourceBean.getBookSourceUrl())) + str2));
                        } else if (next.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                            str = m26904new(strArrSplit[2], pw0.m6232for(new Cgoto().m26907for(de.m1297case(comicSourceBean.getBookSourceUrl())) + str2 + 636L));
                        } else {
                            str = m26904new(strArrSplit[2], str2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
        return str;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m26903if(String str, String str2) {
        PublicKey publicKeyM26959this = null;
        try {
            if (str.startsWith("R001")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22672do, Cinterface.f22676if);
            } else if (str.startsWith("R002")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22677new, Cinterface.f22676if);
            } else if (str.startsWith("R003")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22668case, Cinterface.f22676if);
            } else if (str.startsWith("R004")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22675goto, Cinterface.f22676if);
            } else if (str.startsWith("R005")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22667break, Cinterface.f22676if);
            } else if (str.startsWith("R006")) {
                publicKeyM26959this = Cinterface.m26959this(Cinterface.f22670class, Cinterface.f22676if);
            }
            return Cinterface.m26958new(str2, publicKeyM26959this);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m26904new(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpecM26900case = m26900case(str2);
            IvParameterSpec ivParameterSpec = new IvParameterSpec("1234567890123456".getBytes());
            byte[] bArrDecode = Base64.decode(str, 0);
            Security.addProvider(new Cdo());
            Cipher cipher = Cipher.getInstance(f22647do);
            cipher.init(2, secretKeySpecM26900case, ivParameterSpec);
            return new String(cipher.doFinal(bArrDecode), "UTF-8");
        } catch (Exception e) {
            System.err.println("Decrypt exception: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m26905try(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        try {
            SecretKeySpec secretKeySpecM26900case = m26900case(str2);
            byte[] bytes = str.getBytes("UTF8");
            IvParameterSpec ivParameterSpec = new IvParameterSpec("1234567890123456".getBytes());
            Security.addProvider(new Cdo());
            Cipher cipher = Cipher.getInstance(f22647do);
            cipher.init(1, secretKeySpecM26900case, ivParameterSpec);
            return Base64.encodeToString(cipher.doFinal(bytes), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
