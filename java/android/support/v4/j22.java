package android.support.v4;

import android.content.ClipboardManager;
import android.content.Context;
import com.wsw.cospa.CartoonApplication;
import java.text.DecimalFormat;
import java.util.UUID;

/* loaded from: classes2.dex */
public class j22 {

    /* renamed from: do, reason: not valid java name */
    private static final String f2960do = "StringUtil";

    /* renamed from: case, reason: not valid java name */
    public static String m3707case() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3708do(String str, Context context) {
        ((ClipboardManager) context.getSystemService("clipboard")).setText(str.trim());
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3709for(long j) {
        Context contextM24690do = CartoonApplication.m24690do();
        if (contextM24690do == null) {
            tv0.m8137if(f2960do, "getPrintPeopleNumber context == null");
            return "";
        }
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        if (contextM24690do.getResources().getConfiguration().locale.getCountry().equals("CN")) {
            if (j < 10000) {
                return String.valueOf(j);
            }
            if (j < 100000000) {
                return decimalFormat.format(j / 10000.0f) + "万";
            }
            return decimalFormat.format(j / 1.0E8f) + "亿";
        }
        if (j < 1000) {
            return String.valueOf(j);
        }
        if (j < 1000000) {
            return decimalFormat.format(j / 1000.0f) + "K";
        }
        return decimalFormat.format(j / 1000000.0f) + "M";
    }

    /* renamed from: if, reason: not valid java name */
    public static String m3710if(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m3711new(String str) {
        try {
            return m3709for(Long.parseLong(str));
        } catch (Exception e) {
            tv0.m8137if(f2960do, "getPrintPeopleNumber error " + e.getMessage());
            return "";
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m3712try(long j) {
        if (j < 1024) {
            return String.valueOf(j) + "B";
        }
        long j2 = j / 1024;
        if (j2 < 1024) {
            return String.valueOf(j2) + "KB";
        }
        long j3 = j2 / 1024;
        if (j3 < 1024) {
            long j4 = j3 * 100;
            return String.valueOf(j4 / 100) + "." + String.valueOf(j4 % 100) + "MB";
        }
        long j5 = (j3 * 100) / 1024;
        return String.valueOf(j5 / 100) + "." + String.valueOf(j5 % 100) + "GB";
    }
}
