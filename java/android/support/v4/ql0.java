package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ql0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f5481do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f5482for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f5483if;

    public ql0(b1 b1Var, b1 b1Var2, byte[] bArr) {
        this.f5481do = b1Var;
        this.f5483if = b1Var2;
        this.f5482for = q3.m6371final(bArr);
    }

    private ql0(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f5481do = b1.m418try(csuper.mo33075final(0));
        this.f5483if = b1.m418try(csuper.mo33075final(1));
        this.f5482for = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(2)).mo5490const());
    }

    /* renamed from: new, reason: not valid java name */
    public static ql0 m6620new(Object obj) {
        if (obj instanceof ql0) {
            return (ql0) obj;
        }
        if (obj != null) {
            return new ql0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m6621case() {
        return this.f5481do;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m6622else() {
        return q3.m6371final(this.f5482for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5481do);
        cimport.m3516do(this.f5483if);
        cimport.m3516do(new org.bouncycastle.asn1.j(m6622else()));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m6623try() {
        return this.f5483if;
    }
}
