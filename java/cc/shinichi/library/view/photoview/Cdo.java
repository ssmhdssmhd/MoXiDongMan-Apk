package cc.shinichi.library.view.photoview;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;

/* renamed from: cc.shinichi.library.view.photoview.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final int f8954do = 16;

    /* renamed from: do, reason: not valid java name */
    public static void m10729do(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            m10730if(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    @TargetApi(16)
    /* renamed from: if, reason: not valid java name */
    private static void m10730if(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
