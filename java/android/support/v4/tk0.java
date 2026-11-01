package android.support.v4;

import com.google.zxing.Cif;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class tk0 extends th0 {

    /* renamed from: break, reason: not valid java name */
    private static final int f6595break = 8;

    /* renamed from: catch, reason: not valid java name */
    private static final int f6596catch = 7;

    /* renamed from: class, reason: not valid java name */
    private static final int f6597class = 40;

    /* renamed from: const, reason: not valid java name */
    private static final int f6598const = 24;

    /* renamed from: this, reason: not valid java name */
    private static final int f6599this = 3;

    /* renamed from: goto, reason: not valid java name */
    private z8 f6600goto;

    public tk0(kw0 kw0Var) {
        super(kw0Var);
    }

    /* renamed from: break, reason: not valid java name */
    private static void m7982break(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, z8 z8Var) {
        int i5 = i4 - 8;
        int i6 = i3 - 8;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 << 3;
            int i9 = i8 > i5 ? i5 : i8;
            int iM7983catch = m7983catch(i7, 2, i2 - 3);
            for (int i10 = 0; i10 < i; i10++) {
                int i11 = i10 << 3;
                int i12 = i11 > i6 ? i6 : i11;
                int iM7983catch2 = m7983catch(i10, 2, i - 3);
                int i13 = 0;
                for (int i14 = -2; i14 <= 2; i14++) {
                    int[] iArr2 = iArr[iM7983catch + i14];
                    i13 += iArr2[iM7983catch2 - 2] + iArr2[iM7983catch2 - 1] + iArr2[iM7983catch2] + iArr2[iM7983catch2 + 1] + iArr2[iM7983catch2 + 2];
                }
                m7984class(bArr, i12, i9, i13 / 25, i3, z8Var);
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m7983catch(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: class, reason: not valid java name */
    private static void m7984class(byte[] bArr, int i, int i2, int i3, int i4, z8 z8Var) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    z8Var.m10104throw(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[PHI: r5
      0x009e: PHI (r5v3 int) = (r5v2 int), (r5v6 int), (r5v6 int) binds: [B:31:0x007b, B:33:0x007f, B:34:0x0081] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[][] m7985this(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = 8;
        int i6 = i4 - 8;
        int i7 = i3 - 8;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i);
        int i8 = 0;
        while (i8 < i2) {
            int i9 = i8 << 3;
            if (i9 > i6) {
                i9 = i6;
            }
            int i10 = 0;
            while (i10 < i) {
                int i11 = i10 << 3;
                if (i11 > i7) {
                    i11 = i7;
                }
                int i12 = (i9 * i3) + i11;
                int i13 = 255;
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                while (i14 < i5) {
                    int i17 = i16;
                    int i18 = 0;
                    while (i18 < i5) {
                        int i19 = bArr[i12 + i18] & 255;
                        i15 += i19;
                        if (i19 < i13) {
                            i13 = i19;
                        }
                        if (i19 > i17) {
                            i17 = i19;
                        }
                        i18++;
                        i5 = 8;
                    }
                    if (i17 - i13 > 24) {
                        while (true) {
                            i14++;
                            i12 += i3;
                            if (i14 < 8) {
                                int i20 = 0;
                                for (int i21 = 8; i20 < i21; i21 = 8) {
                                    i15 += bArr[i12 + i20] & 255;
                                    i20++;
                                }
                            }
                        }
                    }
                    i14++;
                    i12 += i3;
                    i16 = i17;
                    i5 = 8;
                }
                int i22 = i15 >> 6;
                if (i16 - i13 <= 24) {
                    i22 = i13 / 2;
                    if (i8 > 0 && i10 > 0) {
                        int i23 = i8 - 1;
                        int i24 = i10 - 1;
                        int i25 = ((iArr[i23][i10] + (iArr[i8][i24] * 2)) + iArr[i23][i24]) / 4;
                        if (i13 < i25) {
                            i22 = i25;
                        }
                    }
                }
                iArr[i8][i10] = i22;
                i10++;
                i5 = 8;
            }
            i8++;
            i5 = 8;
        }
        return iArr;
    }

    @Override // android.support.v4.th0, com.google.zxing.Cif
    /* renamed from: do */
    public Cif mo7893do(kw0 kw0Var) {
        return new tk0(kw0Var);
    }

    @Override // android.support.v4.th0, com.google.zxing.Cif
    /* renamed from: if */
    public z8 mo7895if() throws j41 {
        z8 z8Var = this.f6600goto;
        if (z8Var != null) {
            return z8Var;
        }
        kw0 kw0VarM21960try = m21960try();
        int iM4524try = kw0VarM21960try.m4524try();
        int iM4521if = kw0VarM21960try.m4521if();
        if (iM4524try < 40 || iM4521if < 40) {
            this.f6600goto = super.mo7895if();
        } else {
            byte[] bArrMo4519for = kw0VarM21960try.mo4519for();
            int i = iM4524try >> 3;
            if ((iM4524try & 7) != 0) {
                i++;
            }
            int i2 = i;
            int i3 = iM4521if >> 3;
            if ((iM4521if & 7) != 0) {
                i3++;
            }
            int i4 = i3;
            int[][] iArrM7985this = m7985this(bArrMo4519for, i2, i4, iM4524try, iM4521if);
            z8 z8Var2 = new z8(iM4524try, iM4521if);
            m7982break(bArrMo4519for, i2, i4, iM4524try, iM4521if, iArrM7985this, z8Var2);
            this.f6600goto = z8Var2;
        }
        return this.f6600goto;
    }
}
