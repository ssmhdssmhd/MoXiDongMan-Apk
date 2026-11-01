package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class kj2 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cnew cnewM35454abstract = cnew.m35454abstract();
        Cnew cnewMo377private = cnewM35454abstract.mo377private();
        int iBitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        Cnew cnewA = cnewM35454abstract;
        while (true) {
            iBitLength--;
            if (iBitLength <= lowestSetBit) {
                return cnewA.mo35468instanceof(lowestSetBit);
            }
            cnewA = cnewA.a(bigInteger.testBit(iBitLength) ? cnewM35454abstract : cnewMo377private);
        }
    }
}
