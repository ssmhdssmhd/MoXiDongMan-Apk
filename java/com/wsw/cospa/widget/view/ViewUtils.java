package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import com.gyf.immersionbar.Cnew;

/* loaded from: classes2.dex */
public class ViewUtils {
    public static float calculateScale(Matrix matrix) {
        matrix.getValues(new float[9]);
        return (float) Math.sqrt(((float) Math.pow(r0[0], 2.0d)) + ((float) Math.pow(r0[3], 2.0d)));
    }

    public static float dpToPixel(float f, Context context) {
        return f * context.getResources().getDisplayMetrics().density;
    }

    public static int getNavigationBarHeight(Context context) {
        int iCeil = (int) Math.ceil(context.getResources().getDisplayMetrics().density * 48.0f);
        int identifier = context.getResources().getIdentifier(Cnew.f18146new, "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : iCeil;
    }

    public static int getStatusBarHeight(Context context) {
        int iCeil = (int) Math.ceil(context.getResources().getDisplayMetrics().density * 25.0f);
        int identifier = context.getResources().getIdentifier(Cnew.f18143for, "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : iCeil;
    }

    public static int getViewHeight(View view) {
        return (view.getHeight() - view.getPaddingTop()) - view.getPaddingBottom();
    }

    public static int getViewWidth(View view) {
        return (view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight();
    }

    public static void postOnAnimation(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }
}
