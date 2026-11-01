package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class sc1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f6117do;

    private sc1(Csuper csuper) {
        for (int i = 0; i != csuper.size(); i++) {
            if (!(csuper.mo33075final(i) instanceof org.bouncycastle.asn1.j)) {
                throw new IllegalArgumentException("unknown object in constructor: " + csuper.mo33075final(i).getClass().getName());
            }
        }
        this.f6117do = csuper;
    }

    public sc1(byte[] bArr) {
        this(new byte[][]{bArr});
    }

    public sc1(byte[][] bArr) {
        Cimport cimport = new Cimport();
        for (int i = 0; i != bArr.length; i++) {
            cimport.m3516do(new org.bouncycastle.asn1.j(q3.m6371final(bArr[i])));
        }
        this.f6117do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static sc1 m7363new(Object obj) {
        if (obj instanceof sc1) {
            return (sc1) obj;
        }
        if (obj != null) {
            return new sc1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6117do;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[][] m7364try() {
        int size = this.f6117do.size();
        byte[][] bArr = new byte[size][];
        for (int i = 0; i != size; i++) {
            bArr[i] = q3.m6371final(Cclass.m32796catch(this.f6117do.mo33075final(i)).mo5490const());
        }
        return bArr;
    }
}
