package com.google.android.material.transition;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.transition.PathMotion;

/* loaded from: classes.dex */
public final class MaterialArcMotion extends PathMotion {
    /* renamed from: do, reason: not valid java name */
    private static PointF m14657do(float f, float f2, float f3, float f4) {
        return f2 > f4 ? new PointF(f3, f2) : new PointF(f, f4);
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF pointFM14657do = m14657do(f, f2, f3, f4);
        path.quadTo(pointFM14657do.x, pointFM14657do.y, f3, f4);
        return path;
    }
}
