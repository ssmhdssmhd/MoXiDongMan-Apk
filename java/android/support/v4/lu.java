package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class lu implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private pu f3766do;

    /* renamed from: for, reason: not valid java name */
    private ru f3767for;

    /* renamed from: if, reason: not valid java name */
    private pu f3768if;

    public lu(pu puVar, pu puVar2) {
        this(puVar, puVar2, null);
    }

    public lu(pu puVar, pu puVar2, ru ruVar) {
        Objects.requireNonNull(puVar, "staticPrivateKey cannot be null");
        Objects.requireNonNull(puVar2, "ephemeralPrivateKey cannot be null");
        ou ouVarM4512if = puVar.m4512if();
        if (!ouVarM4512if.equals(puVar2.m4512if())) {
            throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
        }
        if (ruVar == null) {
            ruVar = new ru(ouVarM4512if.m5761if().multiply(puVar2.m6221for()), ouVarM4512if);
        } else if (!ouVarM4512if.equals(ruVar.m4512if())) {
            throw new IllegalArgumentException("Ephemeral public key has different domain parameters");
        }
        this.f3766do = puVar;
        this.f3768if = puVar2;
        this.f3767for = ruVar;
    }

    /* renamed from: do, reason: not valid java name */
    public pu m4771do() {
        return this.f3768if;
    }

    /* renamed from: for, reason: not valid java name */
    public pu m4772for() {
        return this.f3766do;
    }

    /* renamed from: if, reason: not valid java name */
    public ru m4773if() {
        return this.f3767for;
    }
}
