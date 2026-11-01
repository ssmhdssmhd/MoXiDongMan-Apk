package android.support.v4;

import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;

/* loaded from: classes3.dex */
public class yy1 implements ECLookupTable {

    /* renamed from: do, reason: not valid java name */
    private final Cnew[] f8371do;

    public yy1(Cnew[] cnewArr, int i, int i2) {
        this.f8371do = m9998do(cnewArr, i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    private static Cnew[] m9998do(Cnew[] cnewArr, int i, int i2) {
        Cnew[] cnewArr2 = new Cnew[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            cnewArr2[i3] = cnewArr[i + i3];
        }
        return cnewArr2;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public int getSize() {
        return this.f8371do.length;
    }

    @Override // org.bouncycastle.math.ec.ECLookupTable
    public Cnew lookup(int i) {
        return this.f8371do[i];
    }
}
