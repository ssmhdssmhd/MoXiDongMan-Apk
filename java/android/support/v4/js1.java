package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class js1 {

    /* renamed from: do, reason: not valid java name */
    private static boolean f3214do;

    /* renamed from: if, reason: not valid java name */
    private static DisplayMetrics f3215if;

    /* renamed from: case, reason: not valid java name */
    public static void m4100case(Activity activity) {
        activity.getWindow().setFlags(128, 128);
    }

    /* renamed from: do, reason: not valid java name */
    public static float m4101do(Context context) {
        return m4103for(context).density;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m4102else(Activity activity) {
        Window window = activity.getWindow();
        if (f3214do) {
            window.clearFlags(1024);
            f3214do = false;
        } else {
            window.setFlags(1024, 1024);
            f3214do = true;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static DisplayMetrics m4103for(Context context) {
        DisplayMetrics displayMetrics = f3215if;
        if (displayMetrics != null) {
            return displayMetrics;
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics2);
        uv0.m8680public("screen width=" + displayMetrics2.widthPixels + "px, screen height=" + displayMetrics2.heightPixels + "px, densityDpi=" + displayMetrics2.densityDpi + ", density=" + displayMetrics2.density);
        return displayMetrics2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m4104goto(Context context) {
        return m4103for(context).widthPixels;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m4105if(Context context) {
        return m4103for(context).densityDpi;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m4106new(Context context) {
        return m4103for(context).heightPixels;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m4107try() {
        return f3214do;
    }
}
