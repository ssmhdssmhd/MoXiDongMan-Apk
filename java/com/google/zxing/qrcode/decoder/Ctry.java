package com.google.zxing.qrcode.decoder;

import android.support.v4.am1;
import android.support.v4.ei1;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.mx;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.common.reedsolomon.Cdo;
import com.google.zxing.common.reedsolomon.Cfor;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.decoder.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    private final Cfor f17916do = new Cfor(Cdo.f17452class);

    /* renamed from: do, reason: not valid java name */
    private void m22350do(byte[] bArr, int i) throws ll {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f17916do.m21823do(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (am1 unused) {
            throw ll.getChecksumInstance();
        }
    }

    /* renamed from: new, reason: not valid java name */
    private mx m22351new(Cdo cdo, Map<Cnew, ?> map) throws ll, ld0 {
        Cthis cthisM22317try = cdo.m22317try();
        Ccase ccaseM22322new = cdo.m22316new().m22322new();
        Cif[] cifArrM22323if = Cif.m22323if(cdo.m22314for(), cthisM22317try, ccaseM22322new);
        int iM22325for = 0;
        for (Cif cif : cifArrM22323if) {
            iM22325for += cif.m22325for();
        }
        byte[] bArr = new byte[iM22325for];
        int i = 0;
        for (Cif cif2 : cifArrM22323if) {
            byte[] bArrM22324do = cif2.m22324do();
            int iM22325for2 = cif2.m22325for();
            m22350do(bArrM22324do, iM22325for2);
            int i2 = 0;
            while (i2 < iM22325for2) {
                bArr[i] = bArrM22324do[i2];
                i2++;
                i++;
            }
        }
        return Cnew.m22327do(bArr, cthisM22317try, ccaseM22322new, map);
    }

    /* renamed from: case, reason: not valid java name */
    public mx m22352case(boolean[][] zArr, Map<Cnew, ?> map) throws ll, ld0 {
        return m22353for(z8.m10087final(zArr), map);
    }

    /* renamed from: for, reason: not valid java name */
    public mx m22353for(z8 z8Var, Map<Cnew, ?> map) throws ll, ld0 {
        Cdo cdo = new Cdo(z8Var);
        ld0 ld0Var = null;
        try {
            return m22351new(cdo, map);
        } catch (ld0 e) {
            e = null;
            ld0Var = e;
            try {
                cdo.m22312case();
                cdo.m22313else(true);
                cdo.m22317try();
                cdo.m22316new();
                cdo.m22315if();
                mx mxVarM22351new = m22351new(cdo, map);
                mxVarM22351new.m5041super(new ei1(true));
                return mxVarM22351new;
            } catch (ld0 | ll unused) {
                if (ld0Var != null) {
                    throw ld0Var;
                }
                throw e;
            }
        } catch (ll e2) {
            e = e2;
            cdo.m22312case();
            cdo.m22313else(true);
            cdo.m22317try();
            cdo.m22316new();
            cdo.m22315if();
            mx mxVarM22351new2 = m22351new(cdo, map);
            mxVarM22351new2.m5041super(new ei1(true));
            return mxVarM22351new2;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public mx m22354if(z8 z8Var) throws ll, ld0 {
        return m22353for(z8Var, null);
    }

    /* renamed from: try, reason: not valid java name */
    public mx m22355try(boolean[][] zArr) throws ll, ld0 {
        return m22352case(zArr, null);
    }
}
