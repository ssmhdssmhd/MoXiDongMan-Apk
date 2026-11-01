package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;

/* loaded from: classes3.dex */
public class bh2 extends Cbreak implements X509ObjectIdentifiers, PKCSObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    public Csuper f442do;

    /* renamed from: for, reason: not valid java name */
    public b1 f443for;

    /* renamed from: if, reason: not valid java name */
    public x32 f444if;

    /* renamed from: new, reason: not valid java name */
    public Cinstanceof f445new;

    public bh2(Csuper csuper) {
        this.f442do = csuper;
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.f444if = x32.m9374case(csuper.mo33075final(0));
        this.f443for = b1.m418try(csuper.mo33075final(1));
        this.f445new = Cinstanceof.m33068public(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static bh2 m543case(Cimport cimport, boolean z) {
        return m544try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static bh2 m544try(Object obj) {
        if (obj instanceof bh2) {
            return (bh2) obj;
        }
        if (obj != null) {
            return new bh2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public b1 m545break() {
        return this.f443for;
    }

    /* renamed from: catch, reason: not valid java name */
    public t62 m546catch() {
        return this.f444if.m9378class();
    }

    /* renamed from: class, reason: not valid java name */
    public tg2 m547class() {
        return this.f444if.m9379const();
    }

    /* renamed from: const, reason: not valid java name */
    public Ctry m548const() {
        return this.f444if.m9380final();
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m549else() {
        return this.f444if.m9381goto();
    }

    /* renamed from: final, reason: not valid java name */
    public x32 m550final() {
        return this.f444if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m551goto() {
        return this.f444if.m9376break();
    }

    /* renamed from: new, reason: not valid java name */
    public t62 m552new() {
        return this.f444if.m9382new();
    }

    /* renamed from: super, reason: not valid java name */
    public int m553super() {
        return this.f444if.m9385throw();
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m554this() {
        return this.f445new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f442do;
    }
}
