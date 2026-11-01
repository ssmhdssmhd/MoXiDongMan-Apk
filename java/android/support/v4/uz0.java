package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uz0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public b1 f7016do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f7017if;

    public uz0(b1 b1Var, byte[] bArr) {
        this.f7016do = b1Var;
        this.f7017if = q3.m6371final(bArr);
    }

    private uz0(Csuper csuper) {
        this.f7016do = b1.m418try(csuper.mo33075final(0));
        this.f7017if = Cclass.m32796catch(csuper.mo33075final(1)).mo5490const();
    }

    /* renamed from: case, reason: not valid java name */
    public static uz0 m8703case(Object obj) {
        if (obj instanceof uz0) {
            return (uz0) obj;
        }
        if (obj != null) {
            return new uz0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m8704new() {
        return this.f7016do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7016do);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7017if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m8705try() {
        return q3.m6371final(this.f7017if);
    }
}
