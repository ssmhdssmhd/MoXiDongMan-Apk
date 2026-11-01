package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class y32 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private static final Cgoto f8123case = new Cgoto(0);

    /* renamed from: do, reason: not valid java name */
    public Cgoto f8124do;

    /* renamed from: for, reason: not valid java name */
    public Csuper f8125for;

    /* renamed from: if, reason: not valid java name */
    public tg0 f8126if;

    /* renamed from: new, reason: not valid java name */
    public y90 f8127new;

    /* renamed from: try, reason: not valid java name */
    public boolean f8128try;

    public y32(tg0 tg0Var, Csuper csuper, fh2 fh2Var) {
        this.f8124do = f8123case;
        this.f8126if = tg0Var;
        this.f8125for = csuper;
        this.f8127new = y90.m9782break(fh2Var);
    }

    public y32(tg0 tg0Var, Csuper csuper, y90 y90Var) {
        this.f8124do = f8123case;
        this.f8126if = tg0Var;
        this.f8125for = csuper;
        this.f8127new = y90Var;
    }

    private y32(Csuper csuper) {
        int i = 0;
        if ((csuper.mo33075final(0) instanceof Cimport) && ((Cimport) csuper.mo33075final(0)).getTagNo() == 0) {
            this.f8128try = true;
            this.f8124do = Cgoto.m33041class((Cimport) csuper.mo33075final(0), true);
            i = 1;
        } else {
            this.f8124do = f8123case;
        }
        if (csuper.mo33075final(i) instanceof Cimport) {
            this.f8126if = tg0.m7871case((Cimport) csuper.mo33075final(i), true);
            i++;
        }
        int i2 = i + 1;
        this.f8125for = (Csuper) csuper.mo33075final(i);
        if (csuper.size() == i2 + 1) {
            this.f8127new = y90.m9783catch((Cimport) csuper.mo33075final(i2), true);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static y32 m9738new(Object obj) {
        if (obj instanceof y32) {
            return (y32) obj;
        }
        if (obj != null) {
            return new y32(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static y32 m9739try(Cimport cimport, boolean z) {
        return m9738new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public y90 m9740case() {
        return this.f8127new;
    }

    /* renamed from: else, reason: not valid java name */
    public Csuper m9741else() {
        return this.f8125for;
    }

    /* renamed from: goto, reason: not valid java name */
    public tg0 m9742goto() {
        return this.f8126if;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m9743this() {
        return this.f8124do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (!this.f8124do.equals(f8123case) || this.f8128try) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f8124do));
        }
        if (this.f8126if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f8126if));
        }
        cimport.m3516do(this.f8125for);
        if (this.f8127new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f8127new));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
