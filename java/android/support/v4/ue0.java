package android.support.v4;

/* loaded from: classes3.dex */
public class ue0 extends he2 {

    /* renamed from: for, reason: not valid java name */
    private int[] f6855for;

    /* renamed from: if, reason: not valid java name */
    private se0 f6856if;

    public ue0(se0 se0Var, byte[] bArr) {
        this.f6856if = new se0(se0Var);
        int i = 8;
        int i2 = 1;
        while (se0Var.m7388new() > i) {
            i2++;
            i += 8;
        }
        if (bArr.length % i2 != 0) {
            throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
        }
        int length = bArr.length / i2;
        this.f2393do = length;
        this.f6855for = new int[length];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f6855for.length; i4++) {
            int i5 = 0;
            while (i5 < i) {
                int[] iArr = this.f6855for;
                iArr[i4] = ((bArr[i3] & 255) << i5) | iArr[i4];
                i5 += 8;
                i3++;
            }
            if (!se0Var.m7380catch(this.f6855for[i4])) {
                throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
            }
        }
    }

    public ue0(se0 se0Var, int[] iArr) {
        this.f6856if = se0Var;
        this.f2393do = iArr.length;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (!se0Var.m7380catch(iArr[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.f6855for = fn0.m2358do(iArr);
    }

    public ue0(ue0 ue0Var) {
        this.f6856if = new se0(ue0Var.f6856if);
        this.f2393do = ue0Var.f2393do;
        this.f6855for = fn0.m2358do(ue0Var.f6855for);
    }

    /* renamed from: case, reason: not valid java name */
    public se0 m8400case() {
        return this.f6856if;
    }

    @Override // android.support.v4.he2
    /* renamed from: do */
    public he2 mo3002do(he2 he2Var) {
        throw new RuntimeException("not implemented");
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m8401else() {
        return fn0.m2358do(this.f6855for);
    }

    @Override // android.support.v4.he2
    public boolean equals(Object obj) {
        if (!(obj instanceof ue0)) {
            return false;
        }
        ue0 ue0Var = (ue0) obj;
        if (this.f6856if.equals(ue0Var.f6856if)) {
            return fn0.m2362if(this.f6855for, ue0Var.f6855for);
        }
        return false;
    }

    @Override // android.support.v4.he2
    public int hashCode() {
        return (this.f6856if.hashCode() * 31) + q3.q(this.f6855for);
    }

    @Override // android.support.v4.he2
    /* renamed from: if */
    public byte[] mo3004if() {
        int i = 8;
        int i2 = 1;
        while (this.f6856if.m7388new() > i) {
            i2++;
            i += 8;
        }
        byte[] bArr = new byte[this.f6855for.length * i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f6855for.length; i4++) {
            int i5 = 0;
            while (i5 < i) {
                bArr[i3] = (byte) (this.f6855for[i4] >>> i5);
                i5 += 8;
                i3++;
            }
        }
        return bArr;
    }

    @Override // android.support.v4.he2
    /* renamed from: new */
    public boolean mo3005new() {
        for (int length = this.f6855for.length - 1; length >= 0; length--) {
            if (this.f6855for[length] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.support.v4.he2
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.f6855for.length; i++) {
            for (int i2 = 0; i2 < this.f6856if.m7388new(); i2++) {
                stringBuffer.append(((1 << (i2 & 31)) & this.f6855for[i]) != 0 ? '1' : '0');
            }
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }

    @Override // android.support.v4.he2
    /* renamed from: try */
    public he2 mo3006try(fd1 fd1Var) {
        int[] iArrM2249for = fd1Var.m2249for();
        int i = this.f2393do;
        if (i != iArrM2249for.length) {
            throw new ArithmeticException("permutation size and vector size mismatch");
        }
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < iArrM2249for.length; i2++) {
            iArr[i2] = this.f6855for[iArrM2249for[i2]];
        }
        return new ue0(this.f6856if, iArr);
    }
}
