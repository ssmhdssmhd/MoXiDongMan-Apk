package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.Ctry;
import org.bouncycastle.math.ec.ECLookupTable;

/* loaded from: classes3.dex */
public class ic0 extends Cvolatile {
    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        Cif cifM35477this = cnew.m35477this();
        if (bigInteger.bitLength() > Ctry.m35582do(cifM35477this)) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        jc0 jc0VarM35583for = Ctry.m35583for(cnew);
        ECLookupTable eCLookupTableM3825do = jc0VarM35583for.m3825do();
        int iM3826for = jc0VarM35583for.m3826for();
        int i = ((r1 + iM3826for) - 1) / iM3826for;
        Cnew cnewMo35335throws = cifM35477this.mo35335throws();
        int i2 = iM3826for * i;
        int[] iArrM6327continue = q21.m6327continue(i2, bigInteger);
        int i3 = i2 - 1;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = 0;
            for (int i6 = i3 - i4; i6 >= 0; i6 -= i) {
                int i7 = iArrM6327continue[i6 >>> 5] >>> (i6 & 31);
                i5 = ((i5 ^ (i7 >>> 1)) << 1) ^ i7;
            }
            cnewMo35335throws = cnewMo35335throws.a(eCLookupTableM3825do.lookup(i5));
        }
        return cnewMo35335throws.mo373do(jc0VarM35583for.m3827if());
    }
}
