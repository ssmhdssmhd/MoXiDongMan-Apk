package android.support.v4;

import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class uu implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private pu f6982do;

    /* renamed from: for, reason: not valid java name */
    private ru f6983for;

    /* renamed from: if, reason: not valid java name */
    private pu f6984if;

    public uu(pu puVar, pu puVar2) {
        this(puVar, puVar2, null);
    }

    public uu(pu puVar, pu puVar2, ru ruVar) {
        Objects.requireNonNull(puVar, "staticPrivateKey cannot be null");
        Objects.requireNonNull(puVar2, "ephemeralPrivateKey cannot be null");
        ou ouVarM4512if = puVar.m4512if();
        if (!ouVarM4512if.equals(puVar2.m4512if())) {
            throw new IllegalArgumentException("static and ephemeral private keys have different domain parameters");
        }
        if (ruVar == null) {
            ruVar = new ru(ouVarM4512if.m5761if().modPow(puVar2.m6221for(), ouVarM4512if.m5757case()), ouVarM4512if);
        } else if (!ouVarM4512if.equals(ruVar.m4512if())) {
            throw new IllegalArgumentException("ephemeral public key has different domain parameters");
        }
        this.f6982do = puVar;
        this.f6984if = puVar2;
        this.f6983for = ruVar;
    }

    /* renamed from: do, reason: not valid java name */
    public pu m8639do() {
        return this.f6984if;
    }

    /* renamed from: for, reason: not valid java name */
    public pu m8640for() {
        return this.f6982do;
    }

    /* renamed from: if, reason: not valid java name */
    public ru m8641if() {
        return this.f6983for;
    }
}
