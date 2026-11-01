package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cvolatile;

/* loaded from: classes3.dex */
public class i70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f2639do;

    public i70(Ccatch ccatch, b1 b1Var, ASN1Encodable aSN1Encodable) {
        Cimport cimport = new Cimport();
        cimport.m3516do(ccatch);
        cimport.m3516do(b1Var.toASN1Primitive());
        cimport.m3516do(new Cvolatile(false, 0, aSN1Encodable));
        this.f2639do = new Cpackage(cimport);
    }

    private i70(Csuper csuper) {
        if (((Cgoto) csuper.mo33075final(0)).m33044final().intValue() != 0) {
            throw new IllegalArgumentException("sequence not version 0");
        }
        this.f2639do = Csuper.m33129catch(csuper.mo33075final(1));
    }

    /* renamed from: else, reason: not valid java name */
    public static i70 m3301else(Object obj) {
        if (obj instanceof i70) {
            return (i70) obj;
        }
        if (obj != null) {
            return new i70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m3302case() {
        return b1.m418try(this.f2639do.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m3303new() {
        if (this.f2639do.size() == 3) {
            return Cclass.m32797class(Cimport.m33063catch(this.f2639do.mo33075final(2)), false);
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(0L));
        cimport.m3516do(this.f2639do);
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m3304try() {
        return Ccatch.m32790throw(this.f2639do.mo33075final(0));
    }
}
