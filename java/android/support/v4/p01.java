package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class p01 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cnew[] cnewArr = new Cnew[2];
        cnewArr[0] = cnew.m35477this().mo35335throws();
        cnewArr[1] = cnew;
        int iBitLength = bigInteger.bitLength();
        while (true) {
            iBitLength--;
            if (iBitLength < 0) {
                return cnewArr[0];
            }
            boolean zTestBit = bigInteger.testBit(iBitLength);
            int i = 1 - (zTestBit ? 1 : 0);
            cnewArr[i] = cnewArr[i].mo373do(cnewArr[zTestBit ? 1 : 0]);
            cnewArr[zTestBit ? 1 : 0] = cnewArr[zTestBit ? 1 : 0].mo378synchronized();
        }
    }
}
