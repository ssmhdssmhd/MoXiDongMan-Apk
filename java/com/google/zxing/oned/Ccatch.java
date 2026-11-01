package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.ld0;
import android.support.v4.va2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import java.util.Map;

/* renamed from: com.google.zxing.oned.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccatch extends va2 {

    /* renamed from: do, reason: not valid java name */
    private static final int f17589do = 67;

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.EAN_8) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + Cthrows.m22148throw(str);
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
        boolean[] zArr = new boolean[67];
        int iM22019do = Cimport.m22019do(zArr, 0, Cthrows.f17761case, true) + 0;
        for (int i = 0; i <= 3; i++) {
            iM22019do += Cimport.m22019do(zArr, iM22019do, Cthrows.f17765this[Character.digit(str.charAt(i), 10)], false);
        }
        int iM22019do2 = iM22019do + Cimport.m22019do(zArr, iM22019do, Cthrows.f17762else, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            iM22019do2 += Cimport.m22019do(zArr, iM22019do2, Cthrows.f17765this[Character.digit(str.charAt(i2), 10)], true);
        }
        Cimport.m22019do(zArr, iM22019do2, Cthrows.f17761case, true);
        return zArr;
    }
}
