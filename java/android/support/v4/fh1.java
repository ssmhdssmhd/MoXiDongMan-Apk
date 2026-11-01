package android.support.v4;

import android.graphics.Color;
import androidx.annotation.ColorInt;

/* loaded from: classes2.dex */
public class fh1 {
    /* renamed from: do, reason: not valid java name */
    public static String m2282do(@ColorInt int i) {
        return String.format("#%08X", Integer.valueOf(i));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2283for(@ColorInt int i, float f) {
        return m2285new(i, f, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m2284if(@ColorInt int i, @ColorInt int i2, float f) {
        float fMax = Math.max(Math.min(f, 1.0f), 0.0f);
        return Color.argb(((int) ((Color.alpha(i2) - r0) * fMax)) + Color.alpha(i), ((int) ((Color.red(i2) - r0) * fMax)) + Color.red(i), ((int) ((Color.green(i2) - r0) * fMax)) + Color.green(i), ((int) ((Color.blue(i2) - r4) * fMax)) + Color.blue(i));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2285new(@ColorInt int i, float f, boolean z) {
        return (i & 16777215) | (((int) (f * (z ? 255 : 255 & (i >> 24)))) << 24);
    }
}
