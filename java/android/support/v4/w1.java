package android.support.v4;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import com.google.common.collect.LinkedHashMultimap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class w1 {

    /* renamed from: do, reason: not valid java name */
    public static final TimeInterpolator f7369do = new LinearInterpolator();

    /* renamed from: if, reason: not valid java name */
    public static final TimeInterpolator f7371if = new FastOutSlowInInterpolator();

    /* renamed from: for, reason: not valid java name */
    public static final TimeInterpolator f7370for = new FastOutLinearInInterpolator();

    /* renamed from: new, reason: not valid java name */
    public static final TimeInterpolator f7372new = new LinearOutSlowInInterpolator();

    /* renamed from: try, reason: not valid java name */
    public static final TimeInterpolator f7373try = new DecelerateInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static float m9011do(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m9012for(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }

    /* renamed from: if, reason: not valid java name */
    public static float m9013if(float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m9011do(f, f2, (f5 - f3) / (f4 - f3));
    }
}
