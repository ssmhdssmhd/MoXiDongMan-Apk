package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class rg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f5780do;

    /* renamed from: for, reason: not valid java name */
    public b1 f5781for;

    /* renamed from: if, reason: not valid java name */
    public w32 f5782if;

    /* renamed from: new, reason: not valid java name */
    public Cinstanceof f5783new;

    private rg(Csuper csuper) {
        this.f5780do = csuper;
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.f5782if = w32.m9030case(csuper.mo33075final(0));
        this.f5781for = b1.m418try(csuper.mo33075final(1));
        this.f5783new = Cinstanceof.m33068public(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static rg m6955case(Cimport cimport, boolean z) {
        return m6956try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static rg m6956try(Object obj) {
        if (obj instanceof rg) {
            return (rg) obj;
        }
        if (obj != null) {
            return new rg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public b1 m6957break() {
        return this.f5781for;
    }

    /* renamed from: catch, reason: not valid java name */
    public t62 m6958catch() {
        return this.f5782if.m9034class();
    }

    /* renamed from: class, reason: not valid java name */
    public tg2 m6959class() {
        return this.f5782if.m9035const();
    }

    /* renamed from: const, reason: not valid java name */
    public Ctry m6960const() {
        return this.f5782if.m9036final();
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m6961else() {
        return this.f5782if.m9037goto();
    }

    /* renamed from: final, reason: not valid java name */
    public w32 m6962final() {
        return this.f5782if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m6963goto() {
        return this.f5782if.m9032break();
    }

    /* renamed from: new, reason: not valid java name */
    public t62 m6964new() {
        return this.f5782if.m9038new();
    }

    /* renamed from: super, reason: not valid java name */
    public Cgoto m6965super() {
        return this.f5782if.m9041throw();
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m6966this() {
        return this.f5783new;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m6967throw() {
        return this.f5782if.m9043while();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f5780do;
    }
}
