package com.qmuiteam.qmui;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;

/* renamed from: com.qmuiteam.qmui.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final Interpolator f19014do = new LinearInterpolator();

    /* renamed from: if, reason: not valid java name */
    public static final Interpolator f19016if = new FastOutSlowInInterpolator();

    /* renamed from: for, reason: not valid java name */
    public static final Interpolator f19015for = new FastOutLinearInInterpolator();

    /* renamed from: new, reason: not valid java name */
    public static final Interpolator f19017new = new LinearOutSlowInInterpolator();

    /* renamed from: try, reason: not valid java name */
    public static final Interpolator f19018try = new DecelerateInterpolator();

    /* renamed from: case, reason: not valid java name */
    public static final Interpolator f19013case = new InterpolatorC0183do();

    /* renamed from: com.qmuiteam.qmui.do$do, reason: invalid class name and collision with other inner class name */
    public static class InterpolatorC0183do implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }
}
