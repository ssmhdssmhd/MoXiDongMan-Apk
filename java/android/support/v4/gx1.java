package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final tg2 f2266do;

    /* renamed from: if, reason: not valid java name */
    private final b5 f2267if;

    private gx1(Csuper csuper) {
        this.f2266do = tg2.m7884else(csuper.mo33075final(0));
        this.f2267if = csuper.size() == 2 ? b5.m443case(csuper.mo33075final(1)) : null;
    }

    /* renamed from: new, reason: not valid java name */
    public static gx1 m2824new(Object obj) {
        if (obj instanceof gx1) {
            return (gx1) obj;
        }
        if (obj != null) {
            return new gx1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b5 m2825case() {
        return this.f2267if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2266do);
        b5 b5Var = this.f2267if;
        if (b5Var != null) {
            cimport.m3516do(b5Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg2 m2826try() {
        return this.f2266do;
    }
}
