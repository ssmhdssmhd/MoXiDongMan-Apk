package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Ccase;

/* loaded from: classes3.dex */
public class l42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f3538do;

    /* renamed from: if, reason: not valid java name */
    private final Ccase f3539if;

    public l42(ta taVar, Ccase ccase) {
        this.f3538do = taVar;
        this.f3539if = ccase;
    }

    private l42(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f3538do = ta.m7794case(csuper.mo33075final(0));
        this.f3539if = Ccase.m32800case(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static l42 m4591new(Object obj) {
        if (obj instanceof l42) {
            return (l42) obj;
        }
        if (obj != null) {
            return new l42(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static l42 m4592try(Cimport cimport, boolean z) {
        return m4591new(Csuper.m33130class(cimport, z));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3538do);
        cimport.m3516do(this.f3539if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
