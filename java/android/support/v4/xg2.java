package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class xg2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public n4 f7934do;

    public xg2(String str, Cimport cimport) {
        this.f7934do = new n4(new Ccatch(str), new org.bouncycastle.asn1.q(cimport));
    }

    public xg2(String str, ASN1Encodable aSN1Encodable) {
        this.f7934do = new n4(new Ccatch(str), new org.bouncycastle.asn1.q(aSN1Encodable));
    }

    public xg2(ASN1Encodable aSN1Encodable) {
        this.f7934do = n4.m5080else(aSN1Encodable);
    }

    /* renamed from: new, reason: not valid java name */
    public String m9507new() {
        return this.f7934do.m5082new().m32795super();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7934do.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable[] m9508try() {
        Cthrow cthrowM5083try = this.f7934do.m5083try();
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[cthrowM5083try.size()];
        for (int i = 0; i != cthrowM5083try.size(); i++) {
            aSN1EncodableArr[i] = cthrowM5083try.m33158super(i);
        }
        return aSN1EncodableArr;
    }
}
