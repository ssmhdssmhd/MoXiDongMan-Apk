package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class uk1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private final int[] f6917do;

    /* renamed from: if, reason: not valid java name */
    private int[] f6918if;

    public uk1() {
        int[] iArr = {6, 12, 17, 22, 33};
        this.f6917do = iArr;
        this.f6918if = iArr;
    }

    public uk1(int[] iArr) {
        this.f6917do = new int[]{6, 12, 17, 22, 33};
        this.f6918if = iArr;
        m8474do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m8474do() {
        int[] iArr;
        int i;
        int[] iArr2 = this.f6918if;
        if (iArr2 == null) {
            throw new IllegalArgumentException("no layers defined.");
        }
        if (iArr2.length <= 1) {
            throw new IllegalArgumentException("Rainbow needs at least 1 layer, such that v1 < v2.");
        }
        int i2 = 0;
        do {
            iArr = this.f6918if;
            if (i2 >= iArr.length - 1) {
                return;
            }
            i = iArr[i2];
            i2++;
        } while (i < iArr[i2]);
        throw new IllegalArgumentException("v[i] has to be smaller than v[i+1]");
    }

    /* renamed from: for, reason: not valid java name */
    public int m8475for() {
        return this.f6918if.length - 1;
    }

    /* renamed from: if, reason: not valid java name */
    public int m8476if() {
        int[] iArr = this.f6918if;
        return iArr[iArr.length - 1] - iArr[0];
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m8477new() {
        return this.f6918if;
    }
}
