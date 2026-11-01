package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uy1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f7012do;

    /* renamed from: if, reason: not valid java name */
    public Csuper f7013if;

    public uy1(o50 o50Var) {
        this.f7012do = new org.bouncycastle.asn1.n(o50Var);
    }

    private uy1(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f7012do = Csuper.m33129catch(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f7013if = Csuper.m33129catch(csuper.mo33075final(1));
        }
    }

    public uy1(o50[] o50VarArr) {
        Cimport cimport = new Cimport();
        for (o50 o50Var : o50VarArr) {
            cimport.m3516do(o50Var);
        }
        this.f7012do = new org.bouncycastle.asn1.n(cimport);
    }

    public uy1(o50[] o50VarArr, fe1[] fe1VarArr) {
        Cimport cimport = new Cimport();
        for (o50 o50Var : o50VarArr) {
            cimport.m3516do(o50Var);
        }
        this.f7012do = new org.bouncycastle.asn1.n(cimport);
        if (fe1VarArr != null) {
            Cimport cimport2 = new Cimport();
            for (fe1 fe1Var : fe1VarArr) {
                cimport2.m3516do(fe1Var);
            }
            this.f7013if = new org.bouncycastle.asn1.n(cimport2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static uy1 m8700try(Object obj) {
        if (obj == null || (obj instanceof uy1)) {
            return (uy1) obj;
        }
        if (obj instanceof Csuper) {
            return new uy1((Csuper) obj);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public fe1[] m8701case() {
        Csuper csuper = this.f7013if;
        if (csuper == null) {
            return null;
        }
        fe1[] fe1VarArr = new fe1[csuper.size()];
        for (int i = 0; i != this.f7013if.size(); i++) {
            fe1VarArr[i] = fe1.m2258new(this.f7013if.mo33075final(i));
        }
        return fe1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public o50[] m8702new() {
        o50[] o50VarArr = new o50[this.f7012do.size()];
        for (int i = 0; i != this.f7012do.size(); i++) {
            o50VarArr[i] = o50.m5474case(this.f7012do.mo33075final(i));
        }
        return o50VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7012do);
        Csuper csuper = this.f7013if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
