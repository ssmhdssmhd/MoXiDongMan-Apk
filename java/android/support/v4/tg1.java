package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class tg1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f6516do;

    /* renamed from: for, reason: not valid java name */
    private org.bouncycastle.asn1.g f6517for;

    /* renamed from: if, reason: not valid java name */
    private Ctry f6518if;

    private tg1(Csuper csuper) {
        this.f6516do = csuper;
        this.f6518if = Ctry.m33291case(csuper.mo33075final(0));
        this.f6517for = org.bouncycastle.asn1.g.m33023catch(csuper.mo33075final(1));
    }

    /* renamed from: try, reason: not valid java name */
    public static tg1 m7879try(Object obj) {
        if (obj instanceof tg1) {
            return (tg1) obj;
        }
        if (obj != null) {
            return new tg1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ctry m7880case() {
        return this.f6518if;
    }

    /* renamed from: new, reason: not valid java name */
    public org.bouncycastle.asn1.g m7881new() {
        return this.f6517for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6516do;
    }
}
