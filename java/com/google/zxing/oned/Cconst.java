package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import java.util.Map;

/* renamed from: com.google.zxing.oned.const, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cconst extends Cwhile {

    /* renamed from: case, reason: not valid java name */
    private static final int f17593case = 1;

    /* renamed from: for, reason: not valid java name */
    private static final float f17595for = 0.5f;

    /* renamed from: if, reason: not valid java name */
    private static final float f17597if = 0.38f;

    /* renamed from: new, reason: not valid java name */
    private static final int f17598new = 3;

    /* renamed from: try, reason: not valid java name */
    private static final int f17600try = 2;

    /* renamed from: do, reason: not valid java name */
    private int f17601do = -1;

    /* renamed from: else, reason: not valid java name */
    private static final int[] f17594else = {6, 8, 10, 12, 14};

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f17596goto = {1, 1, 1, 1};

    /* renamed from: this, reason: not valid java name */
    private static final int[][] f17599this = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* renamed from: break, reason: not valid java name */
    private static final int[][] f17592break = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: break, reason: not valid java name */
    private static int[] m21993break(w8 w8Var, int i, int[] iArr) throws j41 {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int iM9078class = w8Var.m9078class();
        int i2 = i;
        boolean z = false;
        int i3 = 0;
        while (i < iM9078class) {
            if (w8Var.m9084goto(i) != z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if (i3 != length - 1) {
                    i3++;
                } else {
                    if (Cwhile.m22151for(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i2, i};
                    }
                    i2 += iArr2[0] + iArr2[1];
                    int i4 = i3 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i3] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            i++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: case, reason: not valid java name */
    private static int m21994case(int[] iArr) throws j41 {
        int length = f17592break.length;
        float f = 0.38f;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            float fM22151for = Cwhile.m22151for(iArr, f17592break[i2], 0.5f);
            if (fM22151for < f) {
                i = i2;
                f = fM22151for;
            } else if (fM22151for == f) {
                i = -1;
            }
        }
        if (i >= 0) {
            return i % 10;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m21995catch(w8 w8Var) throws j41 {
        int iM9078class = w8Var.m9078class();
        int iM9076break = w8Var.m9076break(0);
        if (iM9076break != iM9078class) {
            return iM9076break;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: class, reason: not valid java name */
    private void m21996class(w8 w8Var, int i) throws j41 {
        int i2 = this.f17601do * 10;
        if (i2 >= i) {
            i2 = i;
        }
        for (int i3 = i - 1; i2 > 0 && i3 >= 0 && !w8Var.m9084goto(i3); i3--) {
            i2--;
        }
        if (i2 != 0) {
            throw j41.getNotFoundInstance();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private int[] m21997else(w8 w8Var) throws j41 {
        int[] iArrM21993break;
        w8Var.m9092throw();
        try {
            int iM21995catch = m21995catch(w8Var);
            try {
                iArrM21993break = m21993break(w8Var, iM21995catch, f17599this[0]);
            } catch (j41 unused) {
                iArrM21993break = m21993break(w8Var, iM21995catch, f17599this[1]);
            }
            m21996class(w8Var, iArrM21993break[0]);
            int i = iArrM21993break[0];
            iArrM21993break[0] = w8Var.m9078class() - iArrM21993break[1];
            iArrM21993break[1] = w8Var.m9078class() - i;
            return iArrM21993break;
        } finally {
            w8Var.m9092throw();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m21998goto(w8 w8Var, int i, int i2, StringBuilder sb) throws j41 {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            Cwhile.m22153new(w8Var, i, iArr);
            for (int i3 = 0; i3 < 5; i3++) {
                int i4 = i3 * 2;
                iArr2[i3] = iArr[i4];
                iArr3[i3] = iArr[i4 + 1];
            }
            sb.append((char) (m21994case(iArr2) + 48));
            sb.append((char) (m21994case(iArr3) + 48));
            for (int i5 = 0; i5 < 10; i5++) {
                i += iArr[i5];
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private int[] m21999this(w8 w8Var) throws j41 {
        int[] iArrM21993break = m21993break(w8Var, m21995catch(w8Var), f17596goto);
        this.f17601do = (iArrM21993break[1] - iArrM21993break[0]) / 4;
        m21996class(w8Var, iArrM21993break[0]);
        return iArrM21993break;
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ld0, j41 {
        boolean z;
        int[] iArrM21999this = m21999this(w8Var);
        int[] iArrM21997else = m21997else(w8Var);
        StringBuilder sb = new StringBuilder(20);
        m21998goto(w8Var, iArrM21999this[1], iArrM21997else[0], sb);
        String string = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(Cnew.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = f17594else;
        }
        int length = string.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw ld0.getFormatInstance();
        }
        float f = i;
        return new wn1(string, null, new yn1[]{new yn1(iArrM21999this[1], f), new yn1(iArrM21997else[0], f)}, Cdo.ITF);
    }
}
