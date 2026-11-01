package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class l61 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private nn1 f3552do;

    /* renamed from: if, reason: not valid java name */
    private Ccase f3553if;

    public l61(nn1 nn1Var, Ccase ccase) {
        this.f3552do = nn1Var;
        this.f3553if = ccase;
    }

    private l61(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f3552do = nn1.m5279new(csuper.mo33075final(0));
            this.f3553if = (Ccase) csuper.mo33075final(1);
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static l61 m4602new(Object obj) {
        if (obj instanceof l61) {
            return (l61) obj;
        }
        if (obj != null) {
            return new l61(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m4603case() {
        return this.f3553if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3552do);
        cimport.m3516do(this.f3553if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public nn1 m4604try() {
        return this.f3552do;
    }
}
