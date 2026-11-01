package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.params.Cif;

/* loaded from: classes3.dex */
public class t50 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f6420do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Cif cif = new Cif(this.f6420do);
        return new y3((a4) cif.m33849for(), (a4) cif);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f6420do = dr0Var.m1497do();
    }
}
