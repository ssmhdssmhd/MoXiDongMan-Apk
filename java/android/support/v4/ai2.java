package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Celse;
import org.bouncycastle.crypto.params.Cgoto;
import org.bouncycastle.crypto.params.Cthis;

/* loaded from: classes3.dex */
public class ai2 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private a4 f180do;

    /* renamed from: for, reason: not valid java name */
    private a4 f181for;

    /* renamed from: if, reason: not valid java name */
    private a4 f182if;

    public ai2(a4 a4Var, a4 a4Var2) {
        this(a4Var, a4Var2, null);
    }

    public ai2(a4 a4Var, a4 a4Var2, a4 a4Var3) {
        Objects.requireNonNull(a4Var, "staticPrivateKey cannot be null");
        boolean z = a4Var instanceof Cthis;
        if (!z && !(a4Var instanceof Celse)) {
            throw new IllegalArgumentException("only X25519 and X448 paramaters can be used");
        }
        Objects.requireNonNull(a4Var2, "ephemeralPrivateKey cannot be null");
        if (!a4Var.getClass().isAssignableFrom(a4Var2.getClass())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (a4Var3 == null) {
            a4Var3 = a4Var2 instanceof Cthis ? ((Cthis) a4Var2).m33857for() : ((Celse) a4Var2).m33841for();
        } else {
            if ((a4Var3 instanceof Cbreak) && !z) {
                throw new IllegalArgumentException("ephemeral public key has different domain parameters");
            }
            if ((a4Var3 instanceof Cgoto) && !(a4Var instanceof Celse)) {
                throw new IllegalArgumentException("ephemeral public key has different domain parameters");
            }
        }
        this.f180do = a4Var;
        this.f182if = a4Var2;
        this.f181for = a4Var3;
    }

    /* renamed from: do, reason: not valid java name */
    public a4 m255do() {
        return this.f182if;
    }

    /* renamed from: for, reason: not valid java name */
    public a4 m256for() {
        return this.f180do;
    }

    /* renamed from: if, reason: not valid java name */
    public a4 m257if() {
        return this.f181for;
    }
}
