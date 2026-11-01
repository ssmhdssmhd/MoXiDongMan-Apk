package android.support.v4;

import android.text.TextUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class bb0 {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap<String, String> f400do;

    /* renamed from: if, reason: not valid java name */
    public static final HashMap<String, String> f401if;

    static {
        HashMap<String, String> map = new HashMap<>();
        f400do = map;
        HashMap<String, String> map2 = new HashMap<>();
        f401if = map2;
        map.put("FFD8FF", "jpg");
        map.put("89504E47", "png");
        map.put("47494638", "gif");
        map.put("49492A00", "tif");
        map.put("424D", "bmp");
        map2.put("504B03", "zip");
        map2.put("526172", "rar");
    }

    /* renamed from: do, reason: not valid java name */
    private static String m497do(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String upperCase = Integer.toHexString(b & 255).toUpperCase();
            if (upperCase.length() < 2) {
                sb.append(0);
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m498for(String str) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        strM497do = null;
        String strM497do = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                byte[] bArr = new byte[3];
                fileInputStream.read(bArr, 0, 3);
                strM497do = m497do(bArr);
            } catch (Exception unused) {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return strM497do;
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception unused3) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileInputStream.close();
        } catch (IOException unused4) {
        }
        return strM497do;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m499if(String str) {
        int iLastIndexOf;
        return (str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(46)) <= -1 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m500new(String str) throws Throwable {
        return !TextUtils.isEmpty(f401if.get(m498for(str)));
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m501try(String str) throws Throwable {
        String strM498for = m498for(str);
        System.err.println(" 文件格式 ： " + strM498for);
        return !TextUtils.isEmpty(f400do.get(strM498for));
    }
}
