package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class l60 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f3549do;

    /* renamed from: for, reason: not valid java name */
    private int f3550for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f3551if;

    public l60(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public l60(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f3549do = bigInteger2;
        this.f3551if = bigInteger;
        this.f3550for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m4599do() {
        return this.f3549do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l60)) {
            return false;
        }
        l60 l60Var = (l60) obj;
        return l60Var.m4600for().equals(this.f3551if) && l60Var.m4599do().equals(this.f3549do) && l60Var.m4601if() == this.f3550for;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m4600for() {
        return this.f3551if;
    }

    public int hashCode() {
        return (m4600for().hashCode() ^ m4599do().hashCode()) + this.f3550for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m4601if() {
        return this.f3550for;
    }
}
