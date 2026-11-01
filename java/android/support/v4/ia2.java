package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class ia2 {

    /* renamed from: do, reason: not valid java name */
    public static final int f2654do = 32;

    /* renamed from: if, reason: not valid java name */
    public static final int f2655if = 8;

    /* renamed from: break, reason: not valid java name */
    public static boolean m3326break(Activity activity) {
        return m3336if("ro.miui.notch", activity) == 1 || m3332else(activity) || m3335goto(activity) || m3339this(activity) || m3329class(activity);
    }

    /* renamed from: case, reason: not valid java name */
    public static float m3327case(Context context) {
        if (context.getApplicationContext().getResources().getIdentifier(Cnew.f18143for, "dimen", "android") > 0) {
            return context.getApplicationContext().getResources().getDimensionPixelSize(r0);
        }
        return 0.0f;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m3328catch(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            int i = Build.VERSION.SDK_INT;
            if (i > 11 && i < 19) {
                activity.getWindow().getDecorView().setSystemUiVisibility(8);
            } else if (i >= 19) {
                activity.getWindow().getDecorView().setSystemUiVisibility(3842);
                activity.getWindow().addFlags(134217728);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m3329class(Activity activity) throws ClassNotFoundException {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("android.view.WindowInsets");
            return cls.getMethod("getDisplayCutout", new Class[0]).invoke(cls, new Object[0]) != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m3330const() throws ClassNotFoundException {
        try {
            Class.forName("miui.os.Build");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static float m3331do(Activity activity) {
        m3328catch(activity);
        int iM3337new = m3337new(activity);
        return m3326break(activity) ? m3333final(activity, iM3337new - m3327case(activity)) : m3333final(activity, iM3337new);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m3332else(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static int m3333final(Context context, float f) {
        float f2 = context.getResources().getDisplayMetrics().density;
        if (f2 <= 0.0f) {
            f2 = 1.0f;
        }
        return (int) ((f / f2) + 0.5f);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3334for(String str) {
        return TextUtils.isEmpty(str) ? "" : str.contains("KLLK") ? str.replace("KLLK", "OPPO") : str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m3335goto(Context context) {
        return context.getPackageManager().hasSystemFeature(m3334for("com.kllk.feature.screen.heteromorphism"));
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3336if(String str, Activity activity) throws ClassNotFoundException {
        if (!m3330const()) {
            return 0;
        }
        try {
            Class<?> clsLoadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
            return ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, new String(str), new Integer(0))).intValue();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return 0;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return 0;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return 0;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3337new(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3338super(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().addFlags(2621440);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m3339this(Context context) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static float m3340try(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = context.getResources().getDisplayMetrics().widthPixels;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        return (f2 / f) + 0.5f;
    }
}
