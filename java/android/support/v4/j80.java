package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class j80 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private xa1 f3027do;

    /* renamed from: for, reason: not valid java name */
    private pa1 f3028for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f3029if;

    public j80(xa1 xa1Var) {
        this(xa1Var, null, null);
    }

    public j80(xa1 xa1Var, Cgoto cgoto, pa1 pa1Var) {
        if (xa1Var == null) {
            throw new IllegalArgumentException("'pkiStatusInfo' cannot be null");
        }
        this.f3027do = xa1Var;
        this.f3029if = cgoto;
        this.f3028for = pa1Var;
    }

    private j80(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3027do = xa1.m9444try(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Object objNextElement = enumerationMo33076super.nextElement();
            if (objNextElement instanceof Cgoto) {
                this.f3029if = Cgoto.m33040catch(objNextElement);
            } else {
                this.f3028for = pa1.m5928new(objNextElement);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static j80 m3743else(Object obj) {
        if (obj instanceof j80) {
            return (j80) obj;
        }
        if (obj != null) {
            return new j80(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m3744new(Cimport cimport, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public pa1 m3745case() {
        return this.f3028for;
    }

    /* renamed from: goto, reason: not valid java name */
    public xa1 m3746goto() {
        return this.f3027do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3027do);
        m3744new(cimport, this.f3029if);
        m3744new(cimport, this.f3028for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m3747try() {
        return this.f3029if;
    }
}
