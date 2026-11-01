package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class z11 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        int[] iArrM35316for = Cclass.m35316for(bigInteger);
        Cnew cnewMo35335throws = cnew.m35477this().mo35335throws();
        int i = 0;
        int i2 = 0;
        while (i < iArrM35316for.length) {
            int i3 = iArrM35316for[i];
            int i4 = i3 >> 16;
            cnew = cnew.mo35468instanceof(i2 + (i3 & 65535));
            cnewMo35335throws = cnewMo35335throws.mo373do(i4 < 0 ? cnew.mo377private() : cnew);
            i++;
            i2 = 1;
        }
        return cnewMo35335throws;
    }
}
