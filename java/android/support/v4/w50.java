package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.params.Cnew;

/* loaded from: classes3.dex */
public class w50 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f7398do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Cnew cnew = new Cnew(this.f7398do);
        return new y3((a4) cnew.m33853for(), (a4) cnew);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f7398do = dr0Var.m1497do();
    }
}
