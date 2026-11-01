package android.support.v4;

import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.Cclass;

/* loaded from: classes3.dex */
public class zg2 implements Selector {

    /* renamed from: do, reason: not valid java name */
    private ah2 f8549do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f8550for;

    /* renamed from: if, reason: not valid java name */
    private ah2 f8551if;

    /* renamed from: case, reason: not valid java name */
    public void m10195case(ah2 ah2Var) {
        this.f8551if = ah2Var;
    }

    @Override // org.bouncycastle.util.Selector, java.security.cert.CertSelector
    public Object clone() {
        zg2 zg2Var = new zg2();
        zg2Var.f8550for = this.f8550for;
        ah2 ah2Var = this.f8549do;
        if (ah2Var != null) {
            zg2Var.m10200try((ah2) ah2Var.clone());
        }
        ah2 ah2Var2 = this.f8551if;
        if (ah2Var2 != null) {
            zg2Var.m10195case((ah2) ah2Var2.clone());
        }
        return zg2Var;
    }

    /* renamed from: do, reason: not valid java name */
    public Cclass m10196do() {
        return this.f8550for;
    }

    /* renamed from: for, reason: not valid java name */
    public ah2 m10197for() {
        return this.f8551if;
    }

    /* renamed from: if, reason: not valid java name */
    public ah2 m10198if() {
        return this.f8549do;
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        try {
            if (!(obj instanceof Cclass)) {
                return false;
            }
            Cclass cclass = (Cclass) obj;
            ah2 ah2Var = this.f8549do;
            if (ah2Var != null && !ah2Var.match((Object) cclass.m36445if())) {
                return false;
            }
            ah2 ah2Var2 = this.f8551if;
            if (ah2Var2 != null && !ah2Var2.match((Object) cclass.m36444for())) {
                return false;
            }
            Cclass cclass2 = this.f8550for;
            if (cclass2 != null) {
                return cclass2.equals(obj);
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m10199new(Cclass cclass) {
        this.f8550for = cclass;
    }

    /* renamed from: try, reason: not valid java name */
    public void m10200try(ah2 ah2Var) {
        this.f8549do = ah2Var;
    }
}
