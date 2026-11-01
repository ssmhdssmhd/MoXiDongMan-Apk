package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import com.gyf.immersionbar.Cnew;

/* loaded from: classes2.dex */
public class is1 {
    /* renamed from: do, reason: not valid java name */
    public static int m3568do(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3569for(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3570if(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels - m3571new(context);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3571new(Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException, NumberFormatException {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField(Cnew.f18143for).get(cls.newInstance()).toString()));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
