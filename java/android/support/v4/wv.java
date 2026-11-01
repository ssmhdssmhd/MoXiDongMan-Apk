package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class wv extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f7701do;

    private wv(Cclass cclass) {
        this.f7701do = cclass;
    }

    public wv(Cnew cnew) {
        this.f7701do = new org.bouncycastle.asn1.j(vv.m8961if(cnew));
    }

    /* renamed from: new, reason: not valid java name */
    public static wv m9287new(Object obj) {
        if (obj instanceof wv) {
            return (wv) obj;
        }
        if (obj != null) {
            return new wv(Cclass.m32796catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7701do;
    }
}
