package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class nx extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta f4366do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f4367for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f4368if;

    public nx(ta taVar, b1 b1Var, byte[] bArr) {
        this.f4366do = taVar;
        this.f4368if = b1Var;
        this.f4367for = q3.m6371final(bArr);
    }

    private nx(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f4366do = ta.m7794case(csuper.mo33075final(0));
        this.f4368if = b1.m418try(csuper.mo33075final(1));
        this.f4367for = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(2)).mo5490const());
    }

    /* renamed from: try, reason: not valid java name */
    public static nx m5400try(Object obj) {
        if (obj instanceof nx) {
            return (nx) obj;
        }
        if (obj != null) {
            return new nx(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m5401case() {
        return q3.m6371final(this.f4367for);
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m5402else() {
        return this.f4368if;
    }

    /* renamed from: new, reason: not valid java name */
    public ta m5403new() {
        return this.f4366do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4366do);
        cimport.m3516do(this.f4368if);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f4367for));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
