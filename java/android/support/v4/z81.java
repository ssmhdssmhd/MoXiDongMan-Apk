package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class z81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f8466do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f8467if;

    public z81(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f8466do = ccatch;
        this.f8467if = aSN1Encodable;
    }

    private z81(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f8466do = (Ccatch) csuper.mo33075final(0);
            try {
                this.f8467if = Cfinal.m33015else(csuper.mo33075final(1).toASN1Primitive().m32764do(ASN1Encoding.DER));
            } catch (IOException unused) {
                throw new IllegalStateException();
            }
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static z81 m10107new(Object obj) {
        if (obj instanceof z81) {
            return (z81) obj;
        }
        if (obj != null) {
            return new z81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m10108case() {
        return this.f8467if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8466do);
        cimport.m3516do(this.f8467if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m10109try() {
        return this.f8466do;
    }
}
