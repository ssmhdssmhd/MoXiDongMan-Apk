package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class e20 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cnew[] cnewArr = new Cnew[2];
        cnewArr[0] = cnew.m35477this().mo35335throws();
        cnewArr[1] = cnew;
        int iBitLength = bigInteger.bitLength();
        for (int i = 0; i < iBitLength; i++) {
            boolean zTestBit = bigInteger.testBit(i);
            int i2 = 1 - (zTestBit ? 1 : 0);
            cnewArr[i2] = cnewArr[i2].a(cnewArr[zTestBit ? 1 : 0]);
        }
        return cnewArr[0];
    }
}
