package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class xj1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private ck1 f7970do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f7971if;

    public xj1(ck1 ck1Var, BigInteger bigInteger) {
        if (ck1Var instanceof dk1) {
            throw new IllegalArgumentException("RSA parameters should be for a public key");
        }
        this.f7970do = ck1Var;
        this.f7971if = bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m9522do() {
        return this.f7971if;
    }

    /* renamed from: if, reason: not valid java name */
    public ck1 m9523if() {
        return this.f7970do;
    }
}
