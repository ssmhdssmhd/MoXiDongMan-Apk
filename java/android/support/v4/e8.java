package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class e8 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private pn1 f1282do;

    /* renamed from: for, reason: not valid java name */
    private Cinstanceof f1283for;

    /* renamed from: if, reason: not valid java name */
    private b1 f1284if;

    /* renamed from: new, reason: not valid java name */
    private Csuper f1285new;

    public e8(pn1 pn1Var, b1 b1Var, Cinstanceof cinstanceof, Csuper csuper) {
        this.f1282do = pn1Var;
        this.f1284if = b1Var;
        this.f1283for = cinstanceof;
        this.f1285new = csuper;
    }

    private e8(Csuper csuper) {
        this.f1282do = pn1.m6152new(csuper.mo33075final(0));
        this.f1284if = b1.m418try(csuper.mo33075final(1));
        this.f1283for = (Cinstanceof) csuper.mo33075final(2);
        if (csuper.size() > 3) {
            this.f1285new = Csuper.m33130class((Cimport) csuper.mo33075final(3), true);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static e8 m1680case(Cimport cimport, boolean z) {
        return m1681try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static e8 m1681try(Object obj) {
        if (obj instanceof e8) {
            return (e8) obj;
        }
        if (obj != null) {
            return new e8(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m1682else() {
        return this.f1283for;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m1683goto() {
        return this.f1284if;
    }

    /* renamed from: new, reason: not valid java name */
    public Csuper m1684new() {
        return this.f1285new;
    }

    /* renamed from: this, reason: not valid java name */
    public pn1 m1685this() {
        return this.f1282do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1282do);
        cimport.m3516do(this.f1284if);
        cimport.m3516do(this.f1283for);
        if (this.f1285new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f1285new));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
