package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Cgoto;

/* loaded from: classes3.dex */
public class bi2 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private a4 f455do;

    /* renamed from: if, reason: not valid java name */
    private a4 f456if;

    public bi2(a4 a4Var, a4 a4Var2) {
        Objects.requireNonNull(a4Var, "staticPublicKey cannot be null");
        if (!(a4Var instanceof Cbreak) && !(a4Var instanceof Cgoto)) {
            throw new IllegalArgumentException("only X25519 and X448 paramaters can be used");
        }
        Objects.requireNonNull(a4Var2, "ephemeralPublicKey cannot be null");
        if (!a4Var.getClass().isAssignableFrom(a4Var2.getClass())) {
            throw new IllegalArgumentException("static and ephemeral public keys have different domain parameters");
        }
        this.f455do = a4Var;
        this.f456if = a4Var2;
    }

    /* renamed from: do, reason: not valid java name */
    public a4 m558do() {
        return this.f456if;
    }

    /* renamed from: if, reason: not valid java name */
    public a4 m559if() {
        return this.f455do;
    }
}
