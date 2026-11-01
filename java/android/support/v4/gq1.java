package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class gq1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private final k50 f2222do;

    /* renamed from: if, reason: not valid java name */
    private final k50 f2223if;

    public gq1(k50 k50Var, k50 k50Var2) {
        Objects.requireNonNull(k50Var, "staticPublicKey cannot be null");
        Objects.requireNonNull(k50Var2, "ephemeralPublicKey cannot be null");
        if (!k50Var.m7258if().equals(k50Var2.m7258if())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        }
        this.f2222do = k50Var;
        this.f2223if = k50Var2;
    }

    /* renamed from: do, reason: not valid java name */
    public k50 m2768do() {
        return this.f2223if;
    }

    /* renamed from: if, reason: not valid java name */
    public k50 m2769if() {
        return this.f2222do;
    }
}
