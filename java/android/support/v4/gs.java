package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class gs extends es {

    /* renamed from: case, reason: not valid java name */
    private BigInteger f2232case;

    /* renamed from: else, reason: not valid java name */
    private BigInteger f2233else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f2234for;

    /* renamed from: goto, reason: not valid java name */
    private hs f2235goto;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f2236new;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f2237try;

    public gs(fs fsVar, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, fsVar);
        this.f2234for = bigInteger;
        this.f2236new = bigInteger2;
        this.f2237try = bigInteger3;
        this.f2232case = bigInteger4;
        this.f2233else = bigInteger5;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2773case() {
        return this.f2237try;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m2774else() {
        return this.f2232case;
    }

    @Override // android.support.v4.es
    public boolean equals(Object obj) {
        if (!(obj instanceof gs)) {
            return false;
        }
        gs gsVar = (gs) obj;
        return gsVar.m2777new().equals(this.f2234for) && gsVar.m2779try().equals(this.f2236new) && gsVar.m2773case().equals(this.f2237try) && gsVar.m2774else().equals(this.f2232case) && gsVar.m2776goto().equals(this.f2233else) && super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public hs m2775for() {
        return this.f2235goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m2776goto() {
        return this.f2233else;
    }

    @Override // android.support.v4.es
    public int hashCode() {
        return ((((this.f2234for.hashCode() ^ this.f2236new.hashCode()) ^ this.f2237try.hashCode()) ^ this.f2232case.hashCode()) ^ this.f2233else.hashCode()) ^ super.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2777new() {
        return this.f2234for;
    }

    /* renamed from: this, reason: not valid java name */
    public void m2778this(hs hsVar) {
        this.f2235goto = hsVar;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m2779try() {
        return this.f2236new;
    }
}
