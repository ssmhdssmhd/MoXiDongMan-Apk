package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import java.util.Map;

/* renamed from: com.google.zxing.oned.final, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfinal extends Cimport {

    /* renamed from: for, reason: not valid java name */
    private static final int f17617for = 3;

    /* renamed from: new, reason: not valid java name */
    private static final int f17619new = 1;

    /* renamed from: do, reason: not valid java name */
    private static final int[] f17616do = {1, 1, 1, 1};

    /* renamed from: if, reason: not valid java name */
    private static final int[] f17618if = {3, 1, 1};

    /* renamed from: try, reason: not valid java name */
    private static final int[][] f17620try = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.ITF) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iM22019do = Cimport.m22019do(zArr, 0, f17616do, true);
        for (int i = 0; i < length; i += 2) {
            int iDigit = Character.digit(str.charAt(i), 10);
            int iDigit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i2 * 2;
                int[][] iArr2 = f17620try;
                iArr[i3] = iArr2[iDigit][i2];
                iArr[i3 + 1] = iArr2[iDigit2][i2];
            }
            iM22019do += Cimport.m22019do(zArr, iM22019do, iArr, true);
        }
        Cimport.m22019do(zArr, iM22019do, f17618if, true);
        return zArr;
    }
}
