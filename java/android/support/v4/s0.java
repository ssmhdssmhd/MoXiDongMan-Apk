package android.support.v4;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.CornerSize;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class s0 implements CornerSize {

    /* renamed from: do, reason: not valid java name */
    private final CornerSize f5979do;

    /* renamed from: if, reason: not valid java name */
    private final float f5980if;

    public s0(float f, @NonNull CornerSize cornerSize) {
        while (cornerSize instanceof s0) {
            cornerSize = ((s0) cornerSize).f5979do;
            f += ((s0) cornerSize).f5980if;
        }
        this.f5979do = cornerSize;
        this.f5980if = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s0)) {
            return false;
        }
        s0 s0Var = (s0) obj;
        return this.f5979do.equals(s0Var.f5979do) && this.f5980if == s0Var.f5980if;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f5979do.getCornerSize(rectF) + this.f5980if);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5979do, Float.valueOf(this.f5980if)});
    }
}
