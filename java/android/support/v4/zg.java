package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class zg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f8539do;

    /* renamed from: for, reason: not valid java name */
    public Ctry f8540for;

    /* renamed from: if, reason: not valid java name */
    public tg2 f8541if;

    /* renamed from: new, reason: not valid java name */
    public Cthrow f8542new;

    public zg(tg2 tg2Var, Ctry ctry, Cthrow cthrow) {
        this.f8539do = new Cgoto(0L);
        this.f8542new = null;
        if (tg2Var == null || ctry == null) {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        }
        m10181this(cthrow);
        this.f8541if = tg2Var;
        this.f8540for = ctry;
        this.f8542new = cthrow;
    }

    public zg(Csuper csuper) {
        this.f8539do = new Cgoto(0L);
        this.f8542new = null;
        this.f8539do = (Cgoto) csuper.mo33075final(0);
        this.f8541if = tg2.m7884else(csuper.mo33075final(1));
        this.f8540for = Ctry.m33291case(csuper.mo33075final(2));
        if (csuper.size() > 3) {
            this.f8542new = Cthrow.m33152const((Cimport) csuper.mo33075final(3), false);
        }
        m10181this(this.f8542new);
        if (this.f8541if == null || this.f8539do == null || this.f8540for == null) {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        }
    }

    public zg(org.bouncycastle.asn1.x509.Cgoto cgoto, Ctry ctry, Cthrow cthrow) {
        this(tg2.m7884else(cgoto.toASN1Primitive()), ctry, cthrow);
    }

    /* renamed from: this, reason: not valid java name */
    private static void m10181this(Cthrow cthrow) {
        if (cthrow == null) {
            return;
        }
        Enumeration enumerationM33159throw = cthrow.m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            m4 m4VarM4834else = m4.m4834else(enumerationM33159throw.nextElement());
            if (m4VarM4834else.m4836new().equals(PKCSObjectIdentifiers.pkcs_9_at_challengePassword) && m4VarM4834else.m4837try().size() != 1) {
                throw new IllegalArgumentException("challengePassword attribute must have one value");
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static zg m10182try(Object obj) {
        if (obj instanceof zg) {
            return (zg) obj;
        }
        if (obj != null) {
            return new zg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public tg2 m10183case() {
        return this.f8541if;
    }

    /* renamed from: else, reason: not valid java name */
    public Ctry m10184else() {
        return this.f8540for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m10185goto() {
        return this.f8539do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m10186new() {
        return this.f8542new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8539do);
        cimport.m3516do(this.f8541if);
        cimport.m3516do(this.f8540for);
        if (this.f8542new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8542new));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
