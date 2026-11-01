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
public class x32 extends Cbreak implements X509ObjectIdentifiers, PKCSObjectIdentifiers {

    /* renamed from: break, reason: not valid java name */
    public Cinstanceof f7756break;

    /* renamed from: case, reason: not valid java name */
    public t62 f7757case;

    /* renamed from: catch, reason: not valid java name */
    public Cinstanceof f7758catch;

    /* renamed from: class, reason: not valid java name */
    public fh2 f7759class;

    /* renamed from: do, reason: not valid java name */
    public Csuper f7760do;

    /* renamed from: else, reason: not valid java name */
    public t62 f7761else;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f7762for;

    /* renamed from: goto, reason: not valid java name */
    public tg2 f7763goto;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f7764if;

    /* renamed from: new, reason: not valid java name */
    public b1 f7765new;

    /* renamed from: this, reason: not valid java name */
    public Ctry f7766this;

    /* renamed from: try, reason: not valid java name */
    public tg2 f7767try;

    public x32(Csuper csuper) {
        int i;
        this.f7760do = csuper;
        if (csuper.mo33075final(0) instanceof org.bouncycastle.asn1.u) {
            this.f7764if = Cgoto.m33041class((Cimport) csuper.mo33075final(0), true);
            i = 0;
        } else {
            this.f7764if = new Cgoto(0L);
            i = -1;
        }
        this.f7762for = Cgoto.m33040catch(csuper.mo33075final(i + 1));
        this.f7765new = b1.m418try(csuper.mo33075final(i + 2));
        this.f7767try = tg2.m7884else(csuper.mo33075final(i + 3));
        Csuper csuper2 = (Csuper) csuper.mo33075final(i + 4);
        this.f7757case = t62.m7734try(csuper2.mo33075final(0));
        this.f7761else = t62.m7734try(csuper2.mo33075final(1));
        this.f7763goto = tg2.m7884else(csuper.mo33075final(i + 5));
        int i2 = i + 6;
        this.f7766this = Ctry.m33291case(csuper.mo33075final(i2));
        for (int size = (csuper.size() - i2) - 1; size > 0; size--) {
            org.bouncycastle.asn1.u uVar = (org.bouncycastle.asn1.u) csuper.mo33075final(i2 + size);
            int tagNo = uVar.getTagNo();
            if (tagNo == 1) {
                this.f7756break = Cinstanceof.m33069return(uVar, false);
            } else if (tagNo == 2) {
                this.f7758catch = Cinstanceof.m33069return(uVar, false);
            } else if (tagNo == 3) {
                this.f7759class = fh2.m2289this(uVar);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static x32 m9374case(Object obj) {
        if (obj instanceof x32) {
            return (x32) obj;
        }
        if (obj != null) {
            return new x32(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static x32 m9375else(Cimport cimport, boolean z) {
        return m9374case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m9376break() {
        return this.f7762for;
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m9377catch() {
        return this.f7765new;
    }

    /* renamed from: class, reason: not valid java name */
    public t62 m9378class() {
        return this.f7757case;
    }

    /* renamed from: const, reason: not valid java name */
    public tg2 m9379const() {
        return this.f7763goto;
    }

    /* renamed from: final, reason: not valid java name */
    public Ctry m9380final() {
        return this.f7766this;
    }

    /* renamed from: goto, reason: not valid java name */
    public tg2 m9381goto() {
        return this.f7767try;
    }

    /* renamed from: new, reason: not valid java name */
    public t62 m9382new() {
        return this.f7761else;
    }

    /* renamed from: super, reason: not valid java name */
    public Cinstanceof m9383super() {
        return this.f7758catch;
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m9384this() {
        return this.f7756break;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m9385throw() {
        return this.f7764if.m33044final().intValue() + 1;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7760do;
    }

    /* renamed from: try, reason: not valid java name */
    public fh2 m9386try() {
        return this.f7759class;
    }

    /* renamed from: while, reason: not valid java name */
    public Cgoto m9387while() {
        return this.f7764if;
    }
}
