package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class b40 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private h50 f332do;

    /* renamed from: for, reason: not valid java name */
    private k50 f333for;

    /* renamed from: if, reason: not valid java name */
    private h50 f334if;

    public b40(h50 h50Var, h50 h50Var2) {
        this(h50Var, h50Var2, null);
    }

    public b40(h50 h50Var, h50 h50Var2, k50 k50Var) {
        Objects.requireNonNull(h50Var, "staticPrivateKey cannot be null");
        Objects.requireNonNull(h50Var2, "ephemeralPrivateKey cannot be null");
        e40 e40VarM7258if = h50Var.m7258if();
        if (!e40VarM7258if.equals(h50Var2.m7258if())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (k50Var == null) {
            k50Var = new k50(e40VarM7258if.m1648if().m35470package(h50Var2.m2948for()), e40VarM7258if);
        } else if (!e40VarM7258if.equals(k50Var.m7258if())) {
            throw new IllegalArgumentException("ephemeral public key has different domain parameters");
        }
        this.f332do = h50Var;
        this.f334if = h50Var2;
        this.f333for = k50Var;
    }

    /* renamed from: do, reason: not valid java name */
    public h50 m436do() {
        return this.f334if;
    }

    /* renamed from: for, reason: not valid java name */
    public h50 m437for() {
        return this.f332do;
    }

    /* renamed from: if, reason: not valid java name */
    public k50 m438if() {
        return this.f333for;
    }
}
