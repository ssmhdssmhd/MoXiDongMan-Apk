package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cp extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f842do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f843if;

    public cp(Ccatch ccatch) {
        this(ccatch, null);
    }

    public cp(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f842do = ccatch;
        this.f843if = aSN1Encodable;
    }

    private cp(Csuper csuper) {
        this.f842do = (Ccatch) csuper.mo33075final(0);
        if (csuper.size() > 1) {
            this.f843if = csuper.mo33075final(1);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static cp m985try(Object obj) {
        if (obj instanceof cp) {
            return (cp) obj;
        }
        if (obj != null) {
            return new cp(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m986case() {
        return this.f843if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m987new() {
        return this.f842do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f842do);
        ASN1Encodable aSN1Encodable = this.f843if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
