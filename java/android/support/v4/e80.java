package android.support.v4;

import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyEncoder;

/* loaded from: classes3.dex */
public class e80 {

    /* renamed from: do, reason: not valid java name */
    private AsymmetricCipherKeyPairGenerator f1286do;

    /* renamed from: if, reason: not valid java name */
    private KeyEncoder f1287if;

    public e80(AsymmetricCipherKeyPairGenerator asymmetricCipherKeyPairGenerator, KeyEncoder keyEncoder) {
        this.f1286do = asymmetricCipherKeyPairGenerator;
        this.f1287if = keyEncoder;
    }

    /* renamed from: do, reason: not valid java name */
    public d80 m1686do() {
        return new d80(this.f1286do.generateKeyPair(), this.f1287if);
    }
}
