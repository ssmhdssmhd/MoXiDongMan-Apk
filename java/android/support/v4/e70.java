package android.support.v4;

import com.google.zxing.aztec.encoder.Cif;
import com.google.zxing.common.reedsolomon.Cdo;
import com.google.zxing.common.reedsolomon.Cnew;

/* loaded from: classes2.dex */
public final class e70 {

    /* renamed from: do, reason: not valid java name */
    public static final int f1272do = 33;

    /* renamed from: for, reason: not valid java name */
    private static final int f1273for = 32;

    /* renamed from: if, reason: not valid java name */
    public static final int f1274if = 0;

    /* renamed from: new, reason: not valid java name */
    private static final int f1275new = 4;

    /* renamed from: try, reason: not valid java name */
    private static final int[] f1276try = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private e70() {
    }

    /* renamed from: break, reason: not valid java name */
    private static int m1665break(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* renamed from: case, reason: not valid java name */
    private static w8 m1666case(w8 w8Var, int i, int i2) {
        int iM9078class = w8Var.m9078class() / i2;
        Cnew cnew = new Cnew(m1670goto(i2));
        int i3 = i / i2;
        int[] iArrM1667do = m1667do(w8Var, i2, i3);
        cnew.m21835if(iArrM1667do, i3 - iM9078class);
        w8 w8Var2 = new w8();
        w8Var2.m9083for(0, i % i2);
        for (int i4 : iArrM1667do) {
            w8Var2.m9083for(i4, i2);
        }
        return w8Var2;
    }

    /* renamed from: do, reason: not valid java name */
    private static int[] m1667do(w8 w8Var, int i, int i2) {
        int[] iArr = new int[i2];
        int iM9078class = w8Var.m9078class() / i;
        for (int i3 = 0; i3 < iM9078class; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= w8Var.m9084goto((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static w8 m1668else(boolean z, int i, int i2) {
        w8 w8Var = new w8();
        if (z) {
            w8Var.m9083for(i - 1, 2);
            w8Var.m9083for(i2 - 1, 6);
            return m1666case(w8Var, 28, 4);
        }
        w8Var.m9083for(i - 1, 5);
        w8Var.m9083for(i2 - 1, 11);
        return m1666case(w8Var, 40, 4);
    }

    /* renamed from: for, reason: not valid java name */
    private static void m1669for(z8 z8Var, boolean z, int i, w8 w8Var) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (w8Var.m9084goto(i3)) {
                    z8Var.m10104throw(i4, i2 - 5);
                }
                if (w8Var.m9084goto(i3 + 7)) {
                    z8Var.m10104throw(i2 + 5, i4);
                }
                if (w8Var.m9084goto(20 - i3)) {
                    z8Var.m10104throw(i4, i2 + 5);
                }
                if (w8Var.m9084goto(27 - i3)) {
                    z8Var.m10104throw(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (w8Var.m9084goto(i3)) {
                z8Var.m10104throw(i5, i2 - 7);
            }
            if (w8Var.m9084goto(i3 + 10)) {
                z8Var.m10104throw(i2 + 7, i5);
            }
            if (w8Var.m9084goto(29 - i3)) {
                z8Var.m10104throw(i5, i2 + 7);
            }
            if (w8Var.m9084goto(39 - i3)) {
                z8Var.m10104throw(i2 - 7, i5);
            }
            i3++;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static Cdo m1670goto(int i) {
        if (i == 4) {
            return Cdo.f17451catch;
        }
        if (i == 6) {
            return Cdo.f17450break;
        }
        if (i == 8) {
            return Cdo.f17454final;
        }
        if (i == 10) {
            return Cdo.f17457this;
        }
        if (i == 12) {
            return Cdo.f17455goto;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
    }

    /* renamed from: if, reason: not valid java name */
    private static void m1671if(z8 z8Var, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    z8Var.m10104throw(i5, i4);
                    z8Var.m10104throw(i5, i6);
                    z8Var.m10104throw(i4, i5);
                    z8Var.m10104throw(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        z8Var.m10104throw(i7, i7);
        int i8 = i7 + 1;
        z8Var.m10104throw(i8, i7);
        z8Var.m10104throw(i7, i8);
        int i9 = i + i2;
        z8Var.m10104throw(i9, i7);
        z8Var.m10104throw(i9, i8);
        z8Var.m10104throw(i9, i9 - 1);
    }

    /* renamed from: new, reason: not valid java name */
    public static k5 m1672new(byte[] bArr) {
        return m1674try(bArr, 33, 0);
    }

    /* renamed from: this, reason: not valid java name */
    public static w8 m1673this(w8 w8Var, int i) {
        w8 w8Var2 = new w8();
        int iM9078class = w8Var.m9078class();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < iM9078class) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= iM9078class || w8Var.m9084goto(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                w8Var2.m9083for(i7, i);
            } else if (i7 == 0) {
                w8Var2.m9083for(i4 | 1, i);
            } else {
                w8Var2.m9083for(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return w8Var2;
    }

    /* renamed from: try, reason: not valid java name */
    public static k5 m1674try(byte[] bArr, int i, int i2) {
        w8 w8VarM1673this;
        int i3;
        boolean z;
        int iAbs;
        int iM1665break;
        int i4;
        w8 w8VarM21765do = new Cif(bArr).m21765do();
        int iM9078class = ((w8VarM21765do.m9078class() * i) / 100) + 11;
        int iM9078class2 = w8VarM21765do.m9078class() + iM9078class;
        int i5 = 0;
        int i6 = 1;
        if (i2 == 0) {
            w8 w8VarM1673this2 = null;
            int i7 = 0;
            int i8 = 0;
            while (i7 <= 32) {
                boolean z2 = i7 <= 3;
                int i9 = z2 ? i7 + 1 : i7;
                int iM1665break2 = m1665break(i9, z2);
                if (iM9078class2 <= iM1665break2) {
                    if (w8VarM1673this2 == null || i8 != f1276try[i9]) {
                        int i10 = f1276try[i9];
                        i8 = i10;
                        w8VarM1673this2 = m1673this(w8VarM21765do, i10);
                    }
                    int i11 = iM1665break2 - (iM1665break2 % i8);
                    if ((!z2 || w8VarM1673this2.m9078class() <= (i8 << 6)) && w8VarM1673this2.m9078class() + iM9078class <= i11) {
                        w8VarM1673this = w8VarM1673this2;
                        i3 = i8;
                        z = z2;
                        iAbs = i9;
                        iM1665break = iM1665break2;
                    }
                }
                i7++;
                i5 = 0;
                i6 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z = i2 < 0;
        iAbs = Math.abs(i2);
        if (iAbs > (z ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
        }
        iM1665break = m1665break(iAbs, z);
        i3 = f1276try[iAbs];
        int i12 = iM1665break - (iM1665break % i3);
        w8VarM1673this = m1673this(w8VarM21765do, i3);
        if (w8VarM1673this.m9078class() + iM9078class > i12) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z && w8VarM1673this.m9078class() > (i3 << 6)) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        w8 w8VarM1666case = m1666case(w8VarM1673this, iM1665break, i3);
        int iM9078class3 = w8VarM1673this.m9078class() / i3;
        w8 w8VarM1668else = m1668else(z, iAbs, iM9078class3);
        int i13 = (z ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i13];
        int i14 = 2;
        if (z) {
            for (int i15 = 0; i15 < i13; i15++) {
                iArr[i15] = i15;
            }
            i4 = i13;
        } else {
            int i16 = i13 / 2;
            i4 = i13 + 1 + (((i16 - 1) / 15) * 2);
            int i17 = i4 / 2;
            for (int i18 = 0; i18 < i16; i18++) {
                iArr[(i16 - i18) - i6] = (i17 - r14) - 1;
                iArr[i16 + i18] = (i18 / 15) + i18 + i17 + i6;
            }
        }
        z8 z8Var = new z8(i4);
        int i19 = 0;
        int i20 = 0;
        while (i19 < iAbs) {
            int i21 = ((iAbs - i19) << i14) + (z ? 9 : 12);
            int i22 = 0;
            while (i22 < i21) {
                int i23 = i22 << 1;
                while (i5 < i14) {
                    if (w8VarM1666case.m9084goto(i20 + i23 + i5)) {
                        int i24 = i19 << 1;
                        z8Var.m10104throw(iArr[i24 + i5], iArr[i24 + i22]);
                    }
                    if (w8VarM1666case.m9084goto((i21 << 1) + i20 + i23 + i5)) {
                        int i25 = i19 << 1;
                        z8Var.m10104throw(iArr[i25 + i22], iArr[((i13 - 1) - i25) - i5]);
                    }
                    if (w8VarM1666case.m9084goto((i21 << 2) + i20 + i23 + i5)) {
                        int i26 = (i13 - 1) - (i19 << 1);
                        z8Var.m10104throw(iArr[i26 - i5], iArr[i26 - i22]);
                    }
                    if (w8VarM1666case.m9084goto((i21 * 6) + i20 + i23 + i5)) {
                        int i27 = i19 << 1;
                        z8Var.m10104throw(iArr[((i13 - 1) - i27) - i22], iArr[i27 + i5]);
                    }
                    i5++;
                    i14 = 2;
                }
                i22++;
                i5 = 0;
                i14 = 2;
            }
            i20 += i21 << 3;
            i19++;
            i5 = 0;
            i14 = 2;
        }
        m1669for(z8Var, z, i4, w8VarM1668else);
        if (z) {
            m1671if(z8Var, i4 / 2, 5);
        } else {
            int i28 = i4 / 2;
            m1671if(z8Var, i28, 7);
            int i29 = 0;
            int i30 = 0;
            while (i30 < (i13 / 2) - 1) {
                for (int i31 = i28 & 1; i31 < i4; i31 += 2) {
                    int i32 = i28 - i29;
                    z8Var.m10104throw(i32, i31);
                    int i33 = i28 + i29;
                    z8Var.m10104throw(i33, i31);
                    z8Var.m10104throw(i31, i32);
                    z8Var.m10104throw(i31, i33);
                }
                i30 += 15;
                i29 += 16;
            }
        }
        k5 k5Var = new k5();
        k5Var.m4245else(z);
        k5Var.m4242break(i4);
        k5Var.m4247goto(iAbs);
        k5Var.m4243case(iM9078class3);
        k5Var.m4250this(z8Var);
        return k5Var;
    }
}
