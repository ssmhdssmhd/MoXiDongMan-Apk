package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class wh0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f7522do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f7523if;

    public wh0(Ccatch ccatch) {
        this(ccatch, null);
    }

    public wh0(Ccatch ccatch, byte[] bArr) {
        this.f7522do = ccatch;
        this.f7523if = q3.m6371final(bArr);
    }

    private wh0(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f7522do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f7523if = Cclass.m32796catch(csuper.mo33075final(1)).mo5490const();
        } else if (csuper.size() == 1) {
            this.f7522do = Ccatch.m32790throw(csuper.mo33075final(0));
            this.f7523if = null;
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + csuper.size());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static wh0 m9149try(Object obj) {
        if (obj instanceof wh0) {
            return (wh0) obj;
        }
        if (obj != null) {
            return new wh0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m9150case() {
        return q3.m6371final(this.f7523if);
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9151new() {
        return this.f7522do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7522do);
        byte[] bArr = this.f7523if;
        if (bArr != null) {
            cimport.m3516do(new org.bouncycastle.asn1.j(bArr));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
