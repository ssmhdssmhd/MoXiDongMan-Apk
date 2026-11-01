package android.support.v4;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public class te0 extends ay0 {

    /* renamed from: goto, reason: not valid java name */
    public se0 f6498goto;

    /* renamed from: this, reason: not valid java name */
    public int[][] f6499this;

    public te0(se0 se0Var, byte[] bArr) {
        this.f6498goto = se0Var;
        int i = 8;
        int i2 = 1;
        while (se0Var.m7388new() > i) {
            i2++;
            i += 8;
        }
        if (bArr.length < 5) {
            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
        }
        int i3 = ((((bArr[3] & 255) << 24) ^ ((bArr[2] & 255) << 16)) ^ ((bArr[1] & 255) << 8)) ^ (bArr[0] & 255);
        this.f289do = i3;
        int i4 = i2 * i3;
        if (i3 > 0) {
            int i5 = 4;
            if ((bArr.length - 4) % i4 == 0) {
                int length = (bArr.length - 4) / i4;
                this.f290if = length;
                this.f6499this = (int[][]) Array.newInstance((Class<?>) int.class, i3, length);
                for (int i6 = 0; i6 < this.f289do; i6++) {
                    for (int i7 = 0; i7 < this.f290if; i7++) {
                        int i8 = 0;
                        while (i8 < i) {
                            int[] iArr = this.f6499this[i6];
                            iArr[i7] = iArr[i7] ^ ((bArr[i5] & 255) << i8);
                            i8 += 8;
                            i5++;
                        }
                        if (!this.f6498goto.m7380catch(this.f6499this[i6][i7])) {
                            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
                        }
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
    }

    public te0(se0 se0Var, int[][] iArr) {
        this.f6498goto = se0Var;
        this.f6499this = iArr;
        this.f289do = iArr.length;
        this.f290if = iArr[0].length;
    }

    public te0(te0 te0Var) {
        int i = te0Var.f289do;
        this.f289do = i;
        this.f290if = te0Var.f290if;
        this.f6498goto = te0Var.f6498goto;
        this.f6499this = new int[i][];
        for (int i2 = 0; i2 < this.f289do; i2++) {
            this.f6499this[i2] = fn0.m2358do(te0Var.f6499this[i2]);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m7836break(int[] iArr, int[] iArr2) {
        for (int length = iArr2.length - 1; length >= 0; length--) {
            iArr2[length] = this.f6498goto.m7382do(iArr[length], iArr2[length]);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private int[] m7837catch(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length];
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr2[length] = this.f6498goto.m7381class(iArr[length], i);
        }
        return iArr2;
    }

    /* renamed from: class, reason: not valid java name */
    private void m7838class(int[] iArr, int i) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = this.f6498goto.m7381class(iArr[length], i);
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m7839const(int[][] iArr, int i, int i2) {
        int[] iArr2 = iArr[i];
        iArr[i] = iArr[i2];
        iArr[i2] = iArr2;
    }

    @Override // android.support.v4.ay0
    /* renamed from: case */
    public he2 mo396case(he2 he2Var) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // android.support.v4.ay0
    /* renamed from: do */
    public ay0 mo397do() {
        int i;
        int i2 = this.f289do;
        if (i2 != this.f290if) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i2);
        for (int i3 = this.f289do - 1; i3 >= 0; i3--) {
            iArr[i3] = fn0.m2358do(this.f6499this[i3]);
        }
        int i4 = this.f289do;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, i4, i4);
        for (int i5 = this.f289do - 1; i5 >= 0; i5--) {
            iArr2[i5][i5] = 1;
        }
        for (int i6 = 0; i6 < this.f289do; i6++) {
            if (iArr[i6][i6] == 0) {
                int i7 = i6 + 1;
                boolean z = false;
                while (i7 < this.f289do) {
                    if (iArr[i7][i6] != 0) {
                        m7839const(iArr, i6, i7);
                        m7839const(iArr2, i6, i7);
                        i7 = this.f289do;
                        z = true;
                    }
                    i7++;
                }
                if (!z) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            int iM7378break = this.f6498goto.m7378break(iArr[i6][i6]);
            m7838class(iArr[i6], iM7378break);
            m7838class(iArr2[i6], iM7378break);
            for (int i8 = 0; i8 < this.f289do; i8++) {
                if (i8 != i6 && (i = iArr[i8][i6]) != 0) {
                    int[] iArrM7837catch = m7837catch(iArr[i6], i);
                    int[] iArrM7837catch2 = m7837catch(iArr2[i6], i);
                    m7836break(iArrM7837catch, iArr[i8]);
                    m7836break(iArrM7837catch2, iArr2[i8]);
                }
            }
        }
        return new te0(this.f6498goto, iArr2);
    }

    @Override // android.support.v4.ay0
    /* renamed from: else */
    public ay0 mo398else(ay0 ay0Var) {
        throw new RuntimeException("Not implemented.");
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof te0)) {
            te0 te0Var = (te0) obj;
            if (this.f6498goto.equals(te0Var.f6498goto)) {
                int i = te0Var.f289do;
                int i2 = this.f290if;
                if (i == i2 && te0Var.f290if == i2) {
                    for (int i3 = 0; i3 < this.f289do; i3++) {
                        for (int i4 = 0; i4 < this.f290if; i4++) {
                            if (this.f6499this[i3][i4] != te0Var.f6499this[i3][i4]) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.support.v4.ay0
    /* renamed from: goto */
    public ay0 mo400goto(fd1 fd1Var) {
        throw new RuntimeException("Not implemented.");
    }

    public int hashCode() {
        int iHashCode = (((this.f6498goto.hashCode() * 31) + this.f289do) * 31) + this.f290if;
        for (int i = 0; i < this.f289do; i++) {
            for (int i2 = 0; i2 < this.f290if; i2++) {
                iHashCode = (iHashCode * 31) + this.f6499this[i][i2];
            }
        }
        return iHashCode;
    }

    @Override // android.support.v4.ay0
    /* renamed from: if */
    public byte[] mo401if() {
        int i = 8;
        int i2 = 1;
        while (this.f6498goto.m7388new() > i) {
            i2++;
            i += 8;
        }
        int i3 = this.f289do;
        int i4 = this.f290if * i3 * i2;
        int i5 = 4;
        byte[] bArr = new byte[i4 + 4];
        bArr[0] = (byte) (i3 & 255);
        bArr[1] = (byte) ((i3 >>> 8) & 255);
        bArr[2] = (byte) ((i3 >>> 16) & 255);
        bArr[3] = (byte) ((i3 >>> 24) & 255);
        for (int i6 = 0; i6 < this.f289do; i6++) {
            for (int i7 = 0; i7 < this.f290if; i7++) {
                int i8 = 0;
                while (i8 < i) {
                    bArr[i5] = (byte) (this.f6499this[i6][i7] >>> i8);
                    i8 += 8;
                    i5++;
                }
            }
        }
        return bArr;
    }

    @Override // android.support.v4.ay0
    /* renamed from: this */
    public he2 mo403this(he2 he2Var) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // android.support.v4.ay0
    public String toString() {
        String str = this.f289do + " x " + this.f290if + " Matrix over " + this.f6498goto.toString() + ": \n";
        for (int i = 0; i < this.f289do; i++) {
            for (int i2 = 0; i2 < this.f290if; i2++) {
                str = str + this.f6498goto.m7387if(this.f6499this[i][i2]) + " : ";
            }
            str = str + "\n";
        }
        return str;
    }

    @Override // android.support.v4.ay0
    /* renamed from: try */
    public boolean mo404try() {
        for (int i = 0; i < this.f289do; i++) {
            for (int i2 = 0; i2 < this.f290if; i2++) {
                if (this.f6499this[i][i2] != 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
