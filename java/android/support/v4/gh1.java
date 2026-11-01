package android.support.v4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.qmuiteam.qmui.QMUILog;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"PrivateApi"})
/* loaded from: classes2.dex */
public class gh1 {

    /* renamed from: break, reason: not valid java name */
    private static String f2128break = null;

    /* renamed from: case, reason: not valid java name */
    private static final String f2129case = "zuk z1";

    /* renamed from: do, reason: not valid java name */
    private static final String f2133do = "QMUIDeviceHelper";

    /* renamed from: else, reason: not valid java name */
    private static final String f2134else = "essential";

    /* renamed from: for, reason: not valid java name */
    private static final String f2135for = "ro.build.display.id";

    /* renamed from: if, reason: not valid java name */
    private static final String f2137if = "ro.miui.ui.version.name";

    /* renamed from: new, reason: not valid java name */
    private static final String f2138new = "flyme";

    /* renamed from: this, reason: not valid java name */
    private static String f2139this = null;

    /* renamed from: try, reason: not valid java name */
    private static final String f2140try = "zte c2016";

    /* renamed from: goto, reason: not valid java name */
    private static final String[] f2136goto = {"m9", "M9", "mx", "MX"};

    /* renamed from: catch, reason: not valid java name */
    private static boolean f2130catch = false;

    /* renamed from: class, reason: not valid java name */
    private static boolean f2131class = false;

    /* renamed from: const, reason: not valid java name */
    private static final String f2132const = Build.BRAND.toLowerCase();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.Closeable] */
    static {
        FileInputStream fileInputStream;
        Exception e;
        Properties properties = new Properties();
        ?? r4 = 26;
        if (Build.VERSION.SDK_INT < 26) {
            Closeable closeable = null;
            try {
                try {
                    fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
                    try {
                        properties.load(fileInputStream);
                        r4 = fileInputStream;
                    } catch (Exception e2) {
                        e = e2;
                        QMUILog.m23438new(f2133do, e, "read file error", new Object[0]);
                        r4 = fileInputStream;
                        kh1.m4403do(r4);
                        Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
                        f2139this = m2677for(properties, declaredMethod, f2137if);
                        f2128break = m2677for(properties, declaredMethod, f2135for);
                    }
                } catch (Throwable th) {
                    th = th;
                    closeable = r4;
                    kh1.m4403do(closeable);
                    throw th;
                }
            } catch (Exception e3) {
                fileInputStream = null;
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                kh1.m4403do(closeable);
                throw th;
            }
            kh1.m4403do(r4);
        }
        try {
            Method declaredMethod2 = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            f2139this = m2677for(properties, declaredMethod2, f2137if);
            f2128break = m2677for(properties, declaredMethod2, f2135for);
        } catch (Exception e4) {
            QMUILog.m23438new(f2133do, e4, "read SystemProperties error", new Object[0]);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m2669break() {
        return "v5".equals(f2139this);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m2670case() {
        return !TextUtils.isEmpty(f2128break) && f2128break.contains(f2138new);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m2671catch() {
        return "v6".equals(f2139this);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m2672class() {
        return "v7".equals(f2139this);
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m2673const() {
        return "v8".equals(f2139this);
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m2674do(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m2675else() {
        boolean z;
        String strGroup;
        String str = f2128break;
        if (str == null || str.equals("")) {
            z = true;
        } else {
            Matcher matcher = Pattern.compile("(\\d+\\.){2}\\d").matcher(f2128break);
            if (matcher.find() && (strGroup = matcher.group()) != null && !strGroup.equals("")) {
                String[] strArrSplit = strGroup.split("\\.");
                if (strArrSplit.length == 3) {
                    if (Integer.valueOf(strArrSplit[0]).intValue() >= 5) {
                        if (Integer.valueOf(strArrSplit[0]).intValue() <= 5) {
                            if (Integer.valueOf(strArrSplit[1]).intValue() >= 2) {
                                if (Integer.valueOf(strArrSplit[1]).intValue() <= 2) {
                                    if (Integer.valueOf(strArrSplit[2]).intValue() >= 4) {
                                        Integer.valueOf(strArrSplit[2]).intValue();
                                    }
                                }
                            }
                        }
                        z = true;
                    }
                    z = false;
                }
            }
        }
        return m2686super() && z;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m2676final() {
        return "v9".equals(f2139this);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private static String m2677for(Properties properties, Method method, String str) {
        String property = properties.getProperty(str);
        if (property == null) {
            try {
                property = (String) method.invoke(null, str);
            } catch (Exception unused) {
            }
        }
        return property != null ? property.toLowerCase() : property;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m2678goto() {
        String str = f2132const;
        return str.contains("huawei") || str.contains("honor");
    }

    @TargetApi(19)
    /* renamed from: if, reason: not valid java name */
    private static boolean m2679if(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            try {
                Class<?> cls = appOpsManager.getClass();
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getDeclaredMethod("checkOp", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m2680import(Context context) {
        if (f2130catch) {
            return f2131class;
        }
        boolean zM2674do = m2674do(context);
        f2131class = zM2674do;
        f2130catch = true;
        return zM2674do;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m2681native() {
        String str = f2132const;
        return str.contains("vivo") || str.contains("bbk");
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2682new() {
        return f2132const.contains(f2134else);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m2683public() {
        return Build.MANUFACTURER.toLowerCase().equals("xiaomi");
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m2684return() {
        String str = Build.MODEL;
        return str != null && str.toLowerCase().contains(f2140try);
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m2685static() {
        String str = Build.MODEL;
        return str != null && str.toLowerCase().contains(f2129case);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m2686super() {
        return m2690while(f2136goto) || m2670case();
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m2687this() {
        return !TextUtils.isEmpty(f2139this);
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m2688throw() {
        return f2132const.contains("oppo");
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m2689try(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return m2679if(context, 24);
        }
        try {
            return (context.getApplicationInfo().flags & 134217728) == 134217728;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static boolean m2690while(String[] strArr) {
        String str = Build.BOARD;
        if (str == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }
}
