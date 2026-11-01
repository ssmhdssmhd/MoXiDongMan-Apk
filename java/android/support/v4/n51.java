package android.support.v4;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class n51 {

    /* renamed from: do, reason: not valid java name */
    private static final String f4122do = "ro.miui.ui.version.name";

    /* renamed from: for, reason: not valid java name */
    private static final String f4123for = "ro.build.display.id";

    /* renamed from: if, reason: not valid java name */
    private static final String f4124if = "ro.build.version.emui";

    /* renamed from: break, reason: not valid java name */
    public static boolean m5092break() {
        return m5102if().toLowerCase().contains("flyme");
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m5093case() {
        return !TextUtils.isEmpty(m5105try(f4124if, ""));
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m5094catch() {
        String strM5100for = m5100for();
        if (strM5100for.isEmpty()) {
            return false;
        }
        try {
            return (strM5100for.toLowerCase().contains(com.umeng.analytics.pro.ak.x) ? Integer.valueOf(strM5100for.substring(9, 10)).intValue() : Integer.valueOf(strM5100for.substring(6, 7)).intValue()) >= 4;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m5095class() {
        String strM5100for = m5100for();
        if (strM5100for.isEmpty()) {
            return false;
        }
        try {
            return (strM5100for.toLowerCase().contains(com.umeng.analytics.pro.ak.x) ? Integer.valueOf(strM5100for.substring(9, 10)).intValue() : Integer.valueOf(strM5100for.substring(6, 7)).intValue()) == 5;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m5096const() {
        return !TextUtils.isEmpty(m5105try(f4122do, ""));
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5097do() {
        return m5093case() ? m5105try(f4124if, "") : "";
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m5098else() {
        return m5097do().contains("EmotionUI_3.0");
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m5099final() {
        String strM5103new = m5103new();
        if (strM5103new.isEmpty()) {
            return false;
        }
        try {
            return Integer.valueOf(strM5103new.substring(1)).intValue() >= 6;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m5100for() {
        return m5092break() ? m5105try(f4123for, "") : "";
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m5101goto() {
        String strM5097do = m5097do();
        return "EmotionUI 3".equals(strM5097do) || strM5097do.contains("EmotionUI_3.1");
    }

    /* renamed from: if, reason: not valid java name */
    private static String m5102if() {
        return m5105try(f4123for, "");
    }

    /* renamed from: new, reason: not valid java name */
    public static String m5103new() {
        return m5096const() ? m5105try(f4122do, "") : "";
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m5104this() {
        return m5098else() || m5101goto();
    }

    /* renamed from: try, reason: not valid java name */
    private static String m5105try(String str, String str2) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }
}
