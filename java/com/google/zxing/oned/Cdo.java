package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cnew;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.zxing.oned.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo extends Cwhile {

    /* renamed from: new, reason: not valid java name */
    private static final float f17609new = 2.0f;

    /* renamed from: this, reason: not valid java name */
    private static final int f17610this = 3;

    /* renamed from: try, reason: not valid java name */
    private static final float f17611try = 1.5f;

    /* renamed from: case, reason: not valid java name */
    private static final String f17606case = "0123456789-$:/.+ABCD";

    /* renamed from: else, reason: not valid java name */
    public static final char[] f17607else = f17606case.toCharArray();

    /* renamed from: goto, reason: not valid java name */
    public static final int[] f17608goto = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: break, reason: not valid java name */
    private static final char[] f17605break = {'A', 'B', 'C', 'D'};

    /* renamed from: do, reason: not valid java name */
    private final StringBuilder f17612do = new StringBuilder(20);

    /* renamed from: if, reason: not valid java name */
    private int[] f17614if = new int[80];

    /* renamed from: for, reason: not valid java name */
    private int f17613for = 0;

    /* renamed from: break, reason: not valid java name */
    private int m22004break(int i) {
        int i2 = i + 7;
        if (i2 >= this.f17613for) {
            return -1;
        }
        int[] iArr = this.f17614if;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7 += 2) {
            int i8 = iArr[i7];
            if (i8 < i5) {
                i5 = i8;
            }
            if (i8 > i6) {
                i6 = i8;
            }
        }
        int i9 = (i5 + i6) / 2;
        int i10 = 0;
        for (int i11 = i + 1; i11 < i2; i11 += 2) {
            int i12 = iArr[i11];
            if (i12 < i3) {
                i3 = i12;
            }
            if (i12 > i10) {
                i10 = i12;
            }
        }
        int i13 = (i3 + i10) / 2;
        int i14 = 128;
        int i15 = 0;
        for (int i16 = 0; i16 < 7; i16++) {
            i14 >>= 1;
            if (iArr[i + i16] > ((i16 & 1) == 0 ? i9 : i13)) {
                i15 |= i14;
            }
        }
        while (true) {
            int[] iArr2 = f17608goto;
            if (i4 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i4] == i15) {
                return i4;
            }
            i4++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m22005case(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m22006catch(int i) throws j41 {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.f17612do.length() - 1;
        int i2 = 0;
        int i3 = i;
        int i4 = 0;
        while (true) {
            int i5 = f17608goto[this.f17612do.charAt(i4)];
            for (int i6 = 6; i6 >= 0; i6--) {
                int i7 = (i6 & 1) + ((i5 & 1) << 1);
                iArr[i7] = iArr[i7] + this.f17614if[i3 + i6];
                iArr2[i7] = iArr2[i7] + 1;
                i5 >>= 1;
            }
            if (i4 >= length) {
                break;
            }
            i3 += 8;
            i4++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i8 = 0; i8 < 2; i8++) {
            fArr2[i8] = 0.0f;
            int i9 = i8 + 2;
            fArr2[i9] = ((iArr[i8] / iArr2[i8]) + (iArr[i9] / iArr2[i9])) / f17609new;
            fArr[i8] = fArr2[i9];
            fArr[i9] = ((iArr[i9] * f17609new) + 1.5f) / iArr2[i9];
        }
        loop3: while (true) {
            int i10 = f17608goto[this.f17612do.charAt(i2)];
            for (int i11 = 6; i11 >= 0; i11--) {
                int i12 = (i11 & 1) + ((i10 & 1) << 1);
                float f = this.f17614if[i + i11];
                if (f < fArr2[i12] || f > fArr[i12]) {
                    break loop3;
                }
                i10 >>= 1;
            }
            if (i2 >= length) {
                return;
            }
            i += 8;
            i2++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: else, reason: not valid java name */
    private void m22007else(int i) {
        int[] iArr = this.f17614if;
        int i2 = this.f17613for;
        iArr[i2] = i;
        int i3 = i2 + 1;
        this.f17613for = i3;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[i3 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f17614if = iArr2;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private int m22008goto() throws j41 {
        for (int i = 1; i < this.f17613for; i += 2) {
            int iM22004break = m22004break(i);
            if (iM22004break != -1 && m22005case(f17605break, f17607else[iM22004break])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.f17614if[i3];
                }
                if (i == 1 || this.f17614if[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: this, reason: not valid java name */
    private void m22009this(w8 w8Var) throws j41 {
        int i = 0;
        this.f17613for = 0;
        int iM9077catch = w8Var.m9077catch(0);
        int iM9078class = w8Var.m9078class();
        if (iM9077catch >= iM9078class) {
            throw j41.getNotFoundInstance();
        }
        boolean z = true;
        while (iM9077catch < iM9078class) {
            if (w8Var.m9084goto(iM9077catch) != z) {
                i++;
            } else {
                m22007else(i);
                z = !z;
                i = 1;
            }
            iM9077catch++;
        }
        m22007else(i);
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws j41 {
        Arrays.fill(this.f17614if, 0);
        m22009this(w8Var);
        int iM22008goto = m22008goto();
        this.f17612do.setLength(0);
        int i2 = iM22008goto;
        do {
            int iM22004break = m22004break(i2);
            if (iM22004break == -1) {
                throw j41.getNotFoundInstance();
            }
            this.f17612do.append((char) iM22004break);
            i2 += 8;
            if (this.f17612do.length() > 1 && m22005case(f17605break, f17607else[iM22004break])) {
                break;
            }
        } while (i2 < this.f17613for);
        int i3 = i2 - 1;
        int i4 = this.f17614if[i3];
        int i5 = 0;
        for (int i6 = -8; i6 < -1; i6++) {
            i5 += this.f17614if[i2 + i6];
        }
        if (i2 < this.f17613for && i4 < i5 / 2) {
            throw j41.getNotFoundInstance();
        }
        m22006catch(iM22008goto);
        for (int i7 = 0; i7 < this.f17612do.length(); i7++) {
            StringBuilder sb = this.f17612do;
            sb.setCharAt(i7, f17607else[sb.charAt(i7)]);
        }
        char cCharAt = this.f17612do.charAt(0);
        char[] cArr = f17605break;
        if (!m22005case(cArr, cCharAt)) {
            throw j41.getNotFoundInstance();
        }
        StringBuilder sb2 = this.f17612do;
        if (!m22005case(cArr, sb2.charAt(sb2.length() - 1))) {
            throw j41.getNotFoundInstance();
        }
        if (this.f17612do.length() <= 3) {
            throw j41.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(Cnew.RETURN_CODABAR_START_END)) {
            StringBuilder sb3 = this.f17612do;
            sb3.deleteCharAt(sb3.length() - 1);
            this.f17612do.deleteCharAt(0);
        }
        int i8 = 0;
        for (int i9 = 0; i9 < iM22008goto; i9++) {
            i8 += this.f17614if[i9];
        }
        float f = i8;
        while (iM22008goto < i3) {
            i8 += this.f17614if[iM22008goto];
            iM22008goto++;
        }
        float f2 = i;
        return new wn1(this.f17612do.toString(), null, new yn1[]{new yn1(f, f2), new yn1(i8, f2)}, com.google.zxing.Cdo.CODABAR);
    }
}
