package android.support.v4;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public abstract class rg0 implements ExtendedDigest, Memoable {

    /* renamed from: new, reason: not valid java name */
    private static final int f5784new = 64;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f5785do;

    /* renamed from: for, reason: not valid java name */
    private long f5786for;

    /* renamed from: if, reason: not valid java name */
    private int f5787if;

    public rg0() {
        this.f5785do = new byte[4];
        this.f5787if = 0;
    }

    public rg0(rg0 rg0Var) {
        this.f5785do = new byte[4];
        m6968do(rg0Var);
    }

    public rg0(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.f5785do = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f5787if = ib1.m3354do(bArr, 4);
        this.f5786for = ib1.m3359for(bArr, 8);
    }

    /* renamed from: case */
    public abstract void mo4745case(byte[] bArr, int i);

    /* renamed from: do, reason: not valid java name */
    public void m6968do(rg0 rg0Var) {
        byte[] bArr = rg0Var.f5785do;
        System.arraycopy(bArr, 0, this.f5785do, 0, bArr.length);
        this.f5787if = rg0Var.f5787if;
        this.f5786for = rg0Var.f5786for;
    }

    /* renamed from: for, reason: not valid java name */
    public void m6969for(byte[] bArr) {
        System.arraycopy(this.f5785do, 0, bArr, 0, this.f5787if);
        ib1.m3348case(this.f5787if, bArr, 4);
        ib1.m3369static(this.f5786for, bArr, 8);
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    /* renamed from: if, reason: not valid java name */
    public void m6970if() {
        long j = this.f5786for << 3;
        byte b = Byte.MIN_VALUE;
        while (true) {
            update(b);
            if (this.f5787if == 0) {
                mo4747try(j);
                mo4746new();
                return;
            }
            b = 0;
        }
    }

    /* renamed from: new */
    public abstract void mo4746new();

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f5786for = 0L;
        this.f5787if = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f5785do;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    /* renamed from: try */
    public abstract void mo4747try(long j);

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.f5785do;
        int i = this.f5787if;
        int i2 = i + 1;
        this.f5787if = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            mo4745case(bArr, 0);
            this.f5787if = 0;
        }
        this.f5786for++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int iMax = Math.max(0, i2);
        if (this.f5787if != 0) {
            int i4 = 0;
            while (true) {
                if (i4 >= iMax) {
                    i3 = i4;
                    break;
                }
                byte[] bArr2 = this.f5785do;
                int i5 = this.f5787if;
                int i6 = i5 + 1;
                this.f5787if = i6;
                int i7 = i4 + 1;
                bArr2[i5] = bArr[i4 + i];
                if (i6 == 4) {
                    mo4745case(bArr2, 0);
                    this.f5787if = 0;
                    i3 = i7;
                    break;
                }
                i4 = i7;
            }
        }
        int i8 = ((iMax - i3) & (-4)) + i3;
        while (i3 < i8) {
            mo4745case(bArr, i + i3);
            i3 += 4;
        }
        while (i3 < iMax) {
            byte[] bArr3 = this.f5785do;
            int i9 = this.f5787if;
            this.f5787if = i9 + 1;
            bArr3[i9] = bArr[i3 + i];
            i3++;
        }
        this.f5786for += iMax;
    }
}
