package android.support.v4;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.shape.CornerSize;
import com.google.common.collect.LinkedHashMultimap;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class um1 implements CornerSize {

    /* renamed from: do, reason: not valid java name */
    private final float f6941do;

    public um1(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f6941do = f;
    }

    @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
    /* renamed from: do, reason: not valid java name */
    public float m8520do() {
        return this.f6941do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof um1) && this.f6941do == ((um1) obj).f6941do;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return this.f6941do * rectF.height();
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f6941do)});
    }
}
