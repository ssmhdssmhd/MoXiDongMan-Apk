package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ls extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.asn1.g f3758do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f3759for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f3760if;

    private ls(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f3758do = org.bouncycastle.asn1.g.m33024class(cimport, true);
            } else if (tagNo == 1) {
                this.f3760if = Cgoto.m33041class(cimport, true);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("unknown tag number: " + cimport.getTagNo());
                }
                this.f3759for = Ccase.m32775super(cimport, true);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static ls m4753else(Object obj) {
        if (obj instanceof ls) {
            return (ls) obj;
        }
        if (obj != null) {
            return new ls(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public org.bouncycastle.asn1.g m4754case() {
        return this.f3758do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m4755new() {
        return this.f3760if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f3758do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f3758do));
        }
        if (this.f3760if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f3760if));
        }
        if (this.f3759for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f3759for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m4756try() {
        return this.f3759for;
    }
}
