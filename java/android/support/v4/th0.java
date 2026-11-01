package android.support.v4;

import com.google.zxing.Cif;

/* loaded from: classes2.dex */
public class th0 extends Cif {

    /* renamed from: case, reason: not valid java name */
    private static final int f6525case = 32;

    /* renamed from: else, reason: not valid java name */
    private static final byte[] f6526else = new byte[0];

    /* renamed from: new, reason: not valid java name */
    private static final int f6527new = 5;

    /* renamed from: try, reason: not valid java name */
    private static final int f6528try = 3;

    /* renamed from: for, reason: not valid java name */
    private final int[] f6529for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f6530if;

    public th0(kw0 kw0Var) {
        super(kw0Var);
        this.f6530if = f6526else;
        this.f6529for = new int[32];
    }

    /* renamed from: else, reason: not valid java name */
    private static int m7891else(int[] iArr) throws j41 {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i6) {
                i5 = i7;
                i6 = i9;
            }
        }
        if (i3 <= i5) {
            int i10 = i3;
            i3 = i5;
            i5 = i10;
        }
        if (i3 - i5 <= length / 16) {
            throw j41.getNotFoundInstance();
        }
        int i11 = i3 - 1;
        int i12 = i11;
        int i13 = -1;
        while (i11 > i5) {
            int i14 = i11 - i5;
            int i15 = i14 * i14 * (i3 - i11) * (i2 - iArr[i11]);
            if (i15 > i13) {
                i12 = i11;
                i13 = i15;
            }
            i11--;
        }
        return i12 << 3;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m7892goto(int i) {
        if (this.f6530if.length < i) {
            this.f6530if = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.f6529for[i2] = 0;
        }
    }

    @Override // com.google.zxing.Cif
    /* renamed from: do, reason: not valid java name */
    public Cif mo7893do(kw0 kw0Var) {
        return new th0(kw0Var);
    }

    @Override // com.google.zxing.Cif
    /* renamed from: for, reason: not valid java name */
    public w8 mo7894for(int i, w8 w8Var) throws j41 {
        kw0 kw0VarM21960try = m21960try();
        int iM4524try = kw0VarM21960try.m4524try();
        if (w8Var == null || w8Var.m9078class() < iM4524try) {
            w8Var = new w8(iM4524try);
        } else {
            w8Var.m9088new();
        }
        m7892goto(iM4524try);
        byte[] bArrMo4522new = kw0VarM21960try.mo4522new(i, this.f6530if);
        int[] iArr = this.f6529for;
        for (int i2 = 0; i2 < iM4524try; i2++) {
            int i3 = (bArrMo4522new[i2] & 255) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int iM7891else = m7891else(iArr);
        if (iM4524try < 3) {
            for (int i4 = 0; i4 < iM4524try; i4++) {
                if ((bArrMo4522new[i4] & 255) < iM7891else) {
                    w8Var.m9094while(i4);
                }
            }
        } else {
            int i5 = 1;
            int i6 = bArrMo4522new[0] & 255;
            int i7 = bArrMo4522new[1] & 255;
            while (i5 < iM4524try - 1) {
                int i8 = i5 + 1;
                int i9 = bArrMo4522new[i8] & 255;
                if ((((i7 << 2) - i6) - i9) / 2 < iM7891else) {
                    w8Var.m9094while(i5);
                }
                i6 = i7;
                i5 = i8;
                i7 = i9;
            }
        }
        return w8Var;
    }

    @Override // com.google.zxing.Cif
    /* renamed from: if, reason: not valid java name */
    public z8 mo7895if() throws j41 {
        kw0 kw0VarM21960try = m21960try();
        int iM4524try = kw0VarM21960try.m4524try();
        int iM4521if = kw0VarM21960try.m4521if();
        z8 z8Var = new z8(iM4524try, iM4521if);
        m7892goto(iM4524try);
        int[] iArr = this.f6529for;
        for (int i = 1; i < 5; i++) {
            byte[] bArrMo4522new = kw0VarM21960try.mo4522new((iM4521if * i) / 5, this.f6530if);
            int i2 = (iM4524try << 2) / 5;
            for (int i3 = iM4524try / 5; i3 < i2; i3++) {
                int i4 = (bArrMo4522new[i3] & 255) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int iM7891else = m7891else(iArr);
        byte[] bArrMo4519for = kw0VarM21960try.mo4519for();
        for (int i5 = 0; i5 < iM4521if; i5++) {
            int i6 = i5 * iM4524try;
            for (int i7 = 0; i7 < iM4524try; i7++) {
                if ((bArrMo4519for[i6 + i7] & 255) < iM7891else) {
                    z8Var.m10104throw(i7, i5);
                }
            }
        }
        return z8Var;
    }
}
