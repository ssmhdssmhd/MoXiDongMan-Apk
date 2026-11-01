package org.bouncycastle.math.ec;

import android.support.v4.Cvolatile;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.ec.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Cvolatile {

    /* renamed from: do, reason: not valid java name */
    public int f31993do;

    /* renamed from: if, reason: not valid java name */
    public int f31994if;

    public Celse() {
        this(2, 4);
    }

    public Celse(int i, int i2) {
        this.f31993do = i;
        this.f31994if = i2;
    }

    /* renamed from: for, reason: not valid java name */
    public Cif m35375for(Cif cif, int i) {
        if (cif.m35438public() == i) {
            return cif;
        }
        if (cif.mo35337volatile(i)) {
            return cif.m35444try().m35451if(i).m35449do();
        }
        throw new IllegalArgumentException("Coordinate system " + i + " not supported by this curve");
    }

    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cif cifM35477this = cnew.m35477this();
        Cif cifM35375for = m35375for(cifM35477this, this.f31993do);
        Cif cifM35375for2 = m35375for(cifM35477this, this.f31994if);
        int[] iArrM35316for = Cclass.m35316for(bigInteger);
        Cnew cnewMo35335throws = cifM35375for.mo35335throws();
        Cnew cnewMo35435package = cifM35375for2.mo35435package(cnew);
        int i = 0;
        Cnew cnewMo373do = cnewMo35335throws;
        int i2 = 0;
        while (i < iArrM35316for.length) {
            int i3 = iArrM35316for[i];
            int i4 = i3 >> 16;
            cnewMo35435package = cnewMo35435package.mo35468instanceof(i2 + (i3 & 65535));
            Cnew cnewMo35435package2 = cifM35375for.mo35435package(cnewMo35435package);
            if (i4 < 0) {
                cnewMo35435package2 = cnewMo35435package2.mo377private();
            }
            cnewMo373do = cnewMo373do.mo373do(cnewMo35435package2);
            i++;
            i2 = 1;
        }
        return cifM35477this.mo35435package(cnewMo373do);
    }
}
