package org.bouncycastle.asn1.cms;

import android.support.v4.b1;
import android.support.v4.oy1;
import android.support.v4.w4;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.asn1.cms.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private Cclass f28959case;

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.asn1.Cgoto f28960do;

    /* renamed from: else, reason: not valid java name */
    private Cthrow f28961else;

    /* renamed from: for, reason: not valid java name */
    private b1 f28962for;

    /* renamed from: if, reason: not valid java name */
    private oy1 f28963if;

    /* renamed from: new, reason: not valid java name */
    private Cthrow f28964new;

    /* renamed from: try, reason: not valid java name */
    private b1 f28965try;

    public Cgoto(oy1 oy1Var, b1 b1Var, w4 w4Var, b1 b1Var2, Cclass cclass, w4 w4Var2) {
        this.f28960do = oy1Var.m5819case() ? new org.bouncycastle.asn1.Cgoto(3L) : new org.bouncycastle.asn1.Cgoto(1L);
        this.f28963if = oy1Var;
        this.f28962for = b1Var;
        this.f28964new = Cthrow.m33151class(w4Var);
        this.f28965try = b1Var2;
        this.f28959case = cclass;
        this.f28961else = Cthrow.m33151class(w4Var2);
    }

    public Cgoto(oy1 oy1Var, b1 b1Var, Cthrow cthrow, b1 b1Var2, Cclass cclass, Cthrow cthrow2) {
        this.f28960do = oy1Var.m5819case() ? new org.bouncycastle.asn1.Cgoto(3L) : new org.bouncycastle.asn1.Cgoto(1L);
        this.f28963if = oy1Var;
        this.f28962for = b1Var;
        this.f28964new = cthrow;
        this.f28965try = b1Var2;
        this.f28959case = cclass;
        this.f28961else = cthrow2;
    }

    public Cgoto(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f28960do = (org.bouncycastle.asn1.Cgoto) enumerationMo33076super.nextElement();
        this.f28963if = oy1.m5818try(enumerationMo33076super.nextElement());
        this.f28962for = b1.m418try(enumerationMo33076super.nextElement());
        Object objNextElement = enumerationMo33076super.nextElement();
        if (objNextElement instanceof Cimport) {
            this.f28964new = Cthrow.m33152const((Cimport) objNextElement, false);
            objNextElement = enumerationMo33076super.nextElement();
        } else {
            this.f28964new = null;
        }
        this.f28965try = b1.m418try(objNextElement);
        this.f28959case = Cclass.m32796catch(enumerationMo33076super.nextElement());
        if (enumerationMo33076super.hasMoreElements()) {
            this.f28961else = Cthrow.m33152const((Cimport) enumerationMo33076super.nextElement(), false);
        } else {
            this.f28961else = null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cgoto m32871goto(Object obj) throws IllegalArgumentException {
        if (obj instanceof Cgoto) {
            return (Cgoto) obj;
        }
        if (obj != null) {
            return new Cgoto(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cthrow m32872break() {
        return this.f28961else;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m32873case() {
        return this.f28965try;
    }

    /* renamed from: catch, reason: not valid java name */
    public org.bouncycastle.asn1.Cgoto m32874catch() {
        return this.f28960do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m32875else() {
        return this.f28959case;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m32876new() {
        return this.f28964new;
    }

    /* renamed from: this, reason: not valid java name */
    public oy1 m32877this() {
        return this.f28963if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(this.f28960do);
        cimport.m3516do(this.f28963if);
        cimport.m3516do(this.f28962for);
        if (this.f28964new != null) {
            cimport.m3516do(new u(false, 0, this.f28964new));
        }
        cimport.m3516do(this.f28965try);
        cimport.m3516do(this.f28959case);
        if (this.f28961else != null) {
            cimport.m3516do(new u(false, 1, this.f28961else));
        }
        return new n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m32878try() {
        return this.f28962for;
    }
}
