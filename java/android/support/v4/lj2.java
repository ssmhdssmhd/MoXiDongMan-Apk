package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class lj2 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cnew cnewMo35335throws = cnew.m35477this().mo35335throws();
        int iBitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        Cnew cnewMo35468instanceof = cnew.mo35468instanceof(lowestSetBit);
        while (true) {
            lowestSetBit++;
            if (lowestSetBit >= iBitLength) {
                return cnewMo35335throws.mo373do(cnewMo35468instanceof);
            }
            cnewMo35335throws = cnewMo35335throws.mo373do(bigInteger.testBit(lowestSetBit) ? cnewMo35468instanceof : cnewMo35468instanceof.mo377private());
            cnewMo35468instanceof = cnewMo35468instanceof.mo378synchronized();
        }
    }
}
