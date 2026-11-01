package android.support.v4;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class jd1 {
    /* renamed from: do, reason: not valid java name */
    public static int m3840do(Context context, float f) {
        return (int) ((f * context.getApplicationContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: for, reason: not valid java name */
    public static float m3841for(Context context) {
        return m3842if(context) / m3843new(context);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3842if(Context context) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3843new(Context context) {
        WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m3844try(Context context, float f) {
        return (int) ((f / context.getApplicationContext().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
