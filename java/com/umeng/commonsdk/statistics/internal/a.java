package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.support.v4.on0;
import android.text.TextUtils;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class a {
    private static Context a;
    private String b;
    private String c;

    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a, reason: collision with other inner class name */
    public static class C0212a {
        private static final a a = new a();

        private C0212a() {
        }
    }

    public static a a(Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return C0212a.a;
    }

    private void e(String str) {
        try {
            this.b = str.replaceAll("&=", Cclass.f28652do).replaceAll("&&", Cclass.f28652do).replaceAll("==", on0.f4694final) + on0.f4694final + "Android" + on0.f4694final + Build.DISPLAY + on0.f4694final + Build.MODEL + on0.f4694final + Build.VERSION.RELEASE + Cclass.f28652do + HelperUtils.getUmengMD5(UMUtils.getAppkey(a));
        } catch (Throwable th) {
            UMCrashManager.reportCrash(a, th);
        }
    }

    private void f(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            String[] strArrSplit = str2.split("&=");
            StringBuilder sb = new StringBuilder();
            sb.append(ak.aP);
            for (String str3 : strArrSplit) {
                if (!TextUtils.isEmpty(str3)) {
                    String strSubstring = str3.substring(0, 2);
                    if (strSubstring.endsWith("=")) {
                        strSubstring = strSubstring.replace("=", "");
                    }
                    sb.append(strSubstring);
                }
            }
            this.c = sb.toString();
        } catch (Throwable th) {
            UMCrashManager.reportCrash(a, th);
        }
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ak.aH);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ak.aD);
    }

    public void d(String str) {
        String strSubstring = str.substring(0, str.indexOf(95));
        f(strSubstring);
        e(strSubstring);
    }

    private a() {
        this.b = null;
        this.c = null;
    }

    public String b() {
        return this.b;
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ak.av);
    }

    public String a() {
        return this.c;
    }
}
