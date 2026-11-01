package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class sa1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private qa1 f6098do;

    /* renamed from: for, reason: not valid java name */
    private Cinstanceof f6099for;

    /* renamed from: if, reason: not valid java name */
    private la1 f6100if;

    /* renamed from: new, reason: not valid java name */
    private Csuper f6101new;

    public sa1(qa1 qa1Var, la1 la1Var) {
        this(qa1Var, la1Var, null, null);
    }

    public sa1(qa1 qa1Var, la1 la1Var, Cinstanceof cinstanceof) {
        this(qa1Var, la1Var, cinstanceof, null);
    }

    public sa1(qa1 qa1Var, la1 la1Var, Cinstanceof cinstanceof, se[] seVarArr) {
        this.f6098do = qa1Var;
        this.f6100if = la1Var;
        this.f6099for = cinstanceof;
        if (seVarArr != null) {
            Cimport cimport = new Cimport();
            for (se seVar : seVarArr) {
                cimport.m3516do(seVar);
            }
            this.f6101new = new org.bouncycastle.asn1.n(cimport);
        }
    }

    private sa1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f6098do = qa1.m6450else(enumerationMo33076super.nextElement());
        this.f6100if = la1.m4630case(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            if (cimport.getTagNo() == 0) {
                this.f6099for = Cinstanceof.m33069return(cimport, true);
            } else {
                this.f6101new = Csuper.m33130class(cimport, true);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static sa1 m7347goto(Object obj) {
        if (obj instanceof sa1) {
            return (sa1) obj;
        }
        if (obj != null) {
            return new sa1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m7348new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public se[] m7349case() {
        Csuper csuper = this.f6101new;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        se[] seVarArr = new se[size];
        for (int i = 0; i < size; i++) {
            seVarArr[i] = se.m7371new(this.f6101new.mo33075final(i));
        }
        return seVarArr;
    }

    /* renamed from: else, reason: not valid java name */
    public qa1 m7350else() {
        return this.f6098do;
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m7351this() {
        return this.f6099for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6098do);
        cimport.m3516do(this.f6100if);
        m7348new(cimport, 0, this.f6099for);
        m7348new(cimport, 1, this.f6101new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public la1 m7352try() {
        return this.f6100if;
    }
}
