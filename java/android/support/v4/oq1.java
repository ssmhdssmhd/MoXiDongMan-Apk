package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class oq1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f4720do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f4721if;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f4715for = PKCSObjectIdentifiers.preferSignedData;

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f4717new = PKCSObjectIdentifiers.canNotDecryptAny;

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f4719try = PKCSObjectIdentifiers.sMIMECapabilitiesVersions;

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f4712case = new Ccatch("1.3.14.3.2.7");

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f4714else = PKCSObjectIdentifiers.des_EDE3_CBC;

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f4716goto = PKCSObjectIdentifiers.RC2_CBC;

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f4718this = NISTObjectIdentifiers.id_aes128_CBC;

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f4711break = NISTObjectIdentifiers.id_aes192_CBC;

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f4713catch = NISTObjectIdentifiers.id_aes256_CBC;

    public oq1(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f4720do = ccatch;
        this.f4721if = aSN1Encodable;
    }

    public oq1(Csuper csuper) {
        this.f4720do = (Ccatch) csuper.mo33075final(0);
        if (csuper.size() > 1) {
            this.f4721if = (Cfinal) csuper.mo33075final(1);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static oq1 m5737try(Object obj) {
        if (obj == null || (obj instanceof oq1)) {
            return (oq1) obj;
        }
        if (obj instanceof Csuper) {
            return new oq1((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid SMIMECapability");
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1Encodable m5738case() {
        return this.f4721if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m5739new() {
        return this.f4720do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4720do);
        ASN1Encodable aSN1Encodable = this.f4721if;
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
