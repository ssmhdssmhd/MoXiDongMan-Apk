package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class k4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Ccase f3267do;

    /* renamed from: if, reason: not valid java name */
    public Ccase f3268if;

    public k4(Ccase ccase, Ccase ccase2) {
        this.f3267do = ccase;
        this.f3268if = ccase2;
    }

    private k4(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f3267do = Ccase.m32773final(csuper.mo33075final(0));
            this.f3268if = Ccase.m32773final(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static k4 m4230new(Object obj) {
        if (obj instanceof k4) {
            return (k4) obj;
        }
        if (obj != null) {
            return new k4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m4231case() {
        return this.f3267do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3267do);
        cimport.m3516do(this.f3268if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m4232try() {
        return this.f3268if;
    }
}
