package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class c40 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private k50 f589do;

    /* renamed from: if, reason: not valid java name */
    private k50 f590if;

    public c40(k50 k50Var, k50 k50Var2) {
        Objects.requireNonNull(k50Var, "staticPublicKey cannot be null");
        Objects.requireNonNull(k50Var2, "ephemeralPublicKey cannot be null");
        if (!k50Var.m7258if().equals(k50Var2.m7258if())) {
            throw new IllegalArgumentException("static and ephemeral public keys have different domain parameters");
        }
        this.f589do = k50Var;
        this.f590if = k50Var2;
    }

    /* renamed from: do, reason: not valid java name */
    public k50 m730do() {
        return this.f590if;
    }

    /* renamed from: if, reason: not valid java name */
    public k50 m731if() {
        return this.f589do;
    }
}
