package android.support.v4;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class po1 {

    /* renamed from: android.support.v4.po1$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: for, reason: not valid java name */
        public static final int f5162for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f5163if = 1;

        /* renamed from: new, reason: not valid java name */
        public static final int f5164new = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f5165try = 4;

        public Cdo() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m6159case() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m6160do() {
        if (m6166this()) {
            return 1;
        }
        if (m6161else()) {
            return 2;
        }
        return m6167try() ? 3 : 4;
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m6161else() {
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

    /* renamed from: for, reason: not valid java name */
    public static int m6162for() throws Throwable {
        String strM6165new = m6165new("ro.miui.ui.version.name");
        if (strM6165new == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strM6165new.substring(1));
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m6163goto() {
        return m6166this() || m6161else() || m6159case();
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6164if() throws Throwable {
        String strM6165new = m6165new("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(strM6165new)) {
            return 0;
        }
        try {
            return Integer.parseInt(strM6165new);
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6165new(String str) throws Throwable {
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

    /* renamed from: this, reason: not valid java name */
    private static boolean m6166this() throws Throwable {
        String strM6165new = m6165new("ro.miui.ui.version.code");
        if (TextUtils.isEmpty(strM6165new)) {
            return false;
        }
        try {
            return Integer.parseInt(strM6165new) >= 4;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m6167try() {
        return Build.VERSION.SDK_INT >= 21;
    }
}
