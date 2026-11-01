package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;

/* loaded from: classes3.dex */
public class zg1 extends Cbreak implements ETSIQCObjectIdentifiers, RFC3739QCObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    public Ccatch f8547do;

    /* renamed from: if, reason: not valid java name */
    public ASN1Encodable f8548if;

    public zg1(Ccatch ccatch) {
        this.f8547do = ccatch;
        this.f8548if = null;
    }

    public zg1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f8547do = ccatch;
        this.f8548if = aSN1Encodable;
    }

    private zg1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f8547do = Ccatch.m32790throw(enumerationMo33076super.nextElement());
        if (enumerationMo33076super.hasMoreElements()) {
            this.f8548if = (ASN1Encodable) enumerationMo33076super.nextElement();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static zg1 m10192new(Object obj) {
        if (obj instanceof zg1) {
            return (zg1) obj;
        }
        if (obj != null) {
            return new zg1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m10193case() {
        return this.f8548if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8547do);
        ASN1Encodable aSN1Encodable = this.f8548if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m10194try() {
        return this.f8547do;
    }
}
