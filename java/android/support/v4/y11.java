package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class y11 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        int[] iArrM35316for = Cclass.m35316for(bigInteger);
        Cnew cnewM35454abstract = cnew.m35454abstract();
        Cnew cnewMo377private = cnewM35454abstract.mo377private();
        Cnew cnewMo35335throws = cnew.m35477this().mo35335throws();
        int length = iArrM35316for.length;
        while (true) {
            length--;
            if (length < 0) {
                return cnewMo35335throws;
            }
            int i = iArrM35316for[length];
            cnewMo35335throws = cnewMo35335throws.a((i >> 16) < 0 ? cnewMo377private : cnewM35454abstract).mo35468instanceof(i & 65535);
        }
    }
}
