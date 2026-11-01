package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vh0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f7215do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f7216for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f7217if;

    private vh0(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f7215do = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(0)).mo5490const());
            this.f7216for = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(1)).mo5490const());
            this.f7217if = null;
        } else if (csuper.size() == 3) {
            this.f7215do = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(0)).mo5490const());
            this.f7217if = q3.m6371final(Cclass.m32797class(Cimport.m33063catch(csuper.mo33075final(1)), false).mo5490const());
            this.f7216for = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(2)).mo5490const());
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + csuper.size());
        }
    }

    public vh0(byte[] bArr, byte[] bArr2) {
        this(bArr, null, bArr2);
    }

    public vh0(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f7215do = q3.m6371final(bArr);
        this.f7217if = q3.m6371final(bArr2);
        this.f7216for = q3.m6371final(bArr3);
    }

    /* renamed from: try, reason: not valid java name */
    public static vh0 m8859try(Object obj) {
        if (obj instanceof vh0) {
            return (vh0) obj;
        }
        if (obj != null) {
            return new vh0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m8860case() {
        return q3.m6371final(this.f7216for);
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m8861else() {
        return q3.m6371final(this.f7217if);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m8862new() {
        return q3.m6371final(this.f7215do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7215do));
        if (this.f7217if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, new org.bouncycastle.asn1.j(this.f7215do)));
        }
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7216for));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
