package android.support.v4;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class pf {
    private pf() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m5998do(@NonNull Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m5999if(@NonNull Canvas canvas, @Nullable RectF rectF, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(rectF, i) : canvas.saveLayerAlpha(rectF, i, 31);
    }
}
