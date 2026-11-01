package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class k42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f3275do;

    /* renamed from: for, reason: not valid java name */
    private final Cthrow f3276for;

    /* renamed from: if, reason: not valid java name */
    private final Ccatch f3277if;

    public k42(ta taVar, Ccatch ccatch, Cthrow cthrow) {
        this.f3275do = taVar;
        this.f3277if = ccatch;
        this.f3276for = cthrow;
    }

    private k42(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f3275do = ta.m7794case(csuper.mo33075final(0));
        this.f3277if = Ccatch.m32790throw(csuper.mo33075final(1));
        this.f3276for = Cthrow.m33151class(csuper.mo33075final(2));
    }

    /* renamed from: else, reason: not valid java name */
    public static k42 m4238else(Object obj) {
        if (obj instanceof k42) {
            return (k42) obj;
        }
        if (obj != null) {
            return new k42(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ta m4239case() {
        return this.f3275do;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m4240new() {
        return this.f3277if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(new ASN1Encodable[]{this.f3275do, this.f3277if, this.f3276for});
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m4241try() {
        return this.f3276for;
    }
}
