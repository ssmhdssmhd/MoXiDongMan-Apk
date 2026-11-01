package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.ld0;
import android.support.v4.va2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import java.util.Map;

/* renamed from: com.google.zxing.oned.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis extends va2 {

    /* renamed from: do, reason: not valid java name */
    private static final int f17758do = 95;

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.EAN_13) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + Cthrows.m22148throw(str);
            } catch (ld0 e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!Cthrows.m22145else(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (ld0 unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int i = Cgoto.f17638class[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iM22019do = Cimport.m22019do(zArr, 0, Cthrows.f17761case, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit += 10;
            }
            iM22019do += Cimport.m22019do(zArr, iM22019do, Cthrows.f17760break[iDigit], false);
        }
        int iM22019do2 = iM22019do + Cimport.m22019do(zArr, iM22019do, Cthrows.f17762else, false);
        for (int i3 = 7; i3 <= 12; i3++) {
            iM22019do2 += Cimport.m22019do(zArr, iM22019do2, Cthrows.f17765this[Character.digit(str.charAt(i3), 10)], true);
        }
        Cimport.m22019do(zArr, iM22019do2, Cthrows.f17761case, true);
        return zArr;
    }
}
