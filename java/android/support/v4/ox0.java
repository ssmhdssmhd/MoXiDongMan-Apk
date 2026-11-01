package android.support.v4;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ox0 extends PathMotion {
    /* renamed from: do, reason: not valid java name */
    private static PointF m5817do(float f, float f2, float f3, float f4) {
        return f2 > f4 ? new PointF(f3, f2) : new PointF(f, f4);
    }

    @Override // android.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(f, f2);
        PointF pointFM5817do = m5817do(f, f2, f3, f4);
        path.quadTo(pointFM5817do.x, pointFM5817do.y, f3, f4);
        return path;
    }
}
