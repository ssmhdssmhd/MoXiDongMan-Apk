package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class y81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f8148do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f8149if;

    public y81(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f8148do = ccatch;
        this.f8149if = aSN1Encodable;
    }

    private y81(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f8148do = new Ccatch(((Ccatch) csuper.mo33075final(0)).m32795super());
            try {
                this.f8149if = Cfinal.m33015else(csuper.mo33075final(1).toASN1Primitive().m32764do(ASN1Encoding.DER));
            } catch (IOException unused) {
                throw new IllegalStateException();
            }
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static y81 m9772new(Object obj) {
        if (obj instanceof y81) {
            return (y81) obj;
        }
        if (obj != null) {
            return new y81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m9773case() {
        return this.f8149if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8148do);
        cimport.m3516do(this.f8149if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m9774try() {
        return this.f8148do;
    }
}
