package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class se1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f6135do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f6136for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f6137if;

    public se1(b1 b1Var, b1 b1Var2, byte[] bArr) {
        this.f6135do = b1Var;
        this.f6137if = b1Var2;
        this.f6136for = q3.m6371final(bArr);
    }

    private se1(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f6135do = b1.m418try(csuper.mo33075final(0));
        this.f6137if = b1.m418try(csuper.mo33075final(1));
        this.f6136for = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(2)).mo5490const());
    }

    /* renamed from: new, reason: not valid java name */
    public static se1 m7391new(Object obj) {
        if (obj instanceof se1) {
            return (se1) obj;
        }
        if (obj != null) {
            return new se1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m7392case() {
        return this.f6137if;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m7393else() {
        return q3.m6371final(this.f6136for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6135do);
        cimport.m3516do(this.f6137if);
        cimport.m3516do(new org.bouncycastle.asn1.j(m7393else()));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m7394try() {
        return this.f6135do;
    }
}
