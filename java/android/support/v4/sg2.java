package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.params.Cthis;

/* loaded from: classes3.dex */
public class sg2 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f6150do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Cthis cthis = new Cthis(this.f6150do);
        return new y3((a4) cthis.m33857for(), (a4) cthis);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f6150do = dr0Var.m1497do();
    }
}
