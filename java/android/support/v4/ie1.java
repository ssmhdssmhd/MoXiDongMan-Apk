package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ie1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2694do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f2695if;

    public ie1(String str) {
        this.f2694do = he1.f2390case;
        this.f2695if = new org.bouncycastle.asn1.g(str);
    }

    public ie1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f2694do = ccatch;
        this.f2695if = aSN1Encodable;
    }

    public ie1(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f2694do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f2695if = csuper.mo33075final(1);
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ie1 m3402new(Object obj) {
        if (obj instanceof ie1) {
            return (ie1) obj;
        }
        if (obj != null) {
            return new ie1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m3403case() {
        return this.f2695if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2694do);
        cimport.m3516do(this.f2695if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m3404try() {
        return this.f2694do;
    }
}
