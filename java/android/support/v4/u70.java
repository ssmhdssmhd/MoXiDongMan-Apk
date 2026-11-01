package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f6788do;

    public u70(Ccatch ccatch) {
        this.f6788do = new b1(ccatch);
    }

    public u70(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f6788do = new b1(ccatch, aSN1Encodable);
    }

    private u70(Csuper csuper) {
        this.f6788do = b1.m418try(csuper);
    }

    /* renamed from: try, reason: not valid java name */
    public static u70 m8272try(Object obj) {
        if (obj instanceof u70) {
            return (u70) obj;
        }
        if (obj != null) {
            return new u70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m8273case() {
        return this.f6788do.m419else();
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m8274new() {
        return this.f6788do.m420new();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6788do.toASN1Primitive();
    }
}
