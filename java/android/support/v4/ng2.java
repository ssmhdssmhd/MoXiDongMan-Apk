package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.params.Celse;

/* loaded from: classes3.dex */
public class ng2 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f4228do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Celse celse = new Celse(this.f4228do);
        return new y3((a4) celse.m33841for(), (a4) celse);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f4228do = dr0Var.m1497do();
    }
}
