package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class jg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private kg f3087do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f3088for;

    /* renamed from: if, reason: not valid java name */
    private cg1 f3089if;

    public jg(kg kgVar, cg1 cg1Var, v4[] v4VarArr) {
        if (kgVar == null) {
            throw new IllegalArgumentException("'certReq' cannot be null");
        }
        this.f3087do = kgVar;
        this.f3089if = cg1Var;
        if (v4VarArr != null) {
            this.f3088for = new org.bouncycastle.asn1.n(v4VarArr);
        }
    }

    private jg(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3087do = kg.m4397else(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Object objNextElement = enumerationMo33076super.nextElement();
            if ((objNextElement instanceof Cimport) || (objNextElement instanceof cg1)) {
                this.f3089if = cg1.m914new(objNextElement);
            } else {
                this.f3088for = Csuper.m33129catch(objNextElement);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static jg m3854case(Object obj) {
        if (obj instanceof jg) {
            return (jg) obj;
        }
        if (obj != null) {
            return new jg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static jg m3855else(Cimport cimport, boolean z) {
        return m3854case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private void m3856new(Cimport cimport, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public v4[] m3857break() {
        Csuper csuper = this.f3088for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        v4[] v4VarArr = new v4[size];
        for (int i = 0; i != size; i++) {
            v4VarArr[i] = v4.m8743new(this.f3088for.mo33075final(i));
        }
        return v4VarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public cg1 m3858goto() {
        return this.f3089if;
    }

    /* renamed from: this, reason: not valid java name */
    public cg1 m3859this() {
        return this.f3089if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3087do);
        m3856new(cimport, this.f3089if);
        m3856new(cimport, this.f3088for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public kg m3860try() {
        return this.f3087do;
    }
}
