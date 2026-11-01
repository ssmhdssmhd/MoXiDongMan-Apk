package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class eh extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f1459do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f1460for;

    /* renamed from: if, reason: not valid java name */
    private Cclass f1461if;

    public eh(b1 b1Var, byte[] bArr, byte[] bArr2) {
        this.f1459do = b1Var;
        this.f1461if = new org.bouncycastle.asn1.j(bArr);
        this.f1460for = new org.bouncycastle.asn1.j(bArr2);
    }

    private eh(Csuper csuper) {
        int i = 0;
        if (csuper.size() == 3) {
            this.f1459do = b1.m418try(csuper.mo33075final(0));
            i = 1;
        }
        this.f1461if = Cclass.m32796catch(csuper.mo33075final(i));
        this.f1460for = Cclass.m32796catch(csuper.mo33075final(i + 1));
    }

    public eh(byte[] bArr, byte[] bArr2) {
        this(null, bArr, bArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static eh m1877case(Object obj) {
        if (obj instanceof eh) {
            return (eh) obj;
        }
        if (obj != null) {
            return new eh(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m1878new(Cimport cimport, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(aSN1Encodable);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m1879else() {
        return this.f1459do;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m1880goto() {
        return this.f1461if.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        m1878new(cimport, this.f1459do);
        cimport.m3516do(this.f1461if);
        cimport.m3516do(this.f1460for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m1881try() {
        return this.f1460for.mo5490const();
    }
}
