package com.google.zxing.qrcode;

import android.support.v4.ci1;
import android.support.v4.ig2;
import android.support.v4.z8;
import android.support.v4.zd;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import com.google.zxing.qrcode.decoder.Ccase;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif implements Writer {

    /* renamed from: do, reason: not valid java name */
    private static final int f17954do = 4;

    /* renamed from: do, reason: not valid java name */
    private static z8 m22447do(ci1 ci1Var, int i, int i2, int i3) {
        zd zdVarM942for = ci1Var.m942for();
        if (zdVarM942for == null) {
            throw new IllegalStateException();
        }
        int iM10160try = zdVarM942for.m10160try();
        int iM10159new = zdVarM942for.m10159new();
        int i4 = i3 << 1;
        int i5 = iM10160try + i4;
        int i6 = i4 + iM10159new;
        int iMax = Math.max(i, i5);
        int iMax2 = Math.max(i2, i6);
        int iMin = Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iM10160try * iMin)) / 2;
        int i8 = (iMax2 - (iM10159new * iMin)) / 2;
        z8 z8Var = new z8(iMax, iMax2);
        int i9 = 0;
        while (i9 < iM10159new) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iM10160try) {
                if (zdVarM942for.m10158if(i11, i9) == 1) {
                    z8Var.m10106while(i10, i8, iMin, iMin);
                }
                i11++;
                i10 += iMin;
            }
            i9++;
            i8 += iMin;
        }
        return z8Var;
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2) throws ig2 {
        return encode(str, cdo, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2, NumberFormatException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (cdo != Cdo.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(cdo)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        Ccase ccaseValueOf = Ccase.L;
        int i3 = 4;
        if (map != null) {
            Ctry ctry = Ctry.ERROR_CORRECTION;
            if (map.containsKey(ctry)) {
                ccaseValueOf = Ccase.valueOf(map.get(ctry).toString());
            }
            Ctry ctry2 = Ctry.MARGIN;
            if (map.containsKey(ctry2)) {
                i3 = Integer.parseInt(map.get(ctry2).toString());
            }
        }
        return m22447do(com.google.zxing.qrcode.encoder.Cif.m22424throw(str, ccaseValueOf, map), i, i2, i3);
    }
}
