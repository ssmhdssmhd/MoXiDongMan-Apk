package com.luck.picture.lib.photoview;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;

/* renamed from: com.luck.picture.lib.photoview.do, reason: invalid class name */
/* loaded from: classes2.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final int f18783do = 16;

    /* renamed from: do, reason: not valid java name */
    public static void m23198do(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            m23199if(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    @TargetApi(16)
    /* renamed from: if, reason: not valid java name */
    private static void m23199if(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
