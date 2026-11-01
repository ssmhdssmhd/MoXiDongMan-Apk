package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class he extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f2384do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f2385if;

    private he(Csuper csuper) {
        this.f2385if = (Cclass) csuper.mo33075final(0);
        this.f2384do = (Cgoto) csuper.mo33075final(1);
    }

    public he(byte[] bArr, int i) {
        this.f2385if = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
        this.f2384do = new Cgoto(i);
    }

    /* renamed from: try, reason: not valid java name */
    public static he m2995try(Object obj) {
        if (obj instanceof he) {
            return (he) obj;
        }
        if (obj != null) {
            return new he(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m2996case() {
        return this.f2384do.m33044final().intValue();
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m2997new() {
        return q3.m6371final(this.f2385if.mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2385if);
        cimport.m3516do(this.f2384do);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
