package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f6791do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f6792if;

    public u81(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6791do = ccatch;
        this.f6792if = aSN1Encodable;
    }

    private u81(Csuper csuper) {
        this.f6791do = (Ccatch) csuper.mo33075final(0);
        this.f6792if = csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static u81 m8285new(Object obj) {
        if (obj instanceof u81) {
            return (u81) obj;
        }
        if (obj != null) {
            return new u81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m8286case() {
        return this.f6791do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6791do);
        cimport.m3516do(this.f6792if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m8287try() {
        return this.f6792if;
    }
}
