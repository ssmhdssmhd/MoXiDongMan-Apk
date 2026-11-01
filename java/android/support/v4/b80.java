package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class b80 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f371do;

    /* renamed from: for, reason: not valid java name */
    private Cthrow f372for;

    /* renamed from: if, reason: not valid java name */
    private o81 f373if;

    /* renamed from: new, reason: not valid java name */
    private h70 f374new;

    /* renamed from: try, reason: not valid java name */
    private Cthrow f375try;

    public b80(o81 o81Var, Cthrow cthrow, h70 h70Var, w4 w4Var) {
        this.f371do = new Cgoto(m466new(o81Var, cthrow, Cthrow.m33151class(w4Var)));
        this.f373if = o81Var;
        this.f372for = cthrow;
        this.f374new = h70Var;
        this.f375try = Cthrow.m33151class(w4Var);
    }

    public b80(o81 o81Var, Cthrow cthrow, h70 h70Var, Cthrow cthrow2) {
        this.f371do = new Cgoto(m466new(o81Var, cthrow, cthrow2));
        this.f373if = o81Var;
        this.f372for = cthrow;
        this.f374new = h70Var;
        this.f375try = cthrow2;
    }

    public b80(Csuper csuper) {
        this.f371do = (Cgoto) csuper.mo33075final(0);
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(1);
        int i = 2;
        if (aSN1EncodableMo33075final instanceof Cimport) {
            this.f373if = o81.m5503else((Cimport) aSN1EncodableMo33075final, false);
            aSN1EncodableMo33075final = csuper.mo33075final(2);
            i = 3;
        }
        this.f372for = Cthrow.m33151class(aSN1EncodableMo33075final);
        int i2 = i + 1;
        this.f374new = h70.m2959else(csuper.mo33075final(i));
        if (csuper.size() > i2) {
            this.f375try = Cthrow.m33152const((Cimport) csuper.mo33075final(i2), false);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static b80 m464case(Object obj) {
        if (obj instanceof b80) {
            return (b80) obj;
        }
        if (obj != null) {
            return new b80(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static b80 m465else(Cimport cimport, boolean z) {
        return m464case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m466new(o81 o81Var, Cthrow cthrow, Cthrow cthrow2) {
        if (o81Var != null || cthrow2 != null) {
            return 2;
        }
        Enumeration enumerationM33159throw = cthrow.m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            if (ol1.m5711try(enumerationM33159throw.nextElement()).m5712else().m33044final().intValue() != 0) {
                return 2;
            }
        }
        return 0;
    }

    /* renamed from: break, reason: not valid java name */
    public Cthrow m467break() {
        return this.f375try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cgoto m468catch() {
        return this.f371do;
    }

    /* renamed from: goto, reason: not valid java name */
    public o81 m469goto() {
        return this.f373if;
    }

    /* renamed from: this, reason: not valid java name */
    public Cthrow m470this() {
        return this.f372for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f371do);
        if (this.f373if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f373if));
        }
        cimport.m3516do(this.f372for);
        cimport.m3516do(this.f374new);
        if (this.f375try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f375try));
        }
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public h70 m471try() {
        return this.f374new;
    }
}
