package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ww0 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private k50 f7709do;

    /* renamed from: if, reason: not valid java name */
    private k50 f7710if;

    public ww0(k50 k50Var, k50 k50Var2) {
        Objects.requireNonNull(k50Var, "staticPublicKey cannot be null");
        Objects.requireNonNull(k50Var2, "ephemeralPublicKey cannot be null");
        if (!k50Var.m7258if().equals(k50Var2.m7258if())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f7709do = k50Var;
        this.f7710if = k50Var2;
    }

    /* renamed from: do, reason: not valid java name */
    public k50 m9295do() {
        return this.f7710if;
    }

    /* renamed from: if, reason: not valid java name */
    public k50 m9296if() {
        return this.f7709do;
    }
}
