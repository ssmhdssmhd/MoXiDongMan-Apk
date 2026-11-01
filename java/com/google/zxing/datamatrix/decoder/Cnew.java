package com.google.zxing.datamatrix.decoder;

import android.support.v4.am1;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.mx;
import android.support.v4.z8;
import com.google.zxing.common.reedsolomon.Cdo;
import com.google.zxing.common.reedsolomon.Cfor;

/* renamed from: com.google.zxing.datamatrix.decoder.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final Cfor f17482do = new Cfor(Cdo.f17453const);

    /* renamed from: do, reason: not valid java name */
    private void m21858do(byte[] bArr, int i) throws ll {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f17482do.m21823do(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (am1 unused) {
            throw ll.getChecksumInstance();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public mx m21859for(boolean[][] zArr) throws ll, ld0 {
        return m21860if(z8.m10087final(zArr));
    }

    /* renamed from: if, reason: not valid java name */
    public mx m21860if(z8 z8Var) throws ll, ld0 {
        Cdo cdo = new Cdo(z8Var);
        Cif[] cifArrM21855if = Cif.m21855if(cdo.m21844for(), cdo.m21845if());
        int iM21857for = 0;
        for (Cif cif : cifArrM21855if) {
            iM21857for += cif.m21857for();
        }
        byte[] bArr = new byte[iM21857for];
        int length = cifArrM21855if.length;
        for (int i = 0; i < length; i++) {
            Cif cif2 = cifArrM21855if[i];
            byte[] bArrM21856do = cif2.m21856do();
            int iM21857for2 = cif2.m21857for();
            m21858do(bArrM21856do, iM21857for2);
            for (int i2 = 0; i2 < iM21857for2; i2++) {
                bArr[(i2 * length) + i] = bArrM21856do[i2];
            }
        }
        return Cfor.m21847do(bArr);
    }
}
