package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class vu implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private ru f7343do;

    /* renamed from: if, reason: not valid java name */
    private ru f7344if;

    public vu(ru ruVar, ru ruVar2) {
        Objects.requireNonNull(ruVar, "staticPublicKey cannot be null");
        Objects.requireNonNull(ruVar2, "ephemeralPublicKey cannot be null");
        if (!ruVar.m4512if().equals(ruVar2.m4512if())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f7343do = ruVar;
        this.f7344if = ruVar2;
    }

    /* renamed from: do, reason: not valid java name */
    public ru m8957do() {
        return this.f7344if;
    }

    /* renamed from: if, reason: not valid java name */
    public ru m8958if() {
        return this.f7343do;
    }
}
