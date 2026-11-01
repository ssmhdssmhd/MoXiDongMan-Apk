package com.wsw.cospa.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.commons.lang3.Cclass;

/* renamed from: com.wsw.cospa.utils.transient, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctransient {

    /* renamed from: com.wsw.cospa.utils.transient$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: for, reason: not valid java name */
        public static final int f22753for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f22754if = 1;

        /* renamed from: new, reason: not valid java name */
        public static final int f22755new = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f22756try = 4;

        public Cdo() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m27132case() throws Throwable {
        String strM27135if = m27135if("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(strM27135if)) {
            return false;
        }
        try {
            return Integer.parseInt(strM27135if) >= 4;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m27133do() {
        if (m27132case()) {
            return 1;
        }
        if (m27136new()) {
            return 2;
        }
        return m27134for() ? 3 : 4;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m27134for() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m27135if(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return line;
            } catch (IOException unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m27136new() {
        String str = Build.DISPLAY;
        if (!TextUtils.isEmpty(str) && str.contains("Flyme")) {
            for (String str2 : str.split(Cclass.f28652do)) {
                if (str2.matches("^[4-9]\\.(\\d+\\.)+\\S*")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m27137try() {
        return m27132case() || m27136new() || m27134for();
    }
}
