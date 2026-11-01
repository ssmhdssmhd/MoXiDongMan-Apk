package org.bouncycastle.math.ec;

import android.support.v4.Cvolatile;
import android.support.v4.ff2;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.ec.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends Cvolatile {
    /* renamed from: for, reason: not valid java name */
    public int m35307for(int i) {
        return Cclass.m35310catch(i);
    }

    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cnew cnewMo373do;
        int iMax = Math.max(2, Math.min(16, m35307for(bigInteger.bitLength())));
        ff2 ff2VarM35315final = Cclass.m35315final(cnew, iMax, true);
        Cnew[] cnewArrM2269do = ff2VarM35315final.m2269do();
        Cnew[] cnewArrM2271if = ff2VarM35315final.m2271if();
        int[] iArrM35319new = Cclass.m35319new(iMax, bigInteger);
        Cnew cnewMo35335throws = cnew.m35477this().mo35335throws();
        int length = iArrM35319new.length;
        if (length > 1) {
            length--;
            int i = iArrM35319new[length];
            int i2 = i >> 16;
            int i3 = i & 65535;
            int iAbs = Math.abs(i2);
            Cnew[] cnewArr = i2 < 0 ? cnewArrM2271if : cnewArrM2269do;
            if ((iAbs << 2) < (1 << iMax)) {
                byte b = Ccase.f31797goto[iAbs];
                int i4 = iMax - b;
                cnewMo373do = cnewArr[((1 << (iMax - 1)) - 1) >>> 1].mo373do(cnewArr[(((iAbs ^ (1 << (b - 1))) << i4) + 1) >>> 1]);
                i3 -= i4;
            } else {
                cnewMo373do = cnewArr[iAbs >>> 1];
            }
            cnewMo35335throws = cnewMo373do.mo35468instanceof(i3);
        }
        while (length > 0) {
            length--;
            int i5 = iArrM35319new[length];
            int i6 = i5 >> 16;
            cnewMo35335throws = cnewMo35335throws.a((i6 < 0 ? cnewArrM2271if : cnewArrM2269do)[Math.abs(i6) >>> 1]).mo35468instanceof(i5 & 65535);
        }
        return cnewMo35335throws;
    }
}
