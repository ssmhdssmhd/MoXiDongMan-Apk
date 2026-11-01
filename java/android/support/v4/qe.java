package android.support.v4;

import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Ctry;

/* loaded from: classes3.dex */
public class qe {

    /* renamed from: do, reason: not valid java name */
    private final pe f5353do;

    /* renamed from: for, reason: not valid java name */
    private org.bouncycastle.asn1.v f5354for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f5355if;

    /* renamed from: new, reason: not valid java name */
    private c91 f5356new;

    public qe(pe peVar, ta taVar) {
        this.f5353do = peVar;
        this.f5355if = new org.bouncycastle.asn1.n(taVar);
    }

    public qe(pe peVar, ta[] taVarArr) {
        this.f5353do = peVar;
        this.f5355if = new org.bouncycastle.asn1.n(taVarArr);
    }

    /* renamed from: do, reason: not valid java name */
    public Ctry m6510do() {
        return new Ctry(this.f5353do, this.f5355if, this.f5354for, this.f5356new);
    }

    /* renamed from: for, reason: not valid java name */
    public qe m6511for(s90 s90Var) {
        this.f5356new = new c91(s90Var);
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public qe m6512if(ne neVar) {
        this.f5356new = new c91(neVar);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public qe m6513new(bd1 bd1Var) {
        this.f5356new = new c91(bd1Var);
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public qe m6514try(String str) {
        this.f5354for = new org.bouncycastle.asn1.v(str);
        return this;
    }
}
