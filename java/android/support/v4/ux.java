package android.support.v4;

/* loaded from: classes2.dex */
public final class ux extends ci0 {
    @Override // android.support.v4.ci0
    /* renamed from: for */
    public z8 mo935for(z8 z8Var, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) throws j41 {
        return mo936new(z8Var, i, i2, hd1.m2987if(f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16));
    }

    @Override // android.support.v4.ci0
    /* renamed from: new */
    public z8 mo936new(z8 z8Var, int i, int i2, hd1 hd1Var) throws j41 {
        if (i <= 0 || i2 <= 0) {
            throw j41.getNotFoundInstance();
        }
        z8 z8Var2 = new z8(i, i2);
        int i3 = i * 2;
        float[] fArr = new float[i3];
        for (int i4 = 0; i4 < i2; i4++) {
            float f = i4 + 0.5f;
            for (int i5 = 0; i5 < i3; i5 += 2) {
                fArr[i5] = (i5 / 2) + 0.5f;
                fArr[i5 + 1] = f;
            }
            hd1Var.m2989case(fArr);
            ci0.m932do(z8Var, fArr);
            for (int i6 = 0; i6 < i3; i6 += 2) {
                try {
                    if (z8Var.m10105try((int) fArr[i6], (int) fArr[i6 + 1])) {
                        z8Var2.m10104throw(i6 / 2, i4);
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw j41.getNotFoundInstance();
                }
            }
        }
        return z8Var2;
    }
}
