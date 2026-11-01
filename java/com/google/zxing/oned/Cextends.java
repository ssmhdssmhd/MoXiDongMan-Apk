package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.ld0;
import android.support.v4.va2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import java.util.Map;

/* renamed from: com.google.zxing.oned.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cextends extends va2 {

    /* renamed from: do, reason: not valid java name */
    private static final int f17615do = 51;

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.UPC_E) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + Cthrows.m22148throw(Cdefault.m22001while(str));
            } catch (ld0 e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!Cthrows.m22145else(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (ld0 unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int iDigit = Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i = Cdefault.f17603const[iDigit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iM22019do = Cimport.m22019do(zArr, 0, Cthrows.f17761case, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit2 = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit2 += 10;
            }
            iM22019do += Cimport.m22019do(zArr, iM22019do, Cthrows.f17760break[iDigit2], false);
        }
        Cimport.m22019do(zArr, iM22019do, Cthrows.f17763goto, false);
        return zArr;
    }
}
