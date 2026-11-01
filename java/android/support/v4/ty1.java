package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ty1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f6708do;

    /* renamed from: if, reason: not valid java name */
    public Csuper f6709if;

    public ty1(n50 n50Var) {
        this.f6708do = new org.bouncycastle.asn1.n(n50Var);
    }

    private ty1(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f6708do = Csuper.m33129catch(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f6709if = Csuper.m33129catch(csuper.mo33075final(1));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static ty1 m8160try(Object obj) {
        if (obj instanceof ty1) {
            return (ty1) obj;
        }
        if (obj != null) {
            return new ty1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public fe1[] m8161case() {
        Csuper csuper = this.f6709if;
        if (csuper == null) {
            return null;
        }
        fe1[] fe1VarArr = new fe1[csuper.size()];
        for (int i = 0; i != this.f6709if.size(); i++) {
            fe1VarArr[i] = fe1.m2258new(this.f6709if.mo33075final(i));
        }
        return fe1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public n50[] m8162new() {
        n50[] n50VarArr = new n50[this.f6708do.size()];
        for (int i = 0; i != this.f6708do.size(); i++) {
            n50VarArr[i] = n50.m5089try(this.f6708do.mo33075final(i));
        }
        return n50VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6708do);
        Csuper csuper = this.f6709if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
