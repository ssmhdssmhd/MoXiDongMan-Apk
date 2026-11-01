package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class py1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private Cclass f5212case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5213do;

    /* renamed from: else, reason: not valid java name */
    private Cthrow f5214else;

    /* renamed from: for, reason: not valid java name */
    private b1 f5215for;

    /* renamed from: if, reason: not valid java name */
    private ao0 f5216if;

    /* renamed from: new, reason: not valid java name */
    private Cthrow f5217new;

    /* renamed from: try, reason: not valid java name */
    private b1 f5218try;

    public py1(Cgoto cgoto, ao0 ao0Var, b1 b1Var, Cthrow cthrow, b1 b1Var2, Cclass cclass, Cthrow cthrow2) {
        this.f5213do = cgoto;
        this.f5216if = ao0Var;
        this.f5215for = b1Var;
        this.f5217new = cthrow;
        this.f5218try = b1Var2;
        this.f5212case = cclass;
        this.f5214else = cthrow2;
    }

    public py1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f5213do = (Cgoto) enumerationMo33076super.nextElement();
        this.f5216if = ao0.m291try(enumerationMo33076super.nextElement());
        this.f5215for = b1.m418try(enumerationMo33076super.nextElement());
        Object objNextElement = enumerationMo33076super.nextElement();
        if (objNextElement instanceof Cimport) {
            this.f5217new = Cthrow.m33152const((Cimport) objNextElement, false);
            objNextElement = enumerationMo33076super.nextElement();
        } else {
            this.f5217new = null;
        }
        this.f5218try = b1.m418try(objNextElement);
        this.f5212case = Cclass.m32796catch(enumerationMo33076super.nextElement());
        if (enumerationMo33076super.hasMoreElements()) {
            this.f5214else = Cthrow.m33152const((Cimport) enumerationMo33076super.nextElement(), false);
        } else {
            this.f5214else = null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static py1 m6250goto(Object obj) {
        if (obj instanceof py1) {
            return (py1) obj;
        }
        if (obj instanceof Csuper) {
            return new py1((Csuper) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: break, reason: not valid java name */
    public Cthrow m6251break() {
        return this.f5214else;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m6252case() {
        return this.f5218try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cgoto m6253catch() {
        return this.f5213do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m6254else() {
        return this.f5212case;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m6255new() {
        return this.f5217new;
    }

    /* renamed from: this, reason: not valid java name */
    public ao0 m6256this() {
        return this.f5216if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5213do);
        cimport.m3516do(this.f5216if);
        cimport.m3516do(this.f5215for);
        if (this.f5217new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f5217new));
        }
        cimport.m3516do(this.f5218try);
        cimport.m3516do(this.f5212case);
        if (this.f5214else != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f5214else));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m6257try() {
        return this.f5215for;
    }
}
