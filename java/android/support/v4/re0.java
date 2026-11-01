package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class re0 extends he2 {

    /* renamed from: if, reason: not valid java name */
    private int[] f5767if;

    public re0(int i) {
        if (i < 0) {
            throw new ArithmeticException("Negative length.");
        }
        this.f2393do = i;
        this.f5767if = new int[(i + 31) >> 5];
    }

    public re0(int i, int i2, SecureRandom secureRandom) {
        if (i2 > i) {
            throw new ArithmeticException("The hamming weight is greater than the length of vector.");
        }
        this.f2393do = i;
        this.f5767if = new int[(i + 31) >> 5];
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = i3;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int iM1406do = dl1.m1406do(secureRandom, i);
            m6943const(iArr[iM1406do]);
            i--;
            iArr[iM1406do] = iArr[i];
        }
    }

    public re0(int i, SecureRandom secureRandom) {
        this.f2393do = i;
        int i2 = (i + 31) >> 5;
        this.f5767if = new int[i2];
        int i3 = i2 - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            this.f5767if[i4] = secureRandom.nextInt();
        }
        int i5 = i & 31;
        if (i5 != 0) {
            int[] iArr = this.f5767if;
            iArr[i3] = ((1 << i5) - 1) & iArr[i3];
        }
    }

    public re0(int i, int[] iArr) {
        if (i < 0) {
            throw new ArithmeticException("negative length");
        }
        this.f2393do = i;
        int i2 = (i + 31) >> 5;
        if (iArr.length != i2) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM2358do = fn0.m2358do(iArr);
        this.f5767if = iArrM2358do;
        int i3 = i & 31;
        if (i3 != 0) {
            int i4 = i2 - 1;
            iArrM2358do[i4] = ((1 << i3) - 1) & iArrM2358do[i4];
        }
    }

    public re0(re0 re0Var) {
        this.f2393do = re0Var.f2393do;
        this.f5767if = fn0.m2358do(re0Var.f5767if);
    }

    public re0(int[] iArr, int i) {
        this.f5767if = iArr;
        this.f2393do = i;
    }

    /* renamed from: case, reason: not valid java name */
    public static re0 m6939case(int i, byte[] bArr) {
        if (i < 0) {
            throw new ArithmeticException("negative length");
        }
        if (bArr.length <= ((i + 7) >> 3)) {
            return new re0(i, lt0.m4762catch(bArr));
        }
        throw new ArithmeticException("length mismatch");
    }

    /* renamed from: break, reason: not valid java name */
    public int m6940break(int i) {
        if (i >= this.f2393do) {
            throw new IndexOutOfBoundsException();
        }
        int i2 = i >> 5;
        int i3 = i & 31;
        return (this.f5767if[i2] & (1 << i3)) >>> i3;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m6941catch() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f5767if;
            if (i >= iArr.length) {
                return i2;
            }
            int i3 = iArr[i];
            for (int i4 = 0; i4 < 32; i4++) {
                if ((i3 & 1) != 0) {
                    i2++;
                }
                i3 >>>= 1;
            }
            i++;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public int[] m6942class() {
        return this.f5767if;
    }

    /* renamed from: const, reason: not valid java name */
    public void m6943const(int i) {
        if (i >= this.f2393do) {
            throw new IndexOutOfBoundsException();
        }
        int[] iArr = this.f5767if;
        int i2 = i >> 5;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    @Override // android.support.v4.he2
    /* renamed from: do */
    public he2 mo3002do(he2 he2Var) {
        if (!(he2Var instanceof re0)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        re0 re0Var = (re0) he2Var;
        if (this.f2393do != re0Var.f2393do) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM2358do = fn0.m2358do(re0Var.f5767if);
        for (int length = iArrM2358do.length - 1; length >= 0; length--) {
            iArrM2358do[length] = iArrM2358do[length] ^ this.f5767if[length];
        }
        return new re0(this.f2393do, iArrM2358do);
    }

    /* renamed from: else, reason: not valid java name */
    public re0 m6944else(int i) {
        int i2 = this.f2393do;
        if (i > i2) {
            throw new ArithmeticException("invalid length");
        }
        if (i == i2) {
            return new re0(this);
        }
        re0 re0Var = new re0(i);
        int i3 = i >> 5;
        int i4 = i & 31;
        System.arraycopy(this.f5767if, 0, re0Var.f5767if, 0, i3);
        if (i4 != 0) {
            re0Var.f5767if[i3] = ((1 << i4) - 1) & this.f5767if[i3];
        }
        return re0Var;
    }

    @Override // android.support.v4.he2
    public boolean equals(Object obj) {
        if (!(obj instanceof re0)) {
            return false;
        }
        re0 re0Var = (re0) obj;
        return this.f2393do == re0Var.f2393do && fn0.m2362if(this.f5767if, re0Var.f5767if);
    }

    /* renamed from: final, reason: not valid java name */
    public ue0 m6945final(se0 se0Var) {
        int iM7388new = se0Var.m7388new();
        int i = this.f2393do;
        if (i % iM7388new != 0) {
            throw new ArithmeticException("conversion is impossible");
        }
        int i2 = i / iM7388new;
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            for (int iM7388new2 = se0Var.m7388new() - 1; iM7388new2 >= 0; iM7388new2--) {
                if (((this.f5767if[i3 >>> 5] >>> (i3 & 31)) & 1) == 1) {
                    iArr[i4] = iArr[i4] ^ (1 << iM7388new2);
                }
                i3++;
            }
        }
        return new ue0(se0Var, iArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public re0 m6946goto(int i) {
        int i2;
        int i3 = this.f2393do;
        if (i > i3) {
            throw new ArithmeticException("invalid length");
        }
        if (i == i3) {
            return new re0(this);
        }
        re0 re0Var = new re0(i);
        int i4 = this.f2393do;
        int i5 = (i4 - i) >> 5;
        int i6 = (i4 - i) & 31;
        int i7 = (i + 31) >> 5;
        int i8 = 0;
        if (i6 != 0) {
            while (true) {
                i2 = i7 - 1;
                if (i8 >= i2) {
                    break;
                }
                int[] iArr = re0Var.f5767if;
                int[] iArr2 = this.f5767if;
                int i9 = i5 + 1;
                iArr[i8] = (iArr2[i5] >>> i6) | (iArr2[i9] << (32 - i6));
                i8++;
                i5 = i9;
            }
            int[] iArr3 = re0Var.f5767if;
            int[] iArr4 = this.f5767if;
            int i10 = i5 + 1;
            iArr3[i2] = iArr4[i5] >>> i6;
            if (i10 < iArr4.length) {
                iArr3[i2] = (iArr4[i10] << (32 - i6)) | iArr3[i2];
            }
        } else {
            System.arraycopy(this.f5767if, i5, re0Var.f5767if, 0, i7);
        }
        return re0Var;
    }

    @Override // android.support.v4.he2
    public int hashCode() {
        return (this.f2393do * 31) + q3.q(this.f5767if);
    }

    @Override // android.support.v4.he2
    /* renamed from: if */
    public byte[] mo3004if() {
        return lt0.m4760break(this.f5767if, (this.f2393do + 7) >> 3);
    }

    @Override // android.support.v4.he2
    /* renamed from: new */
    public boolean mo3005new() {
        for (int length = this.f5767if.length - 1; length >= 0; length--) {
            if (this.f5767if[length] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public re0 m6947this(int[] iArr) {
        int length = iArr.length;
        if (iArr[length - 1] > this.f2393do) {
            throw new ArithmeticException("invalid index set");
        }
        re0 re0Var = new re0(length);
        for (int i = 0; i < length; i++) {
            if ((this.f5767if[iArr[i] >> 5] & (1 << (iArr[i] & 31))) != 0) {
                int[] iArr2 = re0Var.f5767if;
                int i2 = i >> 5;
                iArr2[i2] = (1 << (i & 31)) | iArr2[i2];
            }
        }
        return re0Var;
    }

    @Override // android.support.v4.he2
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.f2393do; i++) {
            if (i != 0 && (i & 31) == 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append((this.f5767if[i >> 5] & (1 << (i & 31))) == 0 ? '0' : '1');
        }
        return stringBuffer.toString();
    }

    @Override // android.support.v4.he2
    /* renamed from: try */
    public he2 mo3006try(fd1 fd1Var) {
        int[] iArrM2249for = fd1Var.m2249for();
        int i = this.f2393do;
        if (i != iArrM2249for.length) {
            throw new ArithmeticException("length mismatch");
        }
        re0 re0Var = new re0(i);
        for (int i2 = 0; i2 < iArrM2249for.length; i2++) {
            if ((this.f5767if[iArrM2249for[i2] >> 5] & (1 << (iArrM2249for[i2] & 31))) != 0) {
                int[] iArr = re0Var.f5767if;
                int i3 = i2 >> 5;
                iArr[i3] = (1 << (i2 & 31)) | iArr[i3];
            }
        }
        return re0Var;
    }
}
