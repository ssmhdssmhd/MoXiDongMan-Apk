package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class ky1 extends Cbreak implements PKCSObjectIdentifiers {

    /* renamed from: case, reason: not valid java name */
    private Cthrow f3503case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3504do;

    /* renamed from: for, reason: not valid java name */
    private er f3505for;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f3506if;

    /* renamed from: new, reason: not valid java name */
    private Cthrow f3507new;

    /* renamed from: try, reason: not valid java name */
    private Cthrow f3508try;

    public ky1(Cgoto cgoto, Cthrow cthrow, er erVar, Cthrow cthrow2, Cthrow cthrow3, Cthrow cthrow4) {
        this.f3504do = cgoto;
        this.f3506if = cthrow;
        this.f3505for = erVar;
        this.f3507new = cthrow2;
        this.f3508try = cthrow3;
        this.f3503case = cthrow4;
    }

    public ky1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f3504do = (Cgoto) enumerationMo33076super.nextElement();
        this.f3506if = (Cthrow) enumerationMo33076super.nextElement();
        this.f3505for = er.m1996case(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cfinal cfinal = (Cfinal) enumerationMo33076super.nextElement();
            if (cfinal instanceof Cimport) {
                Cimport cimport = (Cimport) cfinal;
                int tagNo = cimport.getTagNo();
                if (tagNo == 0) {
                    this.f3507new = Cthrow.m33152const(cimport, false);
                } else {
                    if (tagNo != 1) {
                        throw new IllegalArgumentException("unknown tag value " + cimport.getTagNo());
                    }
                    this.f3508try = Cthrow.m33152const(cimport, false);
                }
            } else {
                this.f3503case = (Cthrow) cfinal;
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static ky1 m4536goto(Object obj) {
        if (obj instanceof ky1) {
            return (ky1) obj;
        }
        if (obj != null) {
            return new ky1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m4537break() {
        return this.f3504do;
    }

    /* renamed from: case, reason: not valid java name */
    public er m4538case() {
        return this.f3505for;
    }

    /* renamed from: else, reason: not valid java name */
    public Cthrow m4539else() {
        return this.f3506if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m4540new() {
        return this.f3508try;
    }

    /* renamed from: this, reason: not valid java name */
    public Cthrow m4541this() {
        return this.f3503case;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3504do);
        cimport.m3516do(this.f3506if);
        cimport.m3516do(this.f3505for);
        if (this.f3507new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f3507new));
        }
        if (this.f3508try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f3508try));
        }
        cimport.m3516do(this.f3503case);
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m4542try() {
        return this.f3507new;
    }
}
