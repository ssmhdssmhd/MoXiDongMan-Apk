package android.support.v4;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes2.dex */
public class dm0 {
    /* renamed from: do, reason: not valid java name */
    public static void m1407do(AppCompatActivity appCompatActivity, int i, int i2, boolean z) {
        m1408for(appCompatActivity, false, false, i, i2, z);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1408for(Activity activity, boolean z, boolean z2, int i, int i2, boolean z3) {
        try {
            Window window = activity.getWindow();
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 19 && i3 < 21) {
                window.setFlags(67108864, 67108864);
                return;
            }
            if (i3 >= 21) {
                if (z && z2) {
                    window.clearFlags(201326592);
                    et0.m2020try(activity, z, z2, i == 0, z3);
                    window.addFlags(Integer.MIN_VALUE);
                } else if (!z && !z2) {
                    window.requestFeature(1);
                    window.clearFlags(201326592);
                    et0.m2020try(activity, z, z2, i == 0, z3);
                    window.addFlags(Integer.MIN_VALUE);
                } else {
                    if (z || !z2) {
                        return;
                    }
                    window.requestFeature(1);
                    window.clearFlags(201326592);
                    et0.m2020try(activity, z, z2, i == 0, z3);
                    window.addFlags(Integer.MIN_VALUE);
                }
                window.setStatusBarColor(i);
                window.setNavigationBarColor(i2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1409if(Activity activity, int i, int i2, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            m1408for(activity, false, false, i, i2, z);
        }
    }
}
