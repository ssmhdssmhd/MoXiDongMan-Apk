package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yc1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f8185do;

    /* renamed from: for, reason: not valid java name */
    private final Cclass f8186for;

    /* renamed from: if, reason: not valid java name */
    private final xq0 f8187if;

    public yc1(b1 b1Var, xq0 xq0Var, byte[] bArr) {
        this.f8185do = b1Var;
        this.f8187if = xq0Var;
        this.f8186for = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
    }

    private yc1(Csuper csuper) {
        this.f8185do = b1.m418try(csuper.mo33075final(0));
        this.f8187if = xq0.m9563try(csuper.mo33075final(1));
        this.f8186for = Cclass.m32796catch(csuper.mo33075final(2));
    }

    /* renamed from: new, reason: not valid java name */
    public static yc1 m9802new(Object obj) {
        if (obj instanceof yc1) {
            return (yc1) obj;
        }
        if (obj != null) {
            return new yc1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m9803case() {
        return this.f8185do;
    }

    /* renamed from: else, reason: not valid java name */
    public xq0 m9804else() {
        return this.f8187if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8185do);
        cimport.m3516do(this.f8187if);
        cimport.m3516do(this.f8186for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m9805try() {
        return q3.m6371final(this.f8186for.mo5490const());
    }
}
