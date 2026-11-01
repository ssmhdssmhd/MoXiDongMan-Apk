package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class s81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f6043do;

    /* renamed from: if, reason: not valid java name */
    private Cclass f6044if;

    public s81(b1 b1Var, Cclass cclass) {
        this.f6043do = b1Var;
        this.f6044if = cclass;
    }

    private s81(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f6043do = b1.m418try(csuper.mo33075final(0));
            this.f6044if = Cclass.m32796catch(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static s81 m7302case(Object obj) {
        if (obj instanceof s81) {
            return (s81) obj;
        }
        if (obj != null) {
            return new s81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m7303new() {
        return this.f6043do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6043do);
        cimport.m3516do(this.f6044if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cclass m7304try() {
        return this.f6044if;
    }
}
