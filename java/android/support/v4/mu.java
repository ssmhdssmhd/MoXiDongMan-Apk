package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class mu implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private ru f4029do;

    /* renamed from: if, reason: not valid java name */
    private ru f4030if;

    public mu(ru ruVar, ru ruVar2) {
        Objects.requireNonNull(ruVar, "staticPublicKey cannot be null");
        Objects.requireNonNull(ruVar2, "ephemeralPublicKey cannot be null");
        if (!ruVar.m4512if().equals(ruVar2.m4512if())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f4029do = ruVar;
        this.f4030if = ruVar2;
    }

    /* renamed from: do, reason: not valid java name */
    public ru m5001do() {
        return this.f4030if;
    }

    /* renamed from: if, reason: not valid java name */
    public ru m5002if() {
        return this.f4029do;
    }
}
