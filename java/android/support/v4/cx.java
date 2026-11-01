package android.support.v4;

import java.text.SimpleDateFormat;
import org.apache.commons.lang3.time.Cdo;

/* loaded from: classes2.dex */
public class cx {

    /* renamed from: do, reason: not valid java name */
    private static SimpleDateFormat f883do = new SimpleDateFormat("mm:ss");

    /* renamed from: do, reason: not valid java name */
    public static String m1060do(long j, long j2) {
        long j3 = j2 - j;
        if (j3 > 1000) {
            return (j3 / 1000) + "秒";
        }
        return j3 + "毫秒";
    }

    /* renamed from: for, reason: not valid java name */
    public static String m1061for(long j) {
        if (j > 1000) {
            return m1063new(j);
        }
        long j2 = j / Cdo.f28827if;
        long jRound = Math.round((j % Cdo.f28827if) / 1000.0f);
        String str = "";
        if (j2 < 10) {
            str = "0";
        }
        String str2 = str + j2 + ":";
        if (jRound < 10) {
            str2 = str2 + "0";
        }
        return str2 + jRound;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1062if(long j) {
        try {
            return (int) Math.abs(Long.parseLong(String.valueOf(System.currentTimeMillis()).substring(0, 10)) - j);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1063new(long j) {
        try {
            return f883do.format(Long.valueOf(j));
        } catch (Exception e) {
            e.printStackTrace();
            return "0:00";
        }
    }
}
