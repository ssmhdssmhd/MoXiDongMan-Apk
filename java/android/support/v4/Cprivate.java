package android.support.v4;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shape.CornerSize;
import java.util.Arrays;

/* renamed from: android.support.v4.private, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cprivate implements CornerSize {

    /* renamed from: do, reason: not valid java name */
    private final float f5176do;

    public Cprivate(float f) {
        this.f5176do = f;
    }

    /* renamed from: do, reason: not valid java name */
    public float m6209do() {
        return this.f5176do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Cprivate) && this.f5176do == ((Cprivate) obj).f5176do;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return this.f5176do;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f5176do)});
    }
}
