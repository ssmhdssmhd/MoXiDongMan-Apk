package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7084do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f7085if;

    public v4(String str, ASN1Encodable aSN1Encodable) {
        this(new Ccatch(str), aSN1Encodable);
    }

    public v4(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7084do = ccatch;
        this.f7085if = aSN1Encodable;
    }

    private v4(Csuper csuper) {
        this.f7084do = (Ccatch) csuper.mo33075final(0);
        this.f7085if = csuper.mo33075final(1);
    }

    /* renamed from: new, reason: not valid java name */
    public static v4 m8743new(Object obj) {
        if (obj instanceof v4) {
            return (v4) obj;
        }
        if (obj != null) {
            return new v4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m8744case() {
        return this.f7085if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7084do);
        cimport.m3516do(this.f7085if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m8745try() {
        return this.f7084do;
    }
}
