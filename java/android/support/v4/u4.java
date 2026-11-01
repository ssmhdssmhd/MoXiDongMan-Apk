package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f6747do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f6748if;

    public u4(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6747do = ccatch;
        this.f6748if = aSN1Encodable;
    }

    private u4(Csuper csuper) {
        this.f6747do = (Ccatch) csuper.mo33075final(0);
        this.f6748if = csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static u4 m8230new(Object obj) {
        if (obj instanceof u4) {
            return (u4) obj;
        }
        if (obj != null) {
            return new u4(Csuper.m33129catch(obj));
        }
        throw new IllegalArgumentException("null value in getInstance()");
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m8231case() {
        return this.f6748if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6747do);
        cimport.m3516do(this.f6748if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m8232try() {
        return this.f6747do;
    }
}
