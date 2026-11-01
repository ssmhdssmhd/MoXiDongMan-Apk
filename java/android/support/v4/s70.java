package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class s70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f6037do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f6038if;

    private s70() {
    }

    public s70(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6037do = ccatch;
        this.f6038if = aSN1Encodable;
    }

    private s70(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f6037do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f6038if = csuper.mo33075final(1);
        } else {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static s70 m7282new(Cbreak cbreak) {
        if (cbreak instanceof s70) {
            return (s70) cbreak;
        }
        if (cbreak != null) {
            return new s70(Csuper.m33129catch(cbreak));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static s70 m7283try(Cimport cimport, boolean z) {
        return m7282new(Csuper.m33130class(cimport, z));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6037do);
        cimport.m3516do(this.f6038if);
        return Csuper.m33129catch(cimport);
    }
}
