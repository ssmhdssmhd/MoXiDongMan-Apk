package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class yh0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f8223do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f8224for;

    /* renamed from: if, reason: not valid java name */
    private final Ctry f8225if;

    public yh0(Ccatch ccatch, Ctry ctry, byte[] bArr) {
        this.f8223do = ccatch;
        this.f8225if = ctry;
        this.f8224for = q3.m6371final(bArr);
    }

    private yh0(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f8223do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f8224for = Cclass.m32796catch(csuper.mo33075final(1)).mo5490const();
            this.f8225if = null;
        } else if (csuper.size() == 3) {
            this.f8223do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f8225if = Ctry.m33292else(Cimport.m33063catch(csuper.mo33075final(1)), false);
            this.f8224for = Cclass.m32796catch(csuper.mo33075final(2)).mo5490const();
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + csuper.size());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static yh0 m9856case(Object obj) {
        if (obj instanceof yh0) {
            return (yh0) obj;
        }
        if (obj != null) {
            return new yh0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static yh0 m9857else(Cimport cimport, boolean z) {
        return new yh0(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m9858goto() {
        return q3.m6371final(this.f8224for);
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9859new() {
        return this.f8223do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8223do);
        if (this.f8225if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8225if));
        }
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f8224for));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ctry m9860try() {
        return this.f8225if;
    }
}
