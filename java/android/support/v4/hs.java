package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class hs extends es {

    /* renamed from: for, reason: not valid java name */
    private BigInteger f2500for;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f2501new;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f2502try;

    public hs(fs fsVar, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, fsVar);
        this.f2500for = bigInteger;
        this.f2501new = bigInteger2;
        this.f2502try = bigInteger3;
    }

    @Override // android.support.v4.es
    public boolean equals(Object obj) {
        if (!(obj instanceof hs)) {
            return false;
        }
        hs hsVar = (hs) obj;
        return hsVar.m3119for().equals(this.f2500for) && hsVar.m3120new().equals(this.f2501new) && hsVar.m3121try().equals(this.f2502try) && super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m3119for() {
        return this.f2500for;
    }

    @Override // android.support.v4.es
    public int hashCode() {
        return ((this.f2500for.hashCode() ^ this.f2501new.hashCode()) ^ this.f2502try.hashCode()) ^ super.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m3120new() {
        return this.f2501new;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m3121try() {
        return this.f2502try;
    }
}
