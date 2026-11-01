package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class y30 implements BasicAgreement {

    /* renamed from: do, reason: not valid java name */
    public h50 f8114do;

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        k50 k50Var = (k50) cipherParameters;
        e40 e40VarM7258if = this.f8114do.m7258if();
        if (!e40VarM7258if.equals(k50Var.m7258if())) {
            throw new IllegalStateException("ECDHC public key has wrong domain parameters");
        }
        BigInteger bigIntegerMod = e40VarM7258if.m1647for().multiply(this.f8114do.m2948for()).mod(e40VarM7258if.m1650try());
        Cnew cnewM35358do = Cdo.m35358do(e40VarM7258if.m1646do(), k50Var.m4252for());
        if (cnewM35358do.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDHC");
        }
        Cnew cnewM35454abstract = cnewM35358do.m35470package(bigIntegerMod).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECDHC");
        }
        return cnewM35454abstract.m35456case().mo339static();
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.f8114do.m7258if().m1646do().mo35334switch() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        this.f8114do = (h50) cipherParameters;
    }
}
