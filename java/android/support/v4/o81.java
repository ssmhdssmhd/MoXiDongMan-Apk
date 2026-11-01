package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class o81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cthrow f4477do;

    /* renamed from: if, reason: not valid java name */
    private Cthrow f4478if;

    private o81(Csuper csuper) {
        Cimport cimport;
        int size = csuper.size();
        if (size != 0) {
            if (size == 1) {
                cimport = (Cimport) csuper.mo33075final(0);
                int tagNo = cimport.getTagNo();
                if (tagNo == 0) {
                    this.f4477do = Cthrow.m33152const(cimport, false);
                    return;
                } else if (tagNo != 1) {
                    throw new IllegalArgumentException("Bad tag in OriginatorInfo: " + cimport.getTagNo());
                }
            } else {
                if (size != 2) {
                    throw new IllegalArgumentException("OriginatorInfo too big");
                }
                this.f4477do = Cthrow.m33152const((Cimport) csuper.mo33075final(0), false);
                cimport = (Cimport) csuper.mo33075final(1);
            }
            this.f4478if = Cthrow.m33152const(cimport, false);
        }
    }

    public o81(Cthrow cthrow, Cthrow cthrow2) {
        this.f4477do = cthrow;
        this.f4478if = cthrow2;
    }

    /* renamed from: case, reason: not valid java name */
    public static o81 m5502case(Object obj) {
        if (obj instanceof o81) {
            return (o81) obj;
        }
        if (obj != null) {
            return new o81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static o81 m5503else(Cimport cimport, boolean z) {
        return m5502case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m5504new() {
        return this.f4478if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f4477do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f4477do));
        }
        if (this.f4478if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f4478if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m5505try() {
        return this.f4477do;
    }
}
