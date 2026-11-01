package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class wu {

    /* renamed from: do, reason: not valid java name */
    private uu f7699do;

    /* renamed from: do, reason: not valid java name */
    public byte[] m9284do(CipherParameters cipherParameters) {
        vu vuVar = (vu) cipherParameters;
        du duVar = new du();
        du duVar2 = new du();
        duVar.init(this.f7699do.m8640for());
        BigInteger bigIntegerCalculateAgreement = duVar.calculateAgreement(vuVar.m8958if());
        duVar2.init(this.f7699do.m8639do());
        return q3.m6367default(Cdo.m36309do(m9286if(), duVar2.calculateAgreement(vuVar.m8957do())), Cdo.m36309do(m9286if(), bigIntegerCalculateAgreement));
    }

    /* renamed from: for, reason: not valid java name */
    public void m9285for(CipherParameters cipherParameters) {
        this.f7699do = (uu) cipherParameters;
    }

    /* renamed from: if, reason: not valid java name */
    public int m9286if() {
        return (this.f7699do.m8640for().m4512if().m5757case().bitLength() + 7) / 8;
    }
}
