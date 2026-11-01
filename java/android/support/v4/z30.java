package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class z30 {

    /* renamed from: do, reason: not valid java name */
    private b40 f8437do;

    /* renamed from: do, reason: not valid java name */
    public byte[] m10055do(CipherParameters cipherParameters) {
        c40 c40Var = (c40) cipherParameters;
        y30 y30Var = new y30();
        y30 y30Var2 = new y30();
        y30Var.init(this.f8437do.m437for());
        BigInteger bigIntegerCalculateAgreement = y30Var.calculateAgreement(c40Var.m731if());
        y30Var2.init(this.f8437do.m436do());
        return q3.m6367default(Cdo.m36309do(m10057if(), y30Var2.calculateAgreement(c40Var.m730do())), Cdo.m36309do(m10057if(), bigIntegerCalculateAgreement));
    }

    /* renamed from: for, reason: not valid java name */
    public void m10056for(CipherParameters cipherParameters) {
        this.f8437do = (b40) cipherParameters;
    }

    /* renamed from: if, reason: not valid java name */
    public int m10057if() {
        return (this.f8437do.m437for().m7258if().m1646do().mo35334switch() + 7) / 8;
    }
}
