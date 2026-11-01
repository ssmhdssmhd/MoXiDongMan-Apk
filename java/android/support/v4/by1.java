package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cthis;

/* loaded from: classes3.dex */
public class by1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private ay1 f564do;

    /* renamed from: if, reason: not valid java name */
    private boolean f565if = true;

    public by1() {
    }

    public by1(ay1 ay1Var) {
        this.f564do = ay1Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static by1 m701new(Object obj) {
        if (obj instanceof by1) {
            return (by1) obj;
        }
        if ((obj instanceof Cthis) || Cbreak.m32763if(obj, 5)) {
            return new by1();
        }
        if (obj != null) {
            return new by1(ay1.m405new(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m702case() {
        return this.f565if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f565if ? org.bouncycastle.asn1.h.f29080do : this.f564do.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public ay1 m703try() {
        return this.f564do;
    }
}
