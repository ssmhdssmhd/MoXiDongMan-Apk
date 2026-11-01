package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class b91 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f385do;

    /* renamed from: if, reason: not valid java name */
    public Csuper f386if;

    public b91(q81 q81Var) {
        this.f385do = new org.bouncycastle.asn1.n(q81Var);
    }

    private b91(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f385do = Csuper.m33129catch(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f386if = Csuper.m33129catch(csuper.mo33075final(1));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static b91 m486try(Object obj) {
        if (obj instanceof b91) {
            return (b91) obj;
        }
        if (obj != null) {
            return new b91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public fe1[] m487case() {
        Csuper csuper = this.f386if;
        if (csuper == null) {
            return null;
        }
        fe1[] fe1VarArr = new fe1[csuper.size()];
        for (int i = 0; i != this.f386if.size(); i++) {
            fe1VarArr[i] = fe1.m2258new(this.f386if.mo33075final(i));
        }
        return fe1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public q81[] m488new() {
        q81[] q81VarArr = new q81[this.f385do.size()];
        for (int i = 0; i != this.f385do.size(); i++) {
            q81VarArr[i] = q81.m6441case(this.f385do.mo33075final(i));
        }
        return q81VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f385do);
        Csuper csuper = this.f386if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
