package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: android.support.v4.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cvolatile implements ECMultiplier {
    /* renamed from: do, reason: not valid java name */
    public Cnew m8932do(Cnew cnew) {
        return Cdo.m35363if(cnew);
    }

    /* renamed from: if */
    public abstract Cnew mo972if(Cnew cnew, BigInteger bigInteger);

    @Override // org.bouncycastle.math.ec.ECMultiplier
    public Cnew multiply(Cnew cnew, BigInteger bigInteger) {
        int iSignum = bigInteger.signum();
        if (iSignum == 0 || cnew.m35479throws()) {
            return cnew.m35477this().mo35335throws();
        }
        Cnew cnewMo972if = mo972if(cnew, bigInteger.abs());
        if (iSignum <= 0) {
            cnewMo972if = cnewMo972if.mo377private();
        }
        return m8932do(cnewMo972if);
    }
}
