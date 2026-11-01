package android.support.v4;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class pd2 {
    /* renamed from: do, reason: not valid java name */
    public static float m5950do(float f, float f2, float f3) {
        return Math.min(Math.max(f, f3), f2);
    }

    /* renamed from: for, reason: not valid java name */
    public static float m5951for(View view) {
        ((View) view.getParent()).getLocationInWindow(new int[]{0, (int) view.getY()});
        return r0[1];
    }

    /* renamed from: if, reason: not valid java name */
    public static float m5952if(View view) {
        ((View) view.getParent()).getLocationInWindow(new int[]{(int) view.getX(), 0});
        return r0[0];
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5953new(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
