package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ff0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f1781do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f1782if;

    private ff0(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f1781do = Cgoto.m33040catch(csuper.mo33075final(0));
            this.f1782if = Cclass.m32796catch(csuper.mo33075final(1)).mo5490const();
        } else {
            throw new IllegalArgumentException("size of seq = " + csuper.size());
        }
    }

    public ff0(byte[] bArr) {
        this.f1781do = new Cgoto(0L);
        this.f1782if = bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static ff0 m2265new(Object obj) {
        if (obj instanceof ff0) {
            return (ff0) obj;
        }
        if (obj != null) {
            return new ff0(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1781do);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f1782if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m2266try() {
        return q3.m6371final(this.f1782if);
    }
}
