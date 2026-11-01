package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class a91 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f61do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f62if;

    public a91(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f61do = ccatch;
        this.f62if = aSN1Encodable;
    }

    private a91(Csuper csuper) {
        this.f61do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f62if = csuper.mo33075final(1);
    }

    /* renamed from: case, reason: not valid java name */
    public static a91 m86case(Object obj) {
        if (obj instanceof a91) {
            return (a91) obj;
        }
        if (obj != null) {
            return new a91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static a91 m87else(Cimport cimport, boolean z) {
        return m86case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m88new() {
        return this.f62if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f61do);
        cimport.m3516do(this.f62if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m89try() {
        return this.f61do;
    }
}
