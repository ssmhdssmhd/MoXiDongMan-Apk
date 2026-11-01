package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class dg0 {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f1041do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f1042for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f1043if;

    public dg0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f1041do = bigInteger;
        this.f1043if = bigInteger2;
        this.f1042for = bigInteger3;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m1334do() {
        return this.f1042for;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof dg0)) {
            return false;
        }
        dg0 dg0Var = (dg0) obj;
        return this.f1042for.equals(dg0Var.f1042for) && this.f1041do.equals(dg0Var.f1041do) && this.f1043if.equals(dg0Var.f1043if);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m1335for() {
        return this.f1043if;
    }

    public int hashCode() {
        return (this.f1042for.hashCode() ^ this.f1041do.hashCode()) ^ this.f1043if.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m1336if() {
        return this.f1041do;
    }
}
