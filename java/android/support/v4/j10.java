package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.PopupWindow;
import com.gyf.immersionbar.Cnew;
import com.wsw.cospa.CartoonApplication;

/* loaded from: classes2.dex */
public class j10 {

    /* renamed from: case, reason: not valid java name */
    private static volatile boolean f2949case = false;

    /* renamed from: do, reason: not valid java name */
    public static final String f2950do = "google";

    /* renamed from: for, reason: not valid java name */
    private static final int f2951for = 1;

    /* renamed from: if, reason: not valid java name */
    private static final int f2952if = 0;

    /* renamed from: new, reason: not valid java name */
    private static volatile Point[] f2953new = new Point[2];

    /* renamed from: try, reason: not valid java name */
    private static volatile boolean f2954try;

    /* renamed from: break, reason: not valid java name */
    public static int m3647break(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return m3663this(context);
        }
        char c = (context != null ? context.getResources().getConfiguration().orientation : CartoonApplication.m24690do().getResources().getConfiguration().orientation) == 1 ? (char) 0 : (char) 1;
        if (f2953new[c] == null) {
            WindowManager windowManager = context != null ? (WindowManager) context.getSystemService("window") : (WindowManager) CartoonApplication.m24690do().getSystemService("window");
            if (windowManager == null) {
                return m3663this(context);
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            f2953new[c] = point;
        }
        return f2953new[c].y;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m3648case(Context context) {
        return !m3651const() ? m3663this(context) : m3647break(context);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m3649catch() {
        Display defaultDisplay = ((WindowManager) CartoonApplication.m24690do().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m3650class() {
        Resources system;
        int identifier;
        if (!Build.BOARD.equals("windows") && (identifier = (system = Resources.getSystem()).getIdentifier(Cnew.f18143for, "dimen", "android")) > 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m3651const() {
        float f;
        float f2;
        if (f2954try) {
            return f2949case;
        }
        f2954try = true;
        f2949case = false;
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        WindowManager windowManager = (WindowManager) CartoonApplication.m24690do().getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int i = point.x;
            int i2 = point.y;
            if (i < i2) {
                f2 = i;
                f = i2;
            } else {
                float f3 = i2;
                f = i;
                f2 = f3;
            }
            if (f / f2 >= 1.97f) {
                f2949case = true;
            }
        }
        return f2949case;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3652do(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m3653else() {
        Display defaultDisplay = ((WindowManager) CartoonApplication.m24690do().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return point.x;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m3654final(Activity activity) {
        if (Build.VERSION.SDK_INT < 17) {
            return (ViewConfiguration.get(activity).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m3655for(Context context) throws ClassNotFoundException {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z = false;
        boolean z2 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z = "0".equals(str) ? true : z2;
            }
            return z;
        } catch (Exception unused) {
            return z2;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m3656goto() {
        Display defaultDisplay = ((WindowManager) CartoonApplication.m24690do().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3657if(View view, boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (z) {
            inputMethodManager.showSoftInput(view, 2);
        } else {
            inputMethodManager.showSoftInput(view, 1);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static float m3658import(Context context, float f) {
        return (f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m3659native(PopupWindow popupWindow, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i < 24) {
            popupWindow.showAsDropDown(view);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (i >= 25) {
            popupWindow.setHeight((m3648case(popupWindow.getContentView().getContext()) - iArr[1]) - view.getHeight());
        }
        popupWindow.showAtLocation(view, 0, 0, iArr[1] + view.getHeight() + m3650class());
    }

    /* renamed from: new, reason: not valid java name */
    public static float m3660new(Context context, float f) {
        return (f * context.getResources().getDisplayMetrics().density) + 0.5f;
    }

    /* renamed from: public, reason: not valid java name */
    public static float m3661public(Context context, float f) {
        return (f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m3662super(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m3663this(Context context) {
        if (context != null) {
            return context.getResources().getDisplayMetrics().heightPixels;
        }
        return 0;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m3664throw(Activity activity) {
        boolean zM8713do = v02.m8711if(activity).m8713do(wq.f, false);
        Window window = activity.getWindow();
        if (zM8713do) {
            window.addFlags(128);
        } else {
            window.clearFlags(128);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m3665try(Context context, String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null) {
                return null;
            }
            return bundle.getString(str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static float m3666while(Context context, float f) {
        return (f / context.getResources().getDisplayMetrics().density) + 0.5f;
    }
}
