package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class fq1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private final boolean f1957do;

    /* renamed from: for, reason: not valid java name */
    private final Cnew f1958for;

    /* renamed from: if, reason: not valid java name */
    private final h50 f1959if;

    /* renamed from: new, reason: not valid java name */
    private final h50 f1960new;

    /* renamed from: try, reason: not valid java name */
    private final Cnew f1961try;

    public fq1(boolean z, h50 h50Var, h50 h50Var2) {
        Objects.requireNonNull(h50Var, "staticPrivateKey cannot be null");
        Objects.requireNonNull(h50Var2, "ephemeralPrivateKey cannot be null");
        e40 e40VarM7258if = h50Var.m7258if();
        if (!e40VarM7258if.equals(h50Var2.m7258if())) {
            throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
        }
        this.f1957do = z;
        this.f1959if = h50Var;
        this.f1958for = e40VarM7258if.m1648if().m35470package(h50Var.m2948for()).m35454abstract();
        this.f1960new = h50Var2;
        this.f1961try = e40VarM7258if.m1648if().m35470package(h50Var2.m2948for()).m35454abstract();
    }

    /* renamed from: do, reason: not valid java name */
    public h50 m2383do() {
        return this.f1960new;
    }

    /* renamed from: for, reason: not valid java name */
    public h50 m2384for() {
        return this.f1959if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m2385if() {
        return this.f1961try;
    }

    /* renamed from: new, reason: not valid java name */
    public Cnew m2386new() {
        return this.f1958for;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m2387try() {
        return this.f1957do;
    }
}
