package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xw0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private p81 f8048do;

    /* renamed from: if, reason: not valid java name */
    private Cclass f8049if;

    public xw0(p81 p81Var, Cclass cclass) {
        if (p81Var == null) {
            throw new IllegalArgumentException("Ephemeral public key cannot be null");
        }
        this.f8048do = p81Var;
        this.f8049if = cclass;
    }

    private xw0(Csuper csuper) {
        if (csuper.size() != 1 && csuper.size() != 2) {
            throw new IllegalArgumentException("Sequence has incorrect number of elements");
        }
        this.f8048do = p81.m5914try(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f8049if = Cclass.m32797class((Cimport) csuper.mo33075final(1), true);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static xw0 m9603case(Object obj) {
        if (obj instanceof xw0) {
            return (xw0) obj;
        }
        if (obj != null) {
            return new xw0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static xw0 m9604else(Cimport cimport, boolean z) {
        return m9603case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m9605new() {
        return this.f8049if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8048do);
        if (this.f8049if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f8049if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public p81 m9606try() {
        return this.f8048do;
    }
}
