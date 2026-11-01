package android.support.v4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.DrawableRes;

/* loaded from: classes.dex */
public class kp {
    @TargetApi(21)
    /* renamed from: do, reason: not valid java name */
    public static Drawable m4458do(Context context, @DrawableRes int i) {
        return Build.VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i) : context.getDrawable(i);
    }

    @TargetApi(16)
    /* renamed from: if, reason: not valid java name */
    public static void m4459if(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(drawable);
        } else {
            view.setBackground(drawable);
        }
    }
}
