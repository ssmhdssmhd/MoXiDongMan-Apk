package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.gyf.immersionbar.Celse;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class r41 {

    /* renamed from: do, reason: not valid java name */
    private static final String f5643do = "android.os.SystemProperties";

    /* renamed from: for, reason: not valid java name */
    private static final String f5644for = "com.huawei.android.util.HwNotchSizeUtil";

    /* renamed from: if, reason: not valid java name */
    private static final String f5645if = "ro.miui.notch";

    /* renamed from: new, reason: not valid java name */
    private static final String f5646new = "android.util.FtFeature";

    /* renamed from: try, reason: not valid java name */
    private static final String f5647try = "com.oppo.feature.screen.heteromorphism";

    /* renamed from: break, reason: not valid java name */
    private static boolean m6750break(Context context) {
        try {
            return context.getPackageManager().hasSystemFeature(f5647try);
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static int m6751case(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m6752catch(Context context) throws ClassNotFoundException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass(f5646new);
            return ((Boolean) clsLoadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(clsLoadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m6753class(Context context) throws ClassNotFoundException {
        int iIntValue;
        if ("Xiaomi".equals(Build.MANUFACTURER)) {
            try {
                Class<?> clsLoadClass = context.getClassLoader().loadClass(f5643do);
                iIntValue = ((Integer) clsLoadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(clsLoadClass, f5645if, 0)).intValue();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        } else {
            iIntValue = 0;
        }
        return iIntValue == 1;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m6754const(Activity activity) {
        return activity != null && (m6753class(activity) || m6762this(activity) || m6750break(activity) || m6752catch(activity) || m6756else(activity));
    }

    /* renamed from: do, reason: not valid java name */
    private static int m6755do(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m6756else(Activity activity) {
        return m6760if(activity) != null;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m6757final(View view) {
        return view != null && (m6753class(view.getContext()) || m6762this(view.getContext()) || m6750break(view.getContext()) || m6752catch(view.getContext()) || m6759goto(view));
    }

    /* renamed from: for, reason: not valid java name */
    private static DisplayCutout m6758for(View view) {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 28 || view == null || (rootWindowInsets = view.getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m6759goto(View view) {
        return m6758for(view) != null;
    }

    /* renamed from: if, reason: not valid java name */
    private static DisplayCutout m6760if(Activity activity) {
        Window window;
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 28 || activity == null || (window = activity.getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    /* renamed from: new, reason: not valid java name */
    private static int[] m6761new(Context context) throws ClassNotFoundException {
        int[] iArr = {0, 0};
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass(f5644for);
            return (int[]) clsLoadClass.getMethod("getNotchSize", new Class[0]).invoke(clsLoadClass, new Object[0]);
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return iArr;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m6762this(Context context) throws ClassNotFoundException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass(f5644for);
            return ((Boolean) clsLoadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(clsLoadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6763try(Activity activity) {
        int iL = Celse.L(activity);
        DisplayCutout displayCutoutM6760if = m6760if(activity);
        if (Build.VERSION.SDK_INT >= 28 && displayCutoutM6760if != null) {
            return activity.getResources().getConfiguration().orientation == 1 ? displayCutoutM6760if.getSafeInsetTop() : displayCutoutM6760if.getSafeInsetLeft() == 0 ? displayCutoutM6760if.getSafeInsetRight() : displayCutoutM6760if.getSafeInsetLeft();
        }
        int iM6751case = m6753class(activity) ? m6751case(activity) : 0;
        if (m6762this(activity)) {
            iM6751case = m6761new(activity)[1];
        }
        if (m6752catch(activity) && (iM6751case = m6755do(activity, 32)) < iL) {
            iM6751case = iL;
        }
        if (!m6750break(activity)) {
            return iM6751case;
        }
        if (80 < iL) {
            return iL;
        }
        return 80;
    }
}
