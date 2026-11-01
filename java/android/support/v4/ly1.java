package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Ccontinue;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.Cvolatile;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;

/* loaded from: classes3.dex */
public class ly1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private Cthrow f3799case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3800do;

    /* renamed from: else, reason: not valid java name */
    private boolean f3801else;

    /* renamed from: for, reason: not valid java name */
    private fr f3802for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f3803goto;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f3804if;

    /* renamed from: new, reason: not valid java name */
    private Cthrow f3805new;

    /* renamed from: try, reason: not valid java name */
    private Cthrow f3806try;

    /* renamed from: this, reason: not valid java name */
    private static final Cgoto f3798this = new Cgoto(1);

    /* renamed from: break, reason: not valid java name */
    private static final Cgoto f3795break = new Cgoto(3);

    /* renamed from: catch, reason: not valid java name */
    private static final Cgoto f3796catch = new Cgoto(4);

    /* renamed from: class, reason: not valid java name */
    private static final Cgoto f3797class = new Cgoto(5);

    private ly1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3800do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f3804if = (Cthrow) enumerationMo33076super.nextElement();
        this.f3802for = fr.m2388case(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cfinal cfinal = (Cfinal) enumerationMo33076super.nextElement();
            if (cfinal instanceof Cimport) {
                Cimport cimport = (Cimport) cfinal;
                int tagNo = cimport.getTagNo();
                if (tagNo == 0) {
                    this.f3801else = cimport instanceof Cvolatile;
                    this.f3805new = Cthrow.m33152const(cimport, false);
                } else {
                    if (tagNo != 1) {
                        throw new IllegalArgumentException("unknown tag value " + cimport.getTagNo());
                    }
                    this.f3803goto = cimport instanceof Cvolatile;
                    this.f3806try = Cthrow.m33152const(cimport, false);
                }
            } else {
                this.f3799case = (Cthrow) cfinal;
            }
        }
    }

    public ly1(Cthrow cthrow, fr frVar, Cthrow cthrow2, Cthrow cthrow3, Cthrow cthrow4) {
        this.f3800do = m4798new(frVar.m2391try(), cthrow2, cthrow3, cthrow4);
        this.f3804if = cthrow;
        this.f3802for = frVar;
        this.f3805new = cthrow2;
        this.f3806try = cthrow3;
        this.f3799case = cthrow4;
        this.f3803goto = cthrow3 instanceof Ccontinue;
        this.f3801else = cthrow2 instanceof Ccontinue;
    }

    /* renamed from: break, reason: not valid java name */
    public static ly1 m4797break(Object obj) {
        if (obj instanceof ly1) {
            return (ly1) obj;
        }
        if (obj != null) {
            return new ly1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private Cgoto m4798new(Ccatch ccatch, Cthrow cthrow, Cthrow cthrow2, Cthrow cthrow3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (cthrow != null) {
            Enumeration enumerationM33159throw = cthrow.m33159throw();
            z = false;
            z2 = false;
            z3 = false;
            while (enumerationM33159throw.hasMoreElements()) {
                Object objNextElement = enumerationM33159throw.nextElement();
                if (objNextElement instanceof Cimport) {
                    Cimport cimportM33063catch = Cimport.m33063catch(objNextElement);
                    if (cimportM33063catch.getTagNo() == 1) {
                        z2 = true;
                    } else if (cimportM33063catch.getTagNo() == 2) {
                        z3 = true;
                    } else if (cimportM33063catch.getTagNo() == 3) {
                        z = true;
                    }
                }
            }
        } else {
            z = false;
            z2 = false;
            z3 = false;
        }
        if (z) {
            return new Cgoto(5L);
        }
        if (cthrow2 != null) {
            Enumeration enumerationM33159throw2 = cthrow2.m33159throw();
            while (enumerationM33159throw2.hasMoreElements()) {
                if (enumerationM33159throw2.nextElement() instanceof Cimport) {
                    z4 = true;
                }
            }
        }
        if (z4) {
            return f3797class;
        }
        if (z3) {
            return f3796catch;
        }
        if (!z2 && !m4799try(cthrow3) && CMSObjectIdentifiers.data.equals(ccatch)) {
            return f3798this;
        }
        return f3795break;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m4799try(Cthrow cthrow) {
        Enumeration enumerationM33159throw = cthrow.m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            if (org.bouncycastle.asn1.cms.Cgoto.m32871goto(enumerationM33159throw.nextElement()).m32874catch().m33044final().intValue() == 3) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: case, reason: not valid java name */
    public Cthrow m4800case() {
        return this.f3806try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cthrow m4801catch() {
        return this.f3799case;
    }

    /* renamed from: class, reason: not valid java name */
    public Cgoto m4802class() {
        return this.f3800do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cthrow m4803else() {
        return this.f3805new;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cthrow m4804goto() {
        return this.f3804if;
    }

    /* renamed from: this, reason: not valid java name */
    public fr m4805this() {
        return this.f3802for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3800do);
        cimport.m3516do(this.f3804if);
        cimport.m3516do(this.f3802for);
        Cthrow cthrow = this.f3805new;
        if (cthrow != null) {
            if (this.f3801else) {
                cimport.m3516do(new Cvolatile(false, 0, cthrow));
            } else {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f3805new));
            }
        }
        Cthrow cthrow2 = this.f3806try;
        if (cthrow2 != null) {
            if (this.f3803goto) {
                cimport.m3516do(new Cvolatile(false, 1, cthrow2));
            } else {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f3806try));
            }
        }
        cimport.m3516do(this.f3799case);
        return new Cpackage(cimport);
    }
}
