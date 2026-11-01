package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class va1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Csuper f7131do;

    /* renamed from: for, reason: not valid java name */
    private final Csuper f7132for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f7133if;

    private va1(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f7131do = Csuper.m33129catch(csuper.mo33075final(0));
        this.f7133if = Csuper.m33129catch(csuper.mo33075final(1));
        this.f7132for = Csuper.m33129catch(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static va1 m8817case(Object obj) {
        if (obj instanceof va1) {
            return (va1) obj;
        }
        if (obj != null) {
            return new va1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static va1 m8818else(Cimport cimport, boolean z) {
        return m8817case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    public Csuper m8819goto() {
        return this.f7132for;
    }

    /* renamed from: new, reason: not valid java name */
    public Csuper m8820new() {
        return this.f7133if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7131do);
        cimport.m3516do(this.f7133if);
        cimport.m3516do(this.f7132for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Csuper m8821try() {
        return this.f7131do;
    }
}
