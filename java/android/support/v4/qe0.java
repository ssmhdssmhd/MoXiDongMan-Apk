package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class qe0 extends ay0 {

    /* renamed from: goto, reason: not valid java name */
    private int[][] f5357goto;

    /* renamed from: this, reason: not valid java name */
    private int f5358this;

    public qe0(int i, char c) {
        this(i, c, new SecureRandom());
    }

    public qe0(int i, char c, SecureRandom secureRandom) {
        if (i <= 0) {
            throw new ArithmeticException("Size of matrix is non-positive.");
        }
        if (c == 'I') {
            m6519final(i);
            return;
        }
        if (c == 'L') {
            m6516catch(i, secureRandom);
            return;
        }
        if (c == 'R') {
            m6517class(i, secureRandom);
        } else if (c == 'U') {
            m6518const(i, secureRandom);
        } else {
            if (c != 'Z') {
                throw new ArithmeticException("Unknown matrix type.");
            }
            m6521super(i, i);
        }
    }

    private qe0(int i, int i2) {
        if (i2 <= 0 || i <= 0) {
            throw new ArithmeticException("size of matrix is non-positive");
        }
        m6521super(i, i2);
    }

    public qe0(int i, int[][] iArr) {
        if (iArr[0].length != ((i + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.f290if = i;
        this.f289do = iArr.length;
        this.f5358this = iArr[0].length;
        int i2 = i & 31;
        int i3 = i2 == 0 ? -1 : (1 << i2) - 1;
        for (int i4 = 0; i4 < this.f289do; i4++) {
            int[] iArr2 = iArr[i4];
            int i5 = this.f5358this - 1;
            iArr2[i5] = iArr2[i5] & i3;
        }
        this.f5357goto = iArr;
    }

    public qe0(qe0 qe0Var) {
        this.f290if = qe0Var.m399for();
        this.f289do = qe0Var.m402new();
        this.f5358this = qe0Var.f5358this;
        this.f5357goto = new int[qe0Var.f5357goto.length][];
        int i = 0;
        while (true) {
            int[][] iArr = this.f5357goto;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = fn0.m2358do(qe0Var.f5357goto[i]);
            i++;
        }
    }

    public qe0(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.f289do = lt0.m4764else(bArr, 0);
        int iM4764else = lt0.m4764else(bArr, 4);
        this.f290if = iM4764else;
        int i = this.f289do;
        int i2 = ((iM4764else + 7) >>> 3) * i;
        if (i > 0) {
            int i3 = 8;
            if (i2 == bArr.length - 8) {
                int i4 = (iM4764else + 31) >>> 5;
                this.f5358this = i4;
                this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, i, i4);
                int i5 = this.f290if;
                int i6 = i5 >> 5;
                int i7 = i5 & 31;
                for (int i8 = 0; i8 < this.f289do; i8++) {
                    int i9 = 0;
                    while (i9 < i6) {
                        this.f5357goto[i8][i9] = lt0.m4764else(bArr, i3);
                        i9++;
                        i3 += 4;
                    }
                    int i10 = 0;
                    while (i10 < i7) {
                        int[] iArr = this.f5357goto[i8];
                        iArr[i6] = ((bArr[i3] & 255) << i10) ^ iArr[i6];
                        i10 += 8;
                        i3++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }

    /* renamed from: break, reason: not valid java name */
    private static void m6515break(int[] iArr, int[] iArr2, int i) {
        for (int length = iArr2.length - 1; length >= i; length--) {
            iArr2[length] = iArr[length] ^ iArr2[length];
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m6516catch(int i, SecureRandom secureRandom) {
        this.f289do = i;
        this.f290if = i;
        int i2 = (i + 31) >>> 5;
        this.f5358this = i2;
        this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, i, i2);
        for (int i3 = 0; i3 < this.f289do; i3++) {
            int i4 = i3 >>> 5;
            int i5 = i3 & 31;
            int i6 = 31 - i5;
            int i7 = 1 << i5;
            for (int i8 = 0; i8 < i4; i8++) {
                this.f5357goto[i3][i8] = secureRandom.nextInt();
            }
            this.f5357goto[i3][i4] = i7 | (secureRandom.nextInt() >>> i6);
            while (true) {
                i4++;
                if (i4 < this.f5358this) {
                    this.f5357goto[i3][i4] = 0;
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m6517class(int i, SecureRandom secureRandom) {
        this.f289do = i;
        this.f290if = i;
        int i2 = (i + 31) >>> 5;
        this.f5358this = i2;
        this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, i, i2);
        qe0 qe0Var = (qe0) new qe0(i, ay0.f288try, secureRandom).mo398else(new qe0(i, ay0.f284case, secureRandom));
        int[] iArrM2249for = new fd1(i, secureRandom).m2249for();
        for (int i3 = 0; i3 < i; i3++) {
            System.arraycopy(qe0Var.f5357goto[i3], 0, this.f5357goto[iArrM2249for[i3]], 0, this.f5358this);
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m6518const(int i, SecureRandom secureRandom) {
        int i2;
        this.f289do = i;
        this.f290if = i;
        int i3 = (i + 31) >>> 5;
        this.f5358this = i3;
        this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, i, i3);
        int i4 = i & 31;
        int i5 = i4 == 0 ? -1 : (1 << i4) - 1;
        for (int i6 = 0; i6 < this.f289do; i6++) {
            int i7 = i6 >>> 5;
            int i8 = i6 & 31;
            int i9 = 1 << i8;
            for (int i10 = 0; i10 < i7; i10++) {
                this.f5357goto[i6][i10] = 0;
            }
            this.f5357goto[i6][i7] = (secureRandom.nextInt() << i8) | i9;
            while (true) {
                i7++;
                i2 = this.f5358this;
                if (i7 < i2) {
                    this.f5357goto[i6][i7] = secureRandom.nextInt();
                }
            }
            int[] iArr = this.f5357goto[i6];
            int i11 = i2 - 1;
            iArr[i11] = iArr[i11] & i5;
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m6519final(int i) {
        this.f289do = i;
        this.f290if = i;
        int i2 = (i + 31) >>> 5;
        this.f5358this = i2;
        int[] iArr = {i, i2};
        this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, iArr);
        for (int i3 = 0; i3 < this.f289do; i3++) {
            for (int i4 = 0; i4 < this.f5358this; i4++) {
                this.f5357goto[i3][i4] = 0;
            }
        }
        for (int i5 = 0; i5 < this.f289do; i5++) {
            this.f5357goto[i5][i5 >>> 5] = 1 << (i5 & 31);
        }
    }

    /* renamed from: private, reason: not valid java name */
    private static void m6520private(int[][] iArr, int i, int i2) {
        int[] iArr2 = iArr[i];
        iArr[i] = iArr[i2];
        iArr[i2] = iArr2;
    }

    /* renamed from: super, reason: not valid java name */
    private void m6521super(int i, int i2) {
        this.f289do = i;
        this.f290if = i2;
        int i3 = (i2 + 31) >>> 5;
        this.f5358this = i3;
        this.f5357goto = (int[][]) Array.newInstance((Class<?>) int.class, i, i3);
        for (int i4 = 0; i4 < this.f289do; i4++) {
            for (int i5 = 0; i5 < this.f5358this; i5++) {
                this.f5357goto[i4][i5] = 0;
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static qe0[] m6522while(int i, SecureRandom secureRandom) {
        qe0[] qe0VarArr = new qe0[2];
        int i2 = (i + 31) >> 5;
        qe0 qe0Var = new qe0(i, ay0.f288try, secureRandom);
        qe0 qe0Var2 = new qe0(i, ay0.f284case, secureRandom);
        qe0 qe0Var3 = (qe0) qe0Var.mo398else(qe0Var2);
        fd1 fd1Var = new fd1(i, secureRandom);
        int[] iArrM2249for = fd1Var.m2249for();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i, i2);
        for (int i3 = 0; i3 < i; i3++) {
            System.arraycopy(qe0Var3.f5357goto[iArrM2249for[i3]], 0, iArr[i3], 0, i2);
        }
        qe0VarArr[0] = new qe0(i, iArr);
        qe0 qe0Var4 = new qe0(i, 'I');
        int i4 = 0;
        while (i4 < i) {
            int i5 = i4 >>> 5;
            int i6 = 1 << (i4 & 31);
            int i7 = i4 + 1;
            for (int i8 = i7; i8 < i; i8++) {
                if ((qe0Var.f5357goto[i8][i5] & i6) != 0) {
                    for (int i9 = 0; i9 <= i5; i9++) {
                        int[][] iArr2 = qe0Var4.f5357goto;
                        int[] iArr3 = iArr2[i8];
                        iArr3[i9] = iArr3[i9] ^ iArr2[i4][i9];
                    }
                }
            }
            i4 = i7;
        }
        qe0 qe0Var5 = new qe0(i, 'I');
        for (int i10 = i - 1; i10 >= 0; i10--) {
            int i11 = i10 >>> 5;
            int i12 = 1 << (i10 & 31);
            for (int i13 = i10 - 1; i13 >= 0; i13--) {
                if ((qe0Var2.f5357goto[i13][i11] & i12) != 0) {
                    for (int i14 = i11; i14 < i2; i14++) {
                        int[][] iArr4 = qe0Var5.f5357goto;
                        int[] iArr5 = iArr4[i13];
                        iArr5[i14] = iArr4[i10][i14] ^ iArr5[i14];
                    }
                }
            }
        }
        qe0VarArr[1] = (qe0) qe0Var5.mo398else(qe0Var4.mo400goto(fd1Var));
        return qe0VarArr;
    }

    @Override // android.support.v4.ay0
    /* renamed from: case */
    public he2 mo396case(he2 he2Var) {
        if (!(he2Var instanceof re0)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (he2Var.f2393do != this.f289do) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM6942class = ((re0) he2Var).m6942class();
        int[] iArr = new int[this.f5358this];
        int i = this.f289do;
        int i2 = i >> 5;
        int i3 = 1 << (i & 31);
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = 1;
            do {
                if ((iArrM6942class[i5] & i6) != 0) {
                    for (int i7 = 0; i7 < this.f5358this; i7++) {
                        iArr[i7] = iArr[i7] ^ this.f5357goto[i4][i7];
                    }
                }
                i4++;
                i6 <<= 1;
            } while (i6 != 0);
        }
        for (int i8 = 1; i8 != i3; i8 <<= 1) {
            if ((iArrM6942class[i2] & i8) != 0) {
                for (int i9 = 0; i9 < this.f5358this; i9++) {
                    iArr[i9] = iArr[i9] ^ this.f5357goto[i4][i9];
                }
            }
            i4++;
        }
        return new re0(iArr, this.f290if);
    }

    /* renamed from: default, reason: not valid java name */
    public int[] m6523default(int i) {
        return this.f5357goto[i];
    }

    @Override // android.support.v4.ay0
    /* renamed from: do */
    public ay0 mo397do() {
        int i = this.f289do;
        if (i != this.f290if) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i, this.f5358this);
        for (int i2 = this.f289do - 1; i2 >= 0; i2--) {
            iArr[i2] = fn0.m2358do(this.f5357goto[i2]);
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, this.f289do, this.f5358this);
        for (int i3 = this.f289do - 1; i3 >= 0; i3--) {
            iArr2[i3][i3 >> 5] = 1 << (i3 & 31);
        }
        for (int i4 = 0; i4 < this.f289do; i4++) {
            int i5 = i4 >> 5;
            int i6 = 1 << (i4 & 31);
            if ((iArr[i4][i5] & i6) == 0) {
                int i7 = i4 + 1;
                boolean z = false;
                while (i7 < this.f289do) {
                    if ((iArr[i7][i5] & i6) != 0) {
                        m6520private(iArr, i4, i7);
                        m6520private(iArr2, i4, i7);
                        i7 = this.f289do;
                        z = true;
                    }
                    i7++;
                }
                if (!z) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            for (int i8 = this.f289do - 1; i8 >= 0; i8--) {
                if (i8 != i4 && (iArr[i8][i5] & i6) != 0) {
                    m6515break(iArr[i4], iArr[i8], i5);
                    m6515break(iArr2[i4], iArr2[i8], 0);
                }
            }
        }
        return new qe0(this.f290if, iArr2);
    }

    @Override // android.support.v4.ay0
    /* renamed from: else */
    public ay0 mo398else(ay0 ay0Var) {
        if (!(ay0Var instanceof qe0)) {
            throw new ArithmeticException("matrix is not defined over GF(2)");
        }
        if (ay0Var.f289do != this.f290if) {
            throw new ArithmeticException("length mismatch");
        }
        qe0 qe0Var = (qe0) ay0Var;
        qe0 qe0Var2 = new qe0(this.f289do, ay0Var.f290if);
        int i = this.f290if & 31;
        int i2 = this.f5358this;
        if (i != 0) {
            i2--;
        }
        for (int i3 = 0; i3 < this.f289do; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = this.f5357goto[i3][i5];
                for (int i7 = 0; i7 < 32; i7++) {
                    if (((1 << i7) & i6) != 0) {
                        for (int i8 = 0; i8 < qe0Var.f5358this; i8++) {
                            int[] iArr = qe0Var2.f5357goto[i3];
                            iArr[i8] = iArr[i8] ^ qe0Var.f5357goto[i4][i8];
                        }
                    }
                    i4++;
                }
            }
            int i9 = this.f5357goto[i3][this.f5358this - 1];
            for (int i10 = 0; i10 < i; i10++) {
                if (((1 << i10) & i9) != 0) {
                    for (int i11 = 0; i11 < qe0Var.f5358this; i11++) {
                        int[] iArr2 = qe0Var2.f5357goto[i3];
                        iArr2[i11] = iArr2[i11] ^ qe0Var.f5357goto[i4][i11];
                    }
                }
                i4++;
            }
        }
        return qe0Var2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof qe0)) {
            return false;
        }
        qe0 qe0Var = (qe0) obj;
        if (this.f289do != qe0Var.f289do || this.f290if != qe0Var.f290if || this.f5358this != qe0Var.f5358this) {
            return false;
        }
        for (int i = 0; i < this.f289do; i++) {
            if (!fn0.m2362if(this.f5357goto[i], qe0Var.f5357goto[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    public ay0 m6524extends(fd1 fd1Var) {
        int[] iArrM2249for = fd1Var.m2249for();
        int length = iArrM2249for.length;
        int i = this.f289do;
        if (length != i) {
            throw new ArithmeticException("length mismatch");
        }
        int[][] iArr = new int[i][];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            iArr[i2] = fn0.m2358do(this.f5357goto[iArrM2249for[i2]]);
        }
        return new qe0(this.f289do, iArr);
    }

    /* renamed from: finally, reason: not valid java name */
    public he2 m6525finally(he2 he2Var) {
        if (!(he2Var instanceof re0)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (he2Var.f2393do != this.f289do) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM6942class = ((re0) he2Var).m6942class();
        int i = this.f289do;
        int[] iArr = new int[((this.f290if + i) + 31) >>> 5];
        int i2 = i >>> 5;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 1;
            do {
                if ((iArrM6942class[i4] & i5) != 0) {
                    for (int i6 = 0; i6 < this.f5358this; i6++) {
                        iArr[i6] = iArr[i6] ^ this.f5357goto[i3][i6];
                    }
                    int i7 = this.f290if;
                    int i8 = (i7 + i3) >>> 5;
                    iArr[i8] = (1 << ((i7 + i3) & 31)) | iArr[i8];
                }
                i3++;
                i5 <<= 1;
            } while (i5 != 0);
        }
        int i9 = 1 << (this.f289do & 31);
        for (int i10 = 1; i10 != i9; i10 <<= 1) {
            if ((iArrM6942class[i2] & i10) != 0) {
                for (int i11 = 0; i11 < this.f5358this; i11++) {
                    iArr[i11] = iArr[i11] ^ this.f5357goto[i3][i11];
                }
                int i12 = this.f290if;
                int i13 = (i12 + i3) >>> 5;
                iArr[i13] = (1 << ((i12 + i3) & 31)) | iArr[i13];
            }
            i3++;
        }
        return new re0(iArr, this.f289do + this.f290if);
    }

    @Override // android.support.v4.ay0
    /* renamed from: goto */
    public ay0 mo400goto(fd1 fd1Var) {
        int[] iArrM2249for = fd1Var.m2249for();
        int length = iArrM2249for.length;
        int i = this.f290if;
        if (length != i) {
            throw new ArithmeticException("length mismatch");
        }
        qe0 qe0Var = new qe0(this.f289do, i);
        for (int i2 = this.f290if - 1; i2 >= 0; i2--) {
            int i3 = i2 >>> 5;
            int i4 = i2 & 31;
            int i5 = iArrM2249for[i2] >>> 5;
            int i6 = iArrM2249for[i2] & 31;
            for (int i7 = this.f289do - 1; i7 >= 0; i7--) {
                int[] iArr = qe0Var.f5357goto[i7];
                iArr[i3] = iArr[i3] | (((this.f5357goto[i7][i5] >>> i6) & 1) << i4);
            }
        }
        return qe0Var;
    }

    public int hashCode() {
        int iQ = (((this.f289do * 31) + this.f290if) * 31) + this.f5358this;
        for (int i = 0; i < this.f289do; i++) {
            iQ = (iQ * 31) + q3.q(this.f5357goto[i]);
        }
        return iQ;
    }

    @Override // android.support.v4.ay0
    /* renamed from: if */
    public byte[] mo401if() {
        int i = (this.f290if + 7) >>> 3;
        int i2 = this.f289do;
        int i3 = 8;
        byte[] bArr = new byte[(i * i2) + 8];
        lt0.m4763do(i2, bArr, 0);
        lt0.m4763do(this.f290if, bArr, 4);
        int i4 = this.f290if;
        int i5 = i4 >>> 5;
        int i6 = i4 & 31;
        for (int i7 = 0; i7 < this.f289do; i7++) {
            int i8 = 0;
            while (i8 < i5) {
                lt0.m4763do(this.f5357goto[i7][i8], bArr, i3);
                i8++;
                i3 += 4;
            }
            int i9 = 0;
            while (i9 < i6) {
                bArr[i3] = (byte) ((this.f5357goto[i7][i5] >>> i9) & 255);
                i9 += 8;
                i3++;
            }
        }
        return bArr;
    }

    /* renamed from: import, reason: not valid java name */
    public qe0 m6526import() {
        int i = this.f290if;
        int i2 = this.f289do;
        qe0 qe0Var = new qe0(i2, i + i2);
        int i3 = this.f289do;
        int i4 = (i3 - 1) + this.f290if;
        int i5 = i3 - 1;
        while (i5 >= 0) {
            System.arraycopy(this.f5357goto[i5], 0, qe0Var.f5357goto[i5], 0, this.f5358this);
            int[] iArr = qe0Var.f5357goto[i5];
            int i6 = i4 >> 5;
            iArr[i6] = iArr[i6] | (1 << (i4 & 31));
            i5--;
            i4--;
        }
        return qe0Var;
    }

    /* renamed from: native, reason: not valid java name */
    public qe0 m6527native() {
        int i;
        int i2 = this.f289do;
        qe0 qe0Var = new qe0(i2, this.f290if + i2);
        int i3 = this.f289do;
        int i4 = i3 >> 5;
        int i5 = i3 & 31;
        for (int i6 = i3 - 1; i6 >= 0; i6--) {
            int[][] iArr = qe0Var.f5357goto;
            int[] iArr2 = iArr[i6];
            int i7 = i6 >> 5;
            iArr2[i7] = iArr2[i7] | (1 << (i6 & 31));
            int i8 = 0;
            if (i5 != 0) {
                int i9 = i4;
                while (true) {
                    i = this.f5358this;
                    if (i8 >= i - 1) {
                        break;
                    }
                    int i10 = this.f5357goto[i6][i8];
                    int[][] iArr3 = qe0Var.f5357goto;
                    int[] iArr4 = iArr3[i6];
                    int i11 = i9 + 1;
                    iArr4[i9] = iArr4[i9] | (i10 << i5);
                    int[] iArr5 = iArr3[i6];
                    iArr5[i11] = (i10 >>> (32 - i5)) | iArr5[i11];
                    i8++;
                    i9 = i11;
                }
                int i12 = this.f5357goto[i6][i - 1];
                int[][] iArr6 = qe0Var.f5357goto;
                int[] iArr7 = iArr6[i6];
                int i13 = i9 + 1;
                iArr7[i9] = iArr7[i9] | (i12 << i5);
                if (i13 < qe0Var.f5358this) {
                    int[] iArr8 = iArr6[i6];
                    iArr8[i13] = (i12 >>> (32 - i5)) | iArr8[i13];
                }
            } else {
                System.arraycopy(this.f5357goto[i6], 0, iArr[i6], i4, this.f5358this);
            }
        }
        return qe0Var;
    }

    /* renamed from: package, reason: not valid java name */
    public he2 m6528package(he2 he2Var) {
        int i;
        if (!(he2Var instanceof re0)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (he2Var.f2393do != this.f290if + this.f289do) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM6942class = ((re0) he2Var).m6942class();
        int i2 = this.f289do;
        int[] iArr = new int[(i2 + 31) >>> 5];
        int i3 = i2 >> 5;
        int i4 = i2 & 31;
        int i5 = 0;
        while (true) {
            int i6 = this.f289do;
            if (i5 >= i6) {
                return new re0(iArr, i6);
            }
            int i7 = i5 >> 5;
            int i8 = i5 & 31;
            int i9 = (iArrM6942class[i7] >>> i8) & 1;
            int i10 = i3;
            int i11 = 0;
            if (i4 != 0) {
                while (true) {
                    i = this.f5358this;
                    if (i11 >= i - 1) {
                        break;
                    }
                    int i12 = i10 + 1;
                    i9 ^= ((iArrM6942class[i10] >>> i4) | (iArrM6942class[i12] << (32 - i4))) & this.f5357goto[i5][i11];
                    i11++;
                    i10 = i12;
                }
                int i13 = i10 + 1;
                int i14 = iArrM6942class[i10] >>> i4;
                if (i13 < iArrM6942class.length) {
                    i14 |= iArrM6942class[i13] << (32 - i4);
                }
                i9 ^= this.f5357goto[i5][i - 1] & i14;
            } else {
                while (i11 < this.f5358this) {
                    i9 ^= iArrM6942class[i10] & this.f5357goto[i5][i11];
                    i11++;
                    i10++;
                }
            }
            int i15 = 0;
            for (int i16 = 0; i16 < 32; i16++) {
                i15 ^= i9 & 1;
                i9 >>>= 1;
            }
            if (i15 == 1) {
                iArr[i7] = iArr[i7] | (1 << i8);
            }
            i5++;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public double m6529public() {
        int i = this.f290if & 31;
        int i2 = this.f5358this;
        if (i != 0) {
            i2--;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i3 = 0; i3 < this.f289do; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = this.f5357goto[i3][i4];
                for (int i6 = 0; i6 < 32; i6++) {
                    double d3 = (i5 >>> i6) & 1;
                    Double.isNaN(d3);
                    d += d3;
                    d2 += 1.0d;
                }
            }
            int i7 = this.f5357goto[i3][this.f5358this - 1];
            for (int i8 = 0; i8 < i; i8++) {
                double d4 = (i7 >>> i8) & 1;
                Double.isNaN(d4);
                d += d4;
                d2 += 1.0d;
            }
        }
        return d / d2;
    }

    /* renamed from: return, reason: not valid java name */
    public int[][] m6530return() {
        return this.f5357goto;
    }

    /* renamed from: static, reason: not valid java name */
    public qe0 m6531static() {
        int i = this.f290if;
        int i2 = this.f289do;
        if (i <= i2) {
            throw new ArithmeticException("empty submatrix");
        }
        int i3 = (i2 + 31) >> 5;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i3);
        int i4 = this.f289do;
        int i5 = (1 << (i4 & 31)) - 1;
        if (i5 == 0) {
            i5 = -1;
        }
        for (int i6 = i4 - 1; i6 >= 0; i6--) {
            System.arraycopy(this.f5357goto[i6], 0, iArr[i6], 0, i3);
            int[] iArr2 = iArr[i6];
            int i7 = i3 - 1;
            iArr2[i7] = iArr2[i7] & i5;
        }
        return new qe0(this.f289do, iArr);
    }

    /* renamed from: switch, reason: not valid java name */
    public int m6532switch() {
        return this.f5358this;
    }

    @Override // android.support.v4.ay0
    /* renamed from: this */
    public he2 mo403this(he2 he2Var) {
        if (!(he2Var instanceof re0)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (he2Var.f2393do != this.f290if) {
            throw new ArithmeticException("length mismatch");
        }
        int[] iArrM6942class = ((re0) he2Var).m6942class();
        int[] iArr = new int[(this.f289do + 31) >>> 5];
        int i = 0;
        while (true) {
            int i2 = this.f289do;
            if (i >= i2) {
                return new re0(iArr, i2);
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f5358this; i4++) {
                i3 ^= this.f5357goto[i][i4] & iArrM6942class[i4];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < 32; i6++) {
                i5 ^= (i3 >>> i6) & 1;
            }
            if (i5 == 1) {
                int i7 = i >>> 5;
                iArr[i7] = iArr[i7] | (1 << (i & 31));
            }
            i++;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public ay0 m6533throw() {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, this.f290if, (this.f289do + 31) >>> 5);
        int i = 0;
        while (true) {
            int i2 = this.f289do;
            if (i >= i2) {
                return new qe0(i2, iArr);
            }
            for (int i3 = 0; i3 < this.f290if; i3++) {
                int i4 = i >>> 5;
                int i5 = i & 31;
                if (((this.f5357goto[i][i3 >>> 5] >>> (i3 & 31)) & 1) == 1) {
                    int[] iArr2 = iArr[i3];
                    iArr2[i4] = (1 << i5) | iArr2[i4];
                }
            }
            i++;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public qe0 m6534throws() {
        int i;
        int i2 = this.f290if;
        int i3 = this.f289do;
        if (i2 <= i3) {
            throw new ArithmeticException("empty submatrix");
        }
        int i4 = i3 >> 5;
        int i5 = i3 & 31;
        qe0 qe0Var = new qe0(i3, i2 - i3);
        for (int i6 = this.f289do - 1; i6 >= 0; i6--) {
            int i7 = 0;
            if (i5 != 0) {
                int i8 = i4;
                while (true) {
                    i = qe0Var.f5358this;
                    if (i7 >= i - 1) {
                        break;
                    }
                    int[] iArr = qe0Var.f5357goto[i6];
                    int[][] iArr2 = this.f5357goto;
                    int i9 = i8 + 1;
                    iArr[i7] = (iArr2[i6][i8] >>> i5) | (iArr2[i6][i9] << (32 - i5));
                    i7++;
                    i8 = i9;
                }
                int[][] iArr3 = qe0Var.f5357goto;
                int[][] iArr4 = this.f5357goto;
                int i10 = i8 + 1;
                iArr3[i6][i - 1] = iArr4[i6][i8] >>> i5;
                if (i10 < this.f5358this) {
                    int[] iArr5 = iArr3[i6];
                    int i11 = i - 1;
                    iArr5[i11] = iArr5[i11] | (iArr4[i6][i10] << (32 - i5));
                }
            } else {
                System.arraycopy(this.f5357goto[i6], i4, qe0Var.f5357goto[i6], 0, qe0Var.f5358this);
            }
        }
        return qe0Var;
    }

    @Override // android.support.v4.ay0
    public String toString() {
        int i = this.f290if & 31;
        int i2 = this.f5358this;
        if (i != 0) {
            i2--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < this.f289do; i3++) {
            stringBuffer.append(i3 + ": ");
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = this.f5357goto[i3][i4];
                for (int i6 = 0; i6 < 32; i6++) {
                    if (((i5 >>> i6) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i7 = this.f5357goto[i3][this.f5358this - 1];
            for (int i8 = 0; i8 < i; i8++) {
                if (((i7 >>> i8) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    @Override // android.support.v4.ay0
    /* renamed from: try */
    public boolean mo404try() {
        for (int i = 0; i < this.f289do; i++) {
            for (int i2 = 0; i2 < this.f5358this; i2++) {
                if (this.f5357goto[i][i2] != 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
