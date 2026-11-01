package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class ud2 {

    /* renamed from: break, reason: not valid java name */
    private boolean f6834break;

    /* renamed from: case, reason: not valid java name */
    public t62 f6835case;

    /* renamed from: catch, reason: not valid java name */
    private Cinstanceof f6836catch;

    /* renamed from: class, reason: not valid java name */
    private Cinstanceof f6837class;

    /* renamed from: do, reason: not valid java name */
    public org.bouncycastle.asn1.u f6838do = new org.bouncycastle.asn1.u(true, 0, new Cgoto(2));

    /* renamed from: else, reason: not valid java name */
    public tg2 f6839else;

    /* renamed from: for, reason: not valid java name */
    public b1 f6840for;

    /* renamed from: goto, reason: not valid java name */
    public Ctry f6841goto;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f6842if;

    /* renamed from: new, reason: not valid java name */
    public tg2 f6843new;

    /* renamed from: this, reason: not valid java name */
    public y90 f6844this;

    /* renamed from: try, reason: not valid java name */
    public t62 f6845try;

    /* renamed from: break, reason: not valid java name */
    public void m8380break(b1 b1Var) {
        this.f6840for = b1Var;
    }

    /* renamed from: case, reason: not valid java name */
    public void m8381case(tg2 tg2Var) {
        this.f6843new = tg2Var;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m8382catch(t62 t62Var) {
        this.f6845try = t62Var;
    }

    /* renamed from: class, reason: not valid java name */
    public void m8383class(Cnative cnative) {
        this.f6845try = new t62(cnative);
    }

    /* renamed from: const, reason: not valid java name */
    public void m8384const(tg2 tg2Var) {
        this.f6839else = tg2Var;
    }

    /* renamed from: do, reason: not valid java name */
    public w32 m8385do() {
        if (this.f6842if == null || this.f6840for == null || this.f6843new == null || this.f6845try == null || this.f6835case == null || ((this.f6839else == null && !this.f6834break) || this.f6841goto == null)) {
            throw new IllegalStateException("not all mandatory fields set in V3 TBScertificate generator");
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6838do);
        cimport.m3516do(this.f6842if);
        cimport.m3516do(this.f6840for);
        cimport.m3516do(this.f6843new);
        Cimport cimport2 = new Cimport();
        cimport2.m3516do(this.f6845try);
        cimport2.m3516do(this.f6835case);
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        ASN1Encodable nVar = this.f6839else;
        if (nVar == null) {
            nVar = new org.bouncycastle.asn1.n();
        }
        cimport.m3516do(nVar);
        cimport.m3516do(this.f6841goto);
        if (this.f6836catch != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f6836catch));
        }
        if (this.f6837class != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f6837class));
        }
        if (this.f6844this != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 3, this.f6844this));
        }
        return w32.m9030case(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: else, reason: not valid java name */
    public void m8386else(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f6843new = tg2.m7884else(cgoto);
    }

    /* renamed from: final, reason: not valid java name */
    public void m8387final(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f6839else = tg2.m7884else(cgoto.toASN1Primitive());
    }

    /* renamed from: for, reason: not valid java name */
    public void m8388for(Cnative cnative) {
        this.f6835case = new t62(cnative);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m8389goto(Cinstanceof cinstanceof) {
        this.f6836catch = cinstanceof;
    }

    /* renamed from: if, reason: not valid java name */
    public void m8390if(t62 t62Var) {
        this.f6835case = t62Var;
    }

    /* renamed from: new, reason: not valid java name */
    public void m8391new(y90 y90Var) {
        Cif cifM9786case;
        this.f6844this = y90Var;
        if (y90Var == null || (cifM9786case = y90Var.m9786case(Cif.f29320goto)) == null || !cifM9786case.m33248this()) {
            return;
        }
        this.f6834break = true;
    }

    /* renamed from: super, reason: not valid java name */
    public void m8392super(Ctry ctry) {
        this.f6841goto = ctry;
    }

    /* renamed from: this, reason: not valid java name */
    public void m8393this(Cgoto cgoto) {
        this.f6842if = cgoto;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m8394throw(Cinstanceof cinstanceof) {
        this.f6837class = cinstanceof;
    }

    /* renamed from: try, reason: not valid java name */
    public void m8395try(fh2 fh2Var) {
        m8391new(y90.m9782break(fh2Var));
    }
}
