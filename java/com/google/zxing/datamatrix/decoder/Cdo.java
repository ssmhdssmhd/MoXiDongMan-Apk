package com.google.zxing.datamatrix.decoder;

import android.support.v4.ld0;
import android.support.v4.z8;

/* renamed from: com.google.zxing.datamatrix.decoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final z8 f17470do;

    /* renamed from: for, reason: not valid java name */
    private final Ctry f17471for;

    /* renamed from: if, reason: not valid java name */
    private final z8 f17472if;

    public Cdo(z8 z8Var) throws ld0 {
        int iM10094goto = z8Var.m10094goto();
        if (iM10094goto < 8 || iM10094goto > 144 || (iM10094goto & 1) != 0) {
            throw ld0.getFormatInstance();
        }
        this.f17471for = m21836break(z8Var);
        z8 z8VarM21838do = m21838do(z8Var);
        this.f17470do = z8VarM21838do;
        this.f17472if = new z8(z8VarM21838do.m10091class(), z8VarM21838do.m10094goto());
    }

    /* renamed from: break, reason: not valid java name */
    private static Ctry m21836break(z8 z8Var) throws ld0 {
        return Ctry.m21862goto(z8Var.m10094goto(), z8Var.m10091class());
    }

    /* renamed from: case, reason: not valid java name */
    private int m21837case(int i, int i2) {
        int i3 = i - 1;
        int i4 = (m21840goto(i3, 0, i, i2) ? 1 : 0) << 1;
        int i5 = i2 - 1;
        if (m21840goto(i3, i5, i, i2)) {
            i4 |= 1;
        }
        int i6 = i4 << 1;
        int i7 = i2 - 3;
        if (m21840goto(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        int i9 = i2 - 2;
        if (m21840goto(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        if (m21840goto(0, i5, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        if (m21840goto(1, i7, i, i2)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (m21840goto(1, i9, i, i2)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        return m21840goto(1, i5, i, i2) ? i13 | 1 : i13;
    }

    /* renamed from: do, reason: not valid java name */
    private z8 m21838do(z8 z8Var) {
        int iM21863case = this.f17471for.m21863case();
        int iM21869try = this.f17471for.m21869try();
        if (z8Var.m10094goto() != iM21863case) {
            throw new IllegalArgumentException("Dimension of bitMatrix must match the version size");
        }
        int iM21865for = this.f17471for.m21865for();
        int iM21866if = this.f17471for.m21866if();
        int i = iM21863case / iM21865for;
        int i2 = iM21869try / iM21866if;
        z8 z8Var2 = new z8(i2 * iM21866if, i * iM21865for);
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 * iM21865for;
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = i5 * iM21866if;
                for (int i7 = 0; i7 < iM21865for; i7++) {
                    int i8 = ((iM21865for + 2) * i3) + 1 + i7;
                    int i9 = i4 + i7;
                    for (int i10 = 0; i10 < iM21866if; i10++) {
                        if (z8Var.m10105try(((iM21866if + 2) * i5) + 1 + i10, i8)) {
                            z8Var2.m10104throw(i6 + i10, i9);
                        }
                    }
                }
            }
        }
        return z8Var2;
    }

    /* renamed from: else, reason: not valid java name */
    private int m21839else(int i, int i2) {
        int i3 = (m21840goto(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (m21840goto(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (m21840goto(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m21840goto(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        int i7 = i2 - 1;
        if (m21840goto(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        if (m21840goto(1, i7, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        if (m21840goto(2, i7, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        return m21840goto(3, i7, i, i2) ? i10 | 1 : i10;
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m21840goto(int i, int i2, int i3, int i4) {
        if (i < 0) {
            i += i3;
            i2 += 4 - ((i3 + 4) & 7);
        }
        if (i2 < 0) {
            i2 += i4;
            i += 4 - ((i4 + 4) & 7);
        }
        this.f17472if.m10104throw(i2, i);
        return this.f17470do.m10105try(i2, i);
    }

    /* renamed from: new, reason: not valid java name */
    private int m21841new(int i, int i2) {
        int i3 = i - 1;
        int i4 = (m21840goto(i3, 0, i, i2) ? 1 : 0) << 1;
        if (m21840goto(i3, 1, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m21840goto(i3, 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (m21840goto(0, i2 - 2, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        int i8 = i2 - 1;
        if (m21840goto(0, i8, i, i2)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        if (m21840goto(1, i8, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        if (m21840goto(2, i8, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        return m21840goto(3, i8, i, i2) ? i11 | 1 : i11;
    }

    /* renamed from: this, reason: not valid java name */
    private int m21842this(int i, int i2, int i3, int i4) {
        int i5 = i - 2;
        int i6 = i2 - 2;
        int i7 = (m21840goto(i5, i6, i3, i4) ? 1 : 0) << 1;
        int i8 = i2 - 1;
        if (m21840goto(i5, i8, i3, i4)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        int i10 = i - 1;
        if (m21840goto(i10, i6, i3, i4)) {
            i9 |= 1;
        }
        int i11 = i9 << 1;
        if (m21840goto(i10, i8, i3, i4)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (m21840goto(i10, i2, i3, i4)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        if (m21840goto(i, i6, i3, i4)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (m21840goto(i, i8, i3, i4)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        return m21840goto(i, i2, i3, i4) ? i15 | 1 : i15;
    }

    /* renamed from: try, reason: not valid java name */
    private int m21843try(int i, int i2) {
        int i3 = (m21840goto(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (m21840goto(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (m21840goto(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m21840goto(0, i2 - 4, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (m21840goto(0, i2 - 3, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (m21840goto(0, i2 - 2, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        int i9 = i2 - 1;
        if (m21840goto(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        return m21840goto(1, i9, i, i2) ? i10 | 1 : i10;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m21844for() throws ld0 {
        byte[] bArr = new byte[this.f17471for.m21864else()];
        int iM10094goto = this.f17470do.m10094goto();
        int iM10091class = this.f17470do.m10091class();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        int i3 = 4;
        while (true) {
            if (i3 == iM10094goto && i == 0 && !z) {
                bArr[i2] = (byte) m21841new(iM10094goto, iM10091class);
                i3 -= 2;
                i += 2;
                i2++;
                z = true;
            } else {
                int i4 = iM10094goto - 2;
                if (i3 == i4 && i == 0 && (iM10091class & 3) != 0 && !z2) {
                    bArr[i2] = (byte) m21843try(iM10094goto, iM10091class);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z2 = true;
                } else if (i3 == iM10094goto + 4 && i == 2 && (iM10091class & 7) == 0 && !z3) {
                    bArr[i2] = (byte) m21837case(iM10094goto, iM10091class);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z3 = true;
                } else if (i3 == i4 && i == 0 && (iM10091class & 7) == 4 && !z4) {
                    bArr[i2] = (byte) m21839else(iM10094goto, iM10091class);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z4 = true;
                } else {
                    do {
                        if (i3 < iM10094goto && i >= 0 && !this.f17472if.m10105try(i, i3)) {
                            bArr[i2] = (byte) m21842this(i3, i, iM10094goto, iM10091class);
                            i2++;
                        }
                        i3 -= 2;
                        i += 2;
                        if (i3 < 0) {
                            break;
                        }
                    } while (i < iM10091class);
                    int i5 = i3 + 1;
                    int i6 = i + 3;
                    do {
                        if (i5 >= 0 && i6 < iM10091class && !this.f17472if.m10105try(i6, i5)) {
                            bArr[i2] = (byte) m21842this(i5, i6, iM10094goto, iM10091class);
                            i2++;
                        }
                        i5 += 2;
                        i6 -= 2;
                        if (i5 >= iM10094goto) {
                            break;
                        }
                    } while (i6 >= 0);
                    i3 = i5 + 3;
                    i = i6 + 1;
                }
            }
            if (i3 >= iM10094goto && i >= iM10091class) {
                break;
            }
        }
        if (i2 == this.f17471for.m21864else()) {
            return bArr;
        }
        throw ld0.getFormatInstance();
    }

    /* renamed from: if, reason: not valid java name */
    public Ctry m21845if() {
        return this.f17471for;
    }
}
