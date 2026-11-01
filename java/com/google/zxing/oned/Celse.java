package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import java.util.Map;

/* renamed from: com.google.zxing.oned.else, reason: invalid class name */
/* loaded from: classes2.dex */
public class Celse extends Cimport {
    /* renamed from: case, reason: not valid java name */
    private static int m22010case(String str, int i) {
        int iIndexOf = 0;
        int i2 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += Ccase.f17584for.indexOf(str.charAt(length)) * i2;
            i2++;
            if (i2 > i) {
                i2 = 1;
            }
        }
        return iIndexOf % 47;
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public static int m22011do(boolean[] zArr, int i, int[] iArr, boolean z) {
        return m22013try(zArr, i, iArr);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m22012else(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static int m22013try(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.CODE_93) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        m22012else(Ccase.f17586try[47], iArr);
        boolean[] zArr = new boolean[length2];
        int iM22013try = m22013try(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            m22012else(Ccase.f17586try[Ccase.f17584for.indexOf(str.charAt(i))], iArr);
            iM22013try += m22013try(zArr, iM22013try, iArr);
        }
        int iM22010case = m22010case(str, 20);
        int[] iArr2 = Ccase.f17586try;
        m22012else(iArr2[iM22010case], iArr);
        int iM22013try2 = iM22013try + m22013try(zArr, iM22013try, iArr);
        m22012else(iArr2[m22010case(str + Ccase.f17584for.charAt(iM22010case), 15)], iArr);
        int iM22013try3 = iM22013try2 + m22013try(zArr, iM22013try2, iArr);
        m22012else(iArr2[47], iArr);
        zArr[iM22013try3 + m22013try(zArr, iM22013try3, iArr)] = true;
        return zArr;
    }
}
