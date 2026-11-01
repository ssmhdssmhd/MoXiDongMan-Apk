package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class z4 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private fr f8440case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f8441do;

    /* renamed from: else, reason: not valid java name */
    private Cthrow f8442else;

    /* renamed from: for, reason: not valid java name */
    private Cthrow f8443for;

    /* renamed from: goto, reason: not valid java name */
    private Cclass f8444goto;

    /* renamed from: if, reason: not valid java name */
    private o81 f8445if;

    /* renamed from: new, reason: not valid java name */
    private b1 f8446new;

    /* renamed from: this, reason: not valid java name */
    private Cthrow f8447this;

    /* renamed from: try, reason: not valid java name */
    private b1 f8448try;

    public z4(o81 o81Var, Cthrow cthrow, b1 b1Var, b1 b1Var2, fr frVar, Cthrow cthrow2, Cclass cclass, Cthrow cthrow3) {
        if (!(b1Var2 == null && cthrow2 == null) && (b1Var2 == null || cthrow2 == null)) {
            throw new IllegalArgumentException("digestAlgorithm and authAttrs must be set together");
        }
        this.f8441do = new Cgoto(m10059new(o81Var));
        this.f8445if = o81Var;
        this.f8446new = b1Var;
        this.f8448try = b1Var2;
        this.f8443for = cthrow;
        this.f8440case = frVar;
        this.f8442else = cthrow2;
        this.f8444goto = cclass;
        this.f8447this = cthrow3;
    }

    private z4(Csuper csuper) {
        this.f8441do = (Cgoto) csuper.mo33075final(0);
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(1);
        int i = 2;
        if (aSN1EncodableMo33075final instanceof Cimport) {
            this.f8445if = o81.m5503else((Cimport) aSN1EncodableMo33075final, false);
            aSN1EncodableMo33075final = csuper.mo33075final(2);
            i = 3;
        }
        this.f8443for = Cthrow.m33151class(aSN1EncodableMo33075final);
        int i2 = i + 1;
        this.f8446new = b1.m418try(csuper.mo33075final(i));
        int i3 = i2 + 1;
        ASN1Encodable aSN1EncodableMo33075final2 = csuper.mo33075final(i2);
        if (aSN1EncodableMo33075final2 instanceof Cimport) {
            this.f8448try = b1.m417case((Cimport) aSN1EncodableMo33075final2, false);
            int i4 = i3 + 1;
            ASN1Encodable aSN1EncodableMo33075final3 = csuper.mo33075final(i3);
            i3 = i4;
            aSN1EncodableMo33075final2 = aSN1EncodableMo33075final3;
        }
        this.f8440case = fr.m2388case(aSN1EncodableMo33075final2);
        int i5 = i3 + 1;
        ASN1Encodable aSN1EncodableMo33075final4 = csuper.mo33075final(i3);
        if (aSN1EncodableMo33075final4 instanceof Cimport) {
            this.f8442else = Cthrow.m33152const((Cimport) aSN1EncodableMo33075final4, false);
            aSN1EncodableMo33075final4 = csuper.mo33075final(i5);
            i5++;
        }
        this.f8444goto = Cclass.m32796catch(aSN1EncodableMo33075final4);
        if (csuper.size() > i5) {
            this.f8447this = Cthrow.m33152const((Cimport) csuper.mo33075final(i5), false);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static z4 m10058goto(Object obj) {
        if (obj instanceof z4) {
            return (z4) obj;
        }
        if (obj != null) {
            return new z4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m10059new(o81 o81Var) {
        int i = 0;
        if (o81Var == null) {
            return 0;
        }
        Enumeration enumerationM33159throw = o81Var.m5505try().m33159throw();
        while (true) {
            if (!enumerationM33159throw.hasMoreElements()) {
                break;
            }
            Object objNextElement = enumerationM33159throw.nextElement();
            if (objNextElement instanceof Cimport) {
                Cimport cimport = (Cimport) objNextElement;
                if (cimport.getTagNo() == 2) {
                    i = 1;
                } else if (cimport.getTagNo() == 3) {
                    i = 3;
                    break;
                }
            }
        }
        if (o81Var.m5504new() != null) {
            Enumeration enumerationM33159throw2 = o81Var.m5504new().m33159throw();
            while (enumerationM33159throw2.hasMoreElements()) {
                Object objNextElement2 = enumerationM33159throw2.nextElement();
                if ((objNextElement2 instanceof Cimport) && ((Cimport) objNextElement2).getTagNo() == 1) {
                    return 3;
                }
            }
        }
        return i;
    }

    /* renamed from: this, reason: not valid java name */
    public static z4 m10060this(Cimport cimport, boolean z) {
        return m10058goto(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cclass m10061break() {
        return this.f8444goto;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m10062case() {
        return this.f8448try;
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m10063catch() {
        return this.f8446new;
    }

    /* renamed from: class, reason: not valid java name */
    public o81 m10064class() {
        return this.f8445if;
    }

    /* renamed from: const, reason: not valid java name */
    public Cthrow m10065const() {
        return this.f8443for;
    }

    /* renamed from: else, reason: not valid java name */
    public fr m10066else() {
        return this.f8440case;
    }

    /* renamed from: final, reason: not valid java name */
    public Cthrow m10067final() {
        return this.f8447this;
    }

    /* renamed from: super, reason: not valid java name */
    public Cgoto m10068super() {
        return this.f8441do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8441do);
        if (this.f8445if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8445if));
        }
        cimport.m3516do(this.f8443for);
        cimport.m3516do(this.f8446new);
        if (this.f8448try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f8448try));
        }
        cimport.m3516do(this.f8440case);
        if (this.f8442else != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f8442else));
        }
        cimport.m3516do(this.f8444goto);
        if (this.f8447this != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 3, this.f8447this));
        }
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m10069try() {
        return this.f8442else;
    }
}
