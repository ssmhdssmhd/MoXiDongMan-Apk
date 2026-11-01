package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class p70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f4864do;

    /* renamed from: if, reason: not valid java name */
    private final Cclass f4865if;

    public p70(b1 b1Var, byte[] bArr) {
        this.f4864do = b1Var;
        this.f4865if = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
    }

    private p70(Csuper csuper) {
        this.f4864do = b1.m418try(csuper.mo33075final(0));
        this.f4865if = Cclass.m32796catch(csuper.mo33075final(1));
    }

    /* renamed from: try, reason: not valid java name */
    public static p70 m5898try(Object obj) {
        if (obj instanceof p70) {
            return (p70) obj;
        }
        if (obj != null) {
            return new p70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m5899case() {
        return this.f4864do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5900new() {
        return q3.m6371final(this.f4865if.mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4864do);
        cimport.m3516do(this.f4865if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
