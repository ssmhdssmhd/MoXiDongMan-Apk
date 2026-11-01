package android.support.v4;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.qmuiteam.qmui.util.Cif;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class ph1 {

    /* renamed from: break, reason: not valid java name */
    private static Boolean f4965break = null;

    /* renamed from: case, reason: not valid java name */
    private static Rect f4966case = null;

    /* renamed from: do, reason: not valid java name */
    private static final String f4967do = "QMUINotchHelper";

    /* renamed from: else, reason: not valid java name */
    private static Rect f4968else = null;

    /* renamed from: for, reason: not valid java name */
    private static final String f4969for = "ro.miui.notch";

    /* renamed from: goto, reason: not valid java name */
    private static Rect f4970goto = null;

    /* renamed from: if, reason: not valid java name */
    private static final int f4971if = 32;

    /* renamed from: new, reason: not valid java name */
    private static Boolean f4972new;

    /* renamed from: this, reason: not valid java name */
    private static int[] f4973this;

    /* renamed from: try, reason: not valid java name */
    private static Rect f4974try;

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m6042abstract(Context context) throws ClassNotFoundException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static int m6043break(Context context) {
        int identifier = context.getResources().getIdentifier("notch_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return -1;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m6044case(Context context) {
        return ih1.m3450new(context, 27);
    }

    @TargetApi(28)
    /* renamed from: catch, reason: not valid java name */
    private static void m6045catch(View view, Rect rect) {
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        if (view == null || (rootWindowInsets = view.getRootWindowInsets()) == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            return;
        }
        rect.set(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
    }

    /* renamed from: class, reason: not valid java name */
    private static Rect m6046class(Context context) {
        Rect rect = new Rect();
        if (gh1.m2681native()) {
            rect.top = m6044case(context);
            rect.bottom = 0;
        } else if (gh1.m2688throw()) {
            rect.top = Cif.m23667else(context);
            rect.bottom = 0;
        } else if (gh1.m2678goto()) {
            rect.top = m6056goto(context)[1];
            rect.bottom = 0;
        } else if (gh1.m2683public()) {
            rect.top = m6051else(context);
            rect.bottom = 0;
        }
        return rect;
    }

    /* renamed from: const, reason: not valid java name */
    private static Rect m6047const(Context context) throws ClassNotFoundException {
        Rect rect = new Rect();
        if (gh1.m2681native()) {
            rect.top = 0;
            rect.bottom = m6044case(context);
        } else if (gh1.m2688throw()) {
            rect.top = 0;
            rect.bottom = Cif.m23667else(context);
        } else if (gh1.m2678goto()) {
            int[] iArrM6056goto = m6056goto(context);
            rect.top = 0;
            rect.bottom = iArrM6056goto[1];
        } else if (gh1.m2683public()) {
            rect.top = 0;
            rect.bottom = m6051else(context);
        }
        return rect;
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m6048continue(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    /* renamed from: default, reason: not valid java name */
    public static int m6049default(View view) {
        if (m6063private(view)) {
            return m6066return(view).top;
        }
        return 0;
    }

    @TargetApi(28)
    /* renamed from: do, reason: not valid java name */
    private static boolean m6050do(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return false;
        }
        f4972new = Boolean.valueOf(rootWindowInsets.getDisplayCutout() != null);
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m6051else(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : ih1.m3462throw(context);
    }

    /* renamed from: extends, reason: not valid java name */
    private static int m6052extends(Context context) {
        Display defaultDisplay;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return 0;
        }
        return defaultDisplay.getRotation();
    }

    /* renamed from: final, reason: not valid java name */
    private static Rect m6053final(Context context) {
        Rect rect = new Rect();
        if (gh1.m2681native()) {
            rect.right = m6044case(context);
            rect.left = 0;
        } else if (gh1.m2688throw()) {
            rect.right = Cif.m23667else(context);
            rect.left = 0;
        } else if (gh1.m2678goto()) {
            if (f4965break.booleanValue()) {
                rect.right = m6056goto(context)[1];
            } else {
                rect.right = 0;
            }
            rect.left = 0;
        } else if (gh1.m2683public()) {
            rect.right = m6051else(context);
            rect.left = 0;
        }
        return rect;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m6054finally(Context context) {
        if (gh1.m2678goto()) {
            return m6042abstract(context);
        }
        if (gh1.m2681native()) {
            return m6068strictfp(context);
        }
        if (gh1.m2688throw()) {
            return m6048continue(context);
        }
        if (gh1.m2683public()) {
            return m6075volatile(context);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    private static void m6055for() {
        f4966case = null;
        f4970goto = null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int[] m6056goto(Context context) throws ClassNotFoundException {
        if (f4973this == null) {
            f4973this = new int[]{0, 0};
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                f4973this = (int[]) clsLoadClass.getMethod("getNotchSize", new Class[0]).invoke(clsLoadClass, new Object[0]);
            } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            }
        }
        return f4973this;
    }

    /* renamed from: if, reason: not valid java name */
    private static void m6057if() {
        f4974try = null;
        f4966case = null;
        f4968else = null;
        f4970goto = null;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m6058import(Activity activity) {
        if (m6062package(activity)) {
            return m6065public(activity).left;
        }
        return 0;
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m6059interface() {
        return Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: native, reason: not valid java name */
    public static int m6060native(View view) {
        if (m6063private(view)) {
            return m6066return(view).left;
        }
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m6061new() {
        f4974try = null;
        f4968else = null;
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m6062package(Activity activity) {
        View decorView;
        if (f4972new == null) {
            if (m6059interface()) {
                Window window = activity.getWindow();
                if (window == null || (decorView = window.getDecorView()) == null || !m6050do(decorView)) {
                    return false;
                }
            } else {
                f4972new = Boolean.valueOf(m6054finally(activity));
            }
        }
        return f4972new.booleanValue();
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m6063private(View view) {
        if (f4972new == null) {
            if (!m6059interface()) {
                f4972new = Boolean.valueOf(m6054finally(view.getContext()));
            } else if (!m6050do(view)) {
                return false;
            }
        }
        return f4972new.booleanValue();
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m6064protected(View view) {
        return (gh1.m2683public() || gh1.m2681native()) && m6063private(view);
    }

    /* renamed from: public, reason: not valid java name */
    private static Rect m6065public(Activity activity) {
        if (!m6059interface()) {
            return m6074try(activity);
        }
        Rect rect = new Rect();
        m6045catch(activity.getWindow().getDecorView(), rect);
        return rect;
    }

    /* renamed from: return, reason: not valid java name */
    private static Rect m6066return(View view) {
        if (!m6059interface()) {
            return m6074try(view.getContext());
        }
        Rect rect = new Rect();
        m6045catch(view, rect);
        return rect;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m6067static(Activity activity) {
        if (m6062package(activity)) {
            return m6065public(activity).right;
        }
        return 0;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m6068strictfp(Context context) throws ClassNotFoundException, SecurityException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            Method[] declaredMethods = clsLoadClass.getDeclaredMethods();
            if (declaredMethods == null) {
                return false;
            }
            for (Method method : declaredMethods) {
                if (method.getName().equalsIgnoreCase("isFeatureSupport")) {
                    return ((Boolean) method.invoke(clsLoadClass, 32)).booleanValue();
                }
            }
            return false;
        } catch (ClassNotFoundException | Exception unused) {
            return false;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static Rect m6069super(Context context) {
        Rect rect = new Rect();
        if (gh1.m2681native()) {
            rect.left = m6044case(context);
            rect.right = 0;
        } else if (gh1.m2688throw()) {
            rect.left = Cif.m23667else(context);
            rect.right = 0;
        } else if (gh1.m2678goto()) {
            if (f4965break.booleanValue()) {
                rect.left = m6056goto(context)[1];
            } else {
                rect.left = 0;
            }
            rect.right = 0;
        } else if (gh1.m2683public()) {
            rect.left = m6051else(context);
            rect.right = 0;
        }
        return rect;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m6070switch(View view) {
        if (m6063private(view)) {
            return m6066return(view).right;
        }
        return 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m6071this(Context context) {
        return ih1.m3450new(context, 100);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m6072throw(Activity activity) {
        if (m6062package(activity)) {
            return m6065public(activity).bottom;
        }
        return 0;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m6073throws(Activity activity) {
        if (m6062package(activity)) {
            return m6065public(activity).top;
        }
        return 0;
    }

    /* renamed from: try, reason: not valid java name */
    private static Rect m6074try(Context context) {
        if (gh1.m2678goto()) {
            boolean zM3451package = ih1.m3451package(context);
            Boolean bool = f4965break;
            if (bool != null && bool.booleanValue() != zM3451package) {
                m6055for();
            }
            f4965break = Boolean.valueOf(zM3451package);
        }
        int iM6052extends = m6052extends(context);
        if (iM6052extends == 1) {
            if (f4966case == null) {
                f4966case = m6069super(context);
            }
            return f4966case;
        }
        if (iM6052extends == 2) {
            if (f4968else == null) {
                f4968else = m6047const(context);
            }
            return f4968else;
        }
        if (iM6052extends == 3) {
            if (f4970goto == null) {
                f4970goto = m6053final(context);
            }
            return f4970goto;
        }
        if (f4974try == null) {
            f4974try = m6046class(context);
        }
        return f4974try;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: volatile, reason: not valid java name */
    public static boolean m6075volatile(Context context) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getInt", String.class, Integer.TYPE);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(null, f4969for, 0)).intValue() == 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m6076while(View view) {
        if (m6063private(view)) {
            return m6066return(view).bottom;
        }
        return 0;
    }
}
