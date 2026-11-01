package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cvolatile;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;

/* loaded from: classes3.dex */
public class fr extends Cbreak implements CMSObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f1962do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f1963if;

    public fr(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f1962do = ccatch;
        this.f1963if = aSN1Encodable;
    }

    public fr(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f1962do = (Ccatch) csuper.mo33075final(0);
        if (csuper.size() > 1) {
            Cimport cimport = (Cimport) csuper.mo33075final(1);
            if (!cimport.m33066final() || cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("Bad tag for 'content'");
            }
            this.f1963if = cimport.m33065const();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static fr m2388case(Object obj) {
        if (obj instanceof fr) {
            return (fr) obj;
        }
        if (obj != null) {
            return new fr(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static fr m2389else(Cimport cimport, boolean z) {
        return m2388case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable m2390new() {
        return this.f1963if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1962do);
        ASN1Encodable aSN1Encodable = this.f1963if;
        if (aSN1Encodable != null) {
            cimport.m3516do(new Cvolatile(0, aSN1Encodable));
        }
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m2391try() {
        return this.f1962do;
    }
}
