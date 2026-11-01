package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vq0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f7311do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f7312for;

    /* renamed from: if, reason: not valid java name */
    private n81 f7313if;

    /* renamed from: new, reason: not valid java name */
    private b1 f7314new;

    /* renamed from: try, reason: not valid java name */
    private Csuper f7315try;

    public vq0(n81 n81Var, Cclass cclass, b1 b1Var, Csuper csuper) {
        this.f7311do = new Cgoto(3L);
        this.f7313if = n81Var;
        this.f7312for = cclass;
        this.f7314new = b1Var;
        this.f7315try = csuper;
    }

    public vq0(Csuper csuper) {
        this.f7311do = (Cgoto) csuper.mo33075final(0);
        this.f7313if = n81.m5123case((Cimport) csuper.mo33075final(1), true);
        int i = 2;
        if (csuper.mo33075final(2) instanceof Cimport) {
            this.f7312for = Cclass.m32797class((Cimport) csuper.mo33075final(2), true);
            i = 3;
        }
        this.f7314new = b1.m418try(csuper.mo33075final(i));
        this.f7315try = (Csuper) csuper.mo33075final(i + 1);
    }

    /* renamed from: new, reason: not valid java name */
    public static vq0 m8933new(Object obj) {
        if (obj instanceof vq0) {
            return (vq0) obj;
        }
        if (obj != null) {
            return new vq0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static vq0 m8934try(Cimport cimport, boolean z) {
        return m8933new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m8935break() {
        return this.f7311do;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m8936case() {
        return this.f7314new;
    }

    /* renamed from: else, reason: not valid java name */
    public n81 m8937else() {
        return this.f7313if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Csuper m8938goto() {
        return this.f7315try;
    }

    /* renamed from: this, reason: not valid java name */
    public Cclass m8939this() {
        return this.f7312for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7311do);
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f7313if));
        if (this.f7312for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f7312for));
        }
        cimport.m3516do(this.f7314new);
        cimport.m3516do(this.f7315try);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
