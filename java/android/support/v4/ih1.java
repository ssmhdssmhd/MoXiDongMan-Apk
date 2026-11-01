package android.support.v4;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;
import com.qmuiteam.qmui.util.Cif;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes2.dex */
public class ih1 {

    /* renamed from: case, reason: not valid java name */
    private static final String f2772case = "force_black";

    /* renamed from: else, reason: not valid java name */
    private static final String f2774else = "force_fsg_nav_bar";

    /* renamed from: if, reason: not valid java name */
    private static final String f2776if = "QMUIDisplayHelper";

    /* renamed from: new, reason: not valid java name */
    private static final String f2777new = "navigation_gesture_on";

    /* renamed from: try, reason: not valid java name */
    private static final String f2778try = "display_notch_status";

    /* renamed from: do, reason: not valid java name */
    public static final float f2773do = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: for, reason: not valid java name */
    private static Boolean f2775for = null;

    public static boolean a(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), f2777new, 0) != 0;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m3429abstract(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 1024;
    }

    @TargetApi(17)
    public static boolean b(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), f2772case, 0) == 0;
    }

    /* renamed from: break, reason: not valid java name */
    public static float m3430break(Context context) {
        return context.getResources().getDisplayMetrics().scaledDensity;
    }

    public static boolean c(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "force_fsg_nav_bar", 0) != 0;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m3431case(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m3432catch(Context context) {
        if (!m3435continue(context)) {
            return 0;
        }
        int iM3434const = m3434const(context);
        return iM3434const >= 0 ? iM3434const : m3433class(context)[1] - m3440final(context);
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m3433class(Context context) {
        return m3442for(context);
    }

    /* renamed from: const, reason: not valid java name */
    private static int m3434const(Context context) {
        int identifier = context.getResources().getIdentifier(Cnew.f18146new, "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return -1;
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m3435continue(Context context) {
        return (ViewConfiguration.get(context).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: default, reason: not valid java name */
    public static boolean m3436default(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3437do(Activity activity) {
        Window window = activity.getWindow();
        window.clearFlags(1024);
        window.clearFlags(512);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m3438else(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        Locale locale = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
        return locale.getLanguage() + "-" + locale.getCountry();
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m3439extends(Context context) {
        if (!m3444if()) {
            return false;
        }
        if (gh1.m2681native()) {
            return a(context);
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m3440final(Context context) {
        int i = m3461this(context).heightPixels;
        return (gh1.m2683public() && c(context)) ? i + m3434const(context) : i;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m3441finally(Context context) {
        return ((context instanceof Activity) && (((Activity) context).getWindow().getAttributes().flags & 1024) == 1024) ? false : true;
    }

    /* renamed from: for, reason: not valid java name */
    private static int[] m3442for(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int[] iArr = new int[2];
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int iIntValue = displayMetrics.widthPixels;
        int iIntValue2 = displayMetrics.heightPixels;
        try {
            iIntValue = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            iIntValue2 = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                Point point = new Point();
                defaultDisplay.getRealSize(point);
                Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                iIntValue = point.x;
                iIntValue2 = point.y;
            } catch (Exception unused2) {
            }
        }
        iArr[0] = iIntValue;
        iArr[1] = iIntValue2;
        return iArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static float m3443goto(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m3444if() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method declaredMethod = Class.forName("android.view.WindowManagerGlobal").getDeclaredMethod("getWindowManagerService", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Method declaredMethod2 = objInvoke.getClass().getDeclaredMethod("hasNavigationBar", new Class[0]);
            declaredMethod2.setAccessible(true);
            return ((Boolean) declaredMethod2.invoke(objInvoke, new Object[0])).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m3445implements(float f) {
        return (int) ((f / f2773do) + 0.5f);
    }

    /* renamed from: import, reason: not valid java name */
    private static int m3446import(Context context, boolean z) {
        int i = m3433class(context)[1];
        return (z || !(context.getResources().getConfiguration().orientation == 1) || !gh1.m2682new() || Build.VERSION.SDK_INT >= 26) ? i : i - (Cif.m23667else(context) * 2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m3447instanceof(Activity activity) {
        Window window = activity.getWindow();
        window.addFlags(512);
        window.addFlags(1024);
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m3448interface(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        return (Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale).getCountry().equalsIgnoreCase("CN");
    }

    /* renamed from: native, reason: not valid java name */
    public static int m3449native(View view) {
        return m3446import(view.getContext(), ph1.m6063private(view));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3450new(Context context, int i) {
        double dM3443goto = m3443goto(context) * i;
        Double.isNaN(dM3443goto);
        return (int) (dM3443goto + 0.5d);
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m3451package(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), f2778try, 0) == 0;
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m3452private() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m3453protected(Context context, int i) {
        double dM3443goto = i / m3443goto(context);
        Double.isNaN(dM3443goto);
        return (int) (dM3443goto + 0.5d);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m3454public(Activity activity) {
        return m3455return(activity, ph1.m6062package(activity));
    }

    /* renamed from: return, reason: not valid java name */
    public static int m3455return(Context context, boolean z) {
        int i = m3433class(context)[0];
        boolean z2 = context.getResources().getConfiguration().orientation == 2;
        return !z ? (z2 && gh1.m2682new() && Build.VERSION.SDK_INT < 26) ? i - (Cif.m23667else(context) * 2) : i : (z2 && gh1.m2678goto() && !m3451package(context)) ? i - ph1.m6056goto(context)[1] : i;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m3456static(View view) {
        return m3455return(view.getContext(), ph1.m6063private(view));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m3457strictfp(Context context, String str) {
        return context.getPackageManager().getPackageInfo(str, 0) != null;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m3458super(Context context) {
        return m3461this(context).widthPixels;
    }

    /* renamed from: switch, reason: not valid java name */
    public static final boolean m3459switch(Context context) {
        if (f2775for == null) {
            PackageManager packageManager = context.getPackageManager();
            f2775for = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.camera.front") || packageManager.hasSystemFeature("android.hardware.camera"));
        }
        return f2775for.booleanValue();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m3460synchronized(Context context, int i) {
        double dM3430break = m3430break(context) * i;
        Double.isNaN(dM3430break);
        return (int) (dM3430break + 0.5d);
    }

    /* renamed from: this, reason: not valid java name */
    public static DisplayMetrics m3461this(Context context) {
        return context.getResources().getDisplayMetrics();
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m3462throw(Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException {
        if (gh1.m2683public()) {
            int identifier = context.getResources().getIdentifier(Cnew.f18143for, "dimen", "android");
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
            return 0;
        }
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            int i = Integer.parseInt(cls.getField(Cnew.f18143for).get(cls.newInstance()).toString());
            if (i > 0) {
                return context.getResources().getDimensionPixelSize(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m3463throws(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 11) {
            return true;
        }
        if (i >= 14) {
            return ViewConfiguration.get(context).hasPermanentMenuKey();
        }
        return false;
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m3464transient(Context context, int i) {
        double dM3430break = i / m3430break(context);
        Double.isNaN(dM3430break);
        return (int) (dM3430break + 0.5d);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m3465try(int i) {
        return (int) ((i * f2773do) + 0.5f);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m3466volatile() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: while, reason: not valid java name */
    public static int m3467while(Activity activity) {
        return m3446import(activity, ph1.m6062package(activity));
    }
}
