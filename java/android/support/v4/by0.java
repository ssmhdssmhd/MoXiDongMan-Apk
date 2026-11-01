package android.support.v4;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class by0 implements TypeEvaluator<Matrix> {

    /* renamed from: do, reason: not valid java name */
    private final float[] f561do = new float[9];

    /* renamed from: if, reason: not valid java name */
    private final float[] f563if = new float[9];

    /* renamed from: for, reason: not valid java name */
    private final Matrix f562for = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f561do);
        matrix2.getValues(this.f563if);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f563if;
            float f2 = fArr[i];
            float[] fArr2 = this.f561do;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f562for.setValues(this.f563if);
        return this.f562for;
    }
}
