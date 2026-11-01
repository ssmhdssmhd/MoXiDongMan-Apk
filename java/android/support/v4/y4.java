package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;

/* loaded from: classes3.dex */
public class y4 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private Cclass f8129case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f8130do;

    /* renamed from: else, reason: not valid java name */
    private Cthrow f8131else;

    /* renamed from: for, reason: not valid java name */
    private Cthrow f8132for;

    /* renamed from: if, reason: not valid java name */
    private o81 f8133if;

    /* renamed from: new, reason: not valid java name */
    private h70 f8134new;

    /* renamed from: try, reason: not valid java name */
    private Cthrow f8135try;

    public y4(o81 o81Var, Cthrow cthrow, h70 h70Var, Cthrow cthrow2, Cclass cclass, Cthrow cthrow3) {
        this.f8130do = new Cgoto(0L);
        this.f8133if = o81Var;
        this.f8132for = cthrow;
        if (cthrow.size() == 0) {
            throw new IllegalArgumentException("AuthEnvelopedData requires at least 1 RecipientInfo");
        }
        this.f8134new = h70Var;
        this.f8135try = cthrow2;
        if (!h70Var.m2962try().equals(CMSObjectIdentifiers.data) && (cthrow2 == null || cthrow2.size() == 0)) {
            throw new IllegalArgumentException("authAttrs must be present with non-data content");
        }
        this.f8129case = cclass;
        this.f8131else = cthrow3;
    }

    private y4(Csuper csuper) {
        Cthrow cthrow;
        Cgoto cgoto = (Cgoto) csuper.mo33075final(0).toASN1Primitive();
        this.f8130do = cgoto;
        if (cgoto.m33044final().intValue() != 0) {
            throw new IllegalArgumentException("AuthEnvelopedData version number must be 0");
        }
        int i = 2;
        Cfinal aSN1Primitive = csuper.mo33075final(1).toASN1Primitive();
        if (aSN1Primitive instanceof Cimport) {
            this.f8133if = o81.m5503else((Cimport) aSN1Primitive, false);
            aSN1Primitive = csuper.mo33075final(2).toASN1Primitive();
            i = 3;
        }
        Cthrow cthrowM33151class = Cthrow.m33151class(aSN1Primitive);
        this.f8132for = cthrowM33151class;
        if (cthrowM33151class.size() == 0) {
            throw new IllegalArgumentException("AuthEnvelopedData requires at least 1 RecipientInfo");
        }
        int i2 = i + 1;
        this.f8134new = h70.m2959else(csuper.mo33075final(i).toASN1Primitive());
        int i3 = i2 + 1;
        Cfinal aSN1Primitive2 = csuper.mo33075final(i2).toASN1Primitive();
        if (aSN1Primitive2 instanceof Cimport) {
            this.f8135try = Cthrow.m33152const((Cimport) aSN1Primitive2, false);
            aSN1Primitive2 = csuper.mo33075final(i3).toASN1Primitive();
            i3++;
        } else if (!this.f8134new.m2962try().equals(CMSObjectIdentifiers.data) && ((cthrow = this.f8135try) == null || cthrow.size() == 0)) {
            throw new IllegalArgumentException("authAttrs must be present with non-data content");
        }
        this.f8129case = Cclass.m32796catch(aSN1Primitive2);
        if (csuper.size() > i3) {
            this.f8131else = Cthrow.m33152const((Cimport) csuper.mo33075final(i3).toASN1Primitive(), false);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static y4 m9744case(Object obj) {
        if (obj == null || (obj instanceof y4)) {
            return (y4) obj;
        }
        if (obj instanceof Csuper) {
            return new y4((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid AuthEnvelopedData: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public static y4 m9745else(Cimport cimport, boolean z) {
        return m9744case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cthrow m9746break() {
        return this.f8132for;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cthrow m9747catch() {
        return this.f8131else;
    }

    /* renamed from: class, reason: not valid java name */
    public Cgoto m9748class() {
        return this.f8130do;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cclass m9749goto() {
        return this.f8129case;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m9750new() {
        return this.f8135try;
    }

    /* renamed from: this, reason: not valid java name */
    public o81 m9751this() {
        return this.f8133if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8130do);
        if (this.f8133if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8133if));
        }
        cimport.m3516do(this.f8132for);
        cimport.m3516do(this.f8134new);
        if (this.f8135try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f8135try));
        }
        cimport.m3516do(this.f8129case);
        if (this.f8131else != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f8131else));
        }
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public h70 m9752try() {
        return this.f8134new;
    }
}
