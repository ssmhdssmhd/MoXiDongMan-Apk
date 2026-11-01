package com.google.zxing.maxicode.decoder;

import android.support.v4.am1;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.mx;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.common.reedsolomon.Cdo;
import java.util.Map;

/* renamed from: com.google.zxing.maxicode.decoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor {

    /* renamed from: for, reason: not valid java name */
    private static final int f17548for = 1;

    /* renamed from: if, reason: not valid java name */
    private static final int f17549if = 0;

    /* renamed from: new, reason: not valid java name */
    private static final int f17550new = 2;

    /* renamed from: do, reason: not valid java name */
    private final com.google.zxing.common.reedsolomon.Cfor f17551do = new com.google.zxing.common.reedsolomon.Cfor(Cdo.f17456super);

    /* renamed from: do, reason: not valid java name */
    private void m21962do(byte[] bArr, int i, int i2, int i3, int i4) throws ll {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[i5 / i6];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & 255;
            }
        }
        try {
            this.f17551do.m21823do(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (am1 unused) {
            throw ll.getChecksumInstance();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public mx m21963for(z8 z8Var, Map<Cnew, ?> map) throws ll, ld0 {
        byte[] bArr;
        byte[] bArrM21961do = new Cdo(z8Var).m21961do();
        m21962do(bArrM21961do, 0, 10, 10, 0);
        int i = bArrM21961do[0] & 15;
        if (i == 2 || i == 3 || i == 4) {
            m21962do(bArrM21961do, 20, 84, 40, 1);
            m21962do(bArrM21961do, 20, 84, 40, 2);
            bArr = new byte[94];
        } else {
            if (i != 5) {
                throw ld0.getFormatInstance();
            }
            m21962do(bArrM21961do, 20, 68, 56, 1);
            m21962do(bArrM21961do, 20, 68, 56, 2);
            bArr = new byte[78];
        }
        System.arraycopy(bArrM21961do, 0, bArr, 0, 10);
        System.arraycopy(bArrM21961do, 20, bArr, 10, bArr.length - 10);
        return Cif.m21966do(bArr, i);
    }

    /* renamed from: if, reason: not valid java name */
    public mx m21964if(z8 z8Var) throws ll, ld0 {
        return m21963for(z8Var, null);
    }
}
