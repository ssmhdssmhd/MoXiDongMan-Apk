package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class hv implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f2513do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f2514for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2515if;

    /* renamed from: new, reason: not valid java name */
    private mv f2516new;

    public hv(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f2513do = bigInteger3;
        this.f2514for = bigInteger;
        this.f2515if = bigInteger2;
    }

    public hv(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, mv mvVar) {
        this.f2513do = bigInteger3;
        this.f2514for = bigInteger;
        this.f2515if = bigInteger2;
        this.f2516new = mvVar;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m3127do() {
        return this.f2513do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hv)) {
            return false;
        }
        hv hvVar = (hv) obj;
        return hvVar.m3129if().equals(this.f2514for) && hvVar.m3128for().equals(this.f2515if) && hvVar.m3127do().equals(this.f2513do);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m3128for() {
        return this.f2515if;
    }

    public int hashCode() {
        return (m3129if().hashCode() ^ m3128for().hashCode()) ^ m3127do().hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m3129if() {
        return this.f2514for;
    }

    /* renamed from: new, reason: not valid java name */
    public mv m3130new() {
        return this.f2516new;
    }
}
