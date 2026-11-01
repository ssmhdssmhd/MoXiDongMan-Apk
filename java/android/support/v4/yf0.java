package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class yf0 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f8199do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f8200for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f8201if;

    /* renamed from: new, reason: not valid java name */
    private hg0 f8202new;

    public yf0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f8199do = bigInteger;
        this.f8201if = bigInteger2;
        this.f8200for = bigInteger3;
    }

    public yf0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, hg0 hg0Var) {
        this.f8200for = bigInteger3;
        this.f8199do = bigInteger;
        this.f8201if = bigInteger2;
        this.f8202new = hg0Var;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m9827do() {
        return this.f8200for;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof yf0)) {
            return false;
        }
        yf0 yf0Var = (yf0) obj;
        return yf0Var.m9829if().equals(this.f8199do) && yf0Var.m9828for().equals(this.f8201if) && yf0Var.m9827do().equals(this.f8200for);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m9828for() {
        return this.f8201if;
    }

    public int hashCode() {
        return (this.f8199do.hashCode() ^ this.f8201if.hashCode()) ^ this.f8200for.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m9829if() {
        return this.f8199do;
    }

    /* renamed from: new, reason: not valid java name */
    public hg0 m9830new() {
        return this.f8202new;
    }
}
