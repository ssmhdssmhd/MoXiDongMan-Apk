package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class tk1 implements AlgorithmParameterSpec {

    /* renamed from: if, reason: not valid java name */
    private static final int[] f6601if = {6, 12, 17, 22, 33};

    /* renamed from: do, reason: not valid java name */
    private int[] f6602do;

    public tk1() {
        this.f6602do = f6601if;
    }

    public tk1(int[] iArr) {
        this.f6602do = iArr;
        m7986do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m7986do() {
        int[] iArr;
        int i;
        int[] iArr2 = this.f6602do;
        if (iArr2 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (iArr2.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int i2 = 0;
        do {
            iArr = this.f6602do;
            if (i2 >= iArr.length - 1) {
                return;
            }
            i = iArr[i2];
            i2++;
        } while (i < iArr[i2]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    /* renamed from: for, reason: not valid java name */
    public int m7987for() {
        return this.f6602do.length - 1;
    }

    /* renamed from: if, reason: not valid java name */
    public int m7988if() {
        int[] iArr = this.f6602do;
        return iArr[iArr.length - 1] - iArr[0];
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m7989new() {
        return q3.m6398while(this.f6602do);
    }
}
