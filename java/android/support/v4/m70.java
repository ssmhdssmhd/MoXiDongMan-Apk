package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class m70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final n42 f3852do;

    /* renamed from: for, reason: not valid java name */
    private final b1 f3853for;

    /* renamed from: if, reason: not valid java name */
    private final fr f3854if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f3855new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f3856try;

    public m70(n42 n42Var, fr frVar, b1 b1Var, b1 b1Var2, byte[] bArr) {
        this.f3852do = n42Var;
        this.f3854if = frVar;
        this.f3853for = b1Var;
        this.f3855new = b1Var2;
        this.f3856try = q3.m6371final(bArr);
    }

    private m70(Csuper csuper) {
        if (csuper.size() != 5) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f3852do = n42.m5085new(csuper.mo33075final(0));
        this.f3854if = fr.m2388case(csuper.mo33075final(1));
        this.f3853for = b1.m418try(csuper.mo33075final(2));
        this.f3855new = b1.m418try(csuper.mo33075final(3));
        this.f3856try = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(4)).mo5490const());
    }

    /* renamed from: try, reason: not valid java name */
    public static m70 m4864try(Object obj) {
        if (obj instanceof m70) {
            return (m70) obj;
        }
        if (obj != null) {
            return new m70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public n42 m4865case() {
        return this.f3852do;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m4866else() {
        return this.f3853for;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m4867goto() {
        return q3.m6371final(this.f3856try);
    }

    /* renamed from: new, reason: not valid java name */
    public fr m4868new() {
        return this.f3854if;
    }

    /* renamed from: this, reason: not valid java name */
    public b1 m4869this() {
        return this.f3855new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3852do);
        cimport.m3516do(this.f3854if);
        cimport.m3516do(this.f3853for);
        cimport.m3516do(this.f3855new);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f3856try));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
