package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cdo;

/* loaded from: classes3.dex */
public class y62 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private fr f8143do;

    /* renamed from: if, reason: not valid java name */
    private Cdo f8144if;

    public y62(fr frVar) {
        this.f8143do = frVar;
    }

    private y62(Csuper csuper) {
        this.f8143do = fr.m2388case(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f8144if = Cdo.m33207new(csuper.mo33075final(1));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static y62 m9763case(Object obj) {
        if (obj instanceof y62) {
            return (y62) obj;
        }
        if (obj != null) {
            return new y62(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public fr m9764else() {
        return this.f8143do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo m9765new() {
        return this.f8144if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8143do);
        Cdo cdo = this.f8144if;
        if (cdo != null) {
            cimport.m3516do(cdo);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cdo m9766try() {
        return this.f8144if;
    }
}
