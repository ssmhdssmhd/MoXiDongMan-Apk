package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class x30 implements BasicAgreement {

    /* renamed from: do, reason: not valid java name */
    private h50 f7755do;

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        k50 k50Var = (k50) cipherParameters;
        e40 e40VarM7258if = this.f7755do.m7258if();
        if (!e40VarM7258if.equals(k50Var.m7258if())) {
            throw new IllegalStateException("ECDH public key has wrong domain parameters");
        }
        BigInteger bigIntegerM2948for = this.f7755do.m2948for();
        Cnew cnewM35358do = Cdo.m35358do(e40VarM7258if.m1646do(), k50Var.m4252for());
        if (cnewM35358do.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDH");
        }
        BigInteger bigIntegerM1647for = e40VarM7258if.m1647for();
        if (!bigIntegerM1647for.equals(ECConstants.ONE)) {
            bigIntegerM2948for = e40VarM7258if.m1649new().multiply(bigIntegerM2948for).mod(e40VarM7258if.m1650try());
            cnewM35358do = Cdo.m35364import(cnewM35358do, bigIntegerM1647for);
        }
        Cnew cnewM35454abstract = cnewM35358do.m35470package(bigIntegerM2948for).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECDH");
        }
        return cnewM35454abstract.m35456case().mo339static();
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.f7755do.m7258if().m1646do().mo35334switch() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        this.f7755do = (h50) cipherParameters;
    }
}
