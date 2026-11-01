package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uk0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cclass f6916do;

    private uk0(Csuper csuper) {
        this.f6916do = csuper.size() == 1 ? (Cclass) csuper.mo33075final(0) : null;
    }

    public uk0(byte[] bArr) {
        this.f6916do = new org.bouncycastle.asn1.j(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static uk0 m8472try(Object obj) {
        if (obj instanceof uk0) {
            return (uk0) obj;
        }
        if (obj != null) {
            return new uk0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m8473new() {
        Cclass cclass = this.f6916do;
        if (cclass != null) {
            return q3.m6371final(cclass.mo5490const());
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cclass cclass = this.f6916do;
        if (cclass != null) {
            cimport.m3516do(cclass);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
