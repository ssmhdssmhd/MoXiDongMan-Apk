package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class fs implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f1983do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f1984for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f1985if;

    /* renamed from: new, reason: not valid java name */
    private Digest f1986new;

    public fs(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest) {
        this.f1983do = bigInteger;
        this.f1985if = bigInteger2;
        this.f1984for = bigInteger3;
        Digest digest2 = (Digest) ((Memoable) digest).copy();
        this.f1986new = digest2;
        digest2.reset();
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m2401do() {
        return this.f1985if;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof fs)) {
            return false;
        }
        fs fsVar = (fs) obj;
        return fsVar.m2404new().equals(this.f1983do) && fsVar.m2401do().equals(this.f1985if) && fsVar.m2403if().equals(this.f1984for);
    }

    /* renamed from: for, reason: not valid java name */
    public Digest m2402for() {
        return (Digest) ((Memoable) this.f1986new).copy();
    }

    public int hashCode() {
        return (m2404new().hashCode() ^ m2401do().hashCode()) ^ m2403if().hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m2403if() {
        return this.f1984for;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2404new() {
        return this.f1983do;
    }
}
