package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pn1 extends Cbreak {

    /* renamed from: else, reason: not valid java name */
    private static final Cgoto f5150else = new Cgoto(0);

    /* renamed from: case, reason: not valid java name */
    private y90 f5151case;

    /* renamed from: do, reason: not valid java name */
    private boolean f5152do;

    /* renamed from: for, reason: not valid java name */
    private nn1 f5153for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f5154if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f5155new;

    /* renamed from: try, reason: not valid java name */
    private Csuper f5156try;

    public pn1(nn1 nn1Var, Ccase ccase, Csuper csuper, fh2 fh2Var) {
        this(f5150else, nn1Var, Ccase.m32773final(ccase), csuper, y90.m9782break(fh2Var));
    }

    public pn1(nn1 nn1Var, Ccase ccase, Csuper csuper, y90 y90Var) {
        this(f5150else, nn1Var, ccase, csuper, y90Var);
    }

    public pn1(Cgoto cgoto, nn1 nn1Var, Ccase ccase, Csuper csuper, y90 y90Var) {
        this.f5154if = cgoto;
        this.f5153for = nn1Var;
        this.f5155new = ccase;
        this.f5156try = csuper;
        this.f5151case = y90Var;
    }

    private pn1(Csuper csuper) {
        int i = 0;
        if ((csuper.mo33075final(0) instanceof Cimport) && ((Cimport) csuper.mo33075final(0)).getTagNo() == 0) {
            this.f5152do = true;
            this.f5154if = Cgoto.m33041class((Cimport) csuper.mo33075final(0), true);
            i = 1;
        } else {
            this.f5154if = f5150else;
        }
        int i2 = i + 1;
        this.f5153for = nn1.m5279new(csuper.mo33075final(i));
        int i3 = i2 + 1;
        this.f5155new = Ccase.m32773final(csuper.mo33075final(i2));
        int i4 = i3 + 1;
        this.f5156try = (Csuper) csuper.mo33075final(i3);
        if (csuper.size() > i4) {
            this.f5151case = y90.m9783catch((Cimport) csuper.mo33075final(i4), true);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static pn1 m6152new(Object obj) {
        if (obj instanceof pn1) {
            return (pn1) obj;
        }
        if (obj != null) {
            return new pn1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static pn1 m6153try(Cimport cimport, boolean z) {
        return m6152new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m6154break() {
        return this.f5154if;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m6155case() {
        return this.f5155new;
    }

    /* renamed from: else, reason: not valid java name */
    public nn1 m6156else() {
        return this.f5153for;
    }

    /* renamed from: goto, reason: not valid java name */
    public y90 m6157goto() {
        return this.f5151case;
    }

    /* renamed from: this, reason: not valid java name */
    public Csuper m6158this() {
        return this.f5156try;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5152do || !this.f5154if.equals(f5150else)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f5154if));
        }
        cimport.m3516do(this.f5153for);
        cimport.m3516do(this.f5155new);
        cimport.m3516do(this.f5156try);
        if (this.f5151case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f5151case));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
