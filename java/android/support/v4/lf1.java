package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class lf1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccase f3643do;

    /* renamed from: if, reason: not valid java name */
    private Ccase f3644if;

    private lf1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            if (cimport.getTagNo() == 0) {
                this.f3643do = Ccase.m32775super(cimport, false);
            } else if (cimport.getTagNo() == 1) {
                this.f3644if = Ccase.m32775super(cimport, false);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static lf1 m4645new(Object obj) {
        if (obj instanceof lf1) {
            return (lf1) obj;
        }
        if (obj != null) {
            return new lf1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m4646case() {
        return this.f3643do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f3643do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f3643do));
        }
        if (this.f3644if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f3644if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m4647try() {
        return this.f3644if;
    }
}
