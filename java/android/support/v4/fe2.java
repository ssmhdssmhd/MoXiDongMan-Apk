package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fe2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cinstanceof f1777do;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f1778if;

    public fe2(Cinstanceof cinstanceof, Cgoto cgoto) {
        if (cinstanceof == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        if (cgoto == null) {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        }
        this.f1777do = cinstanceof;
        this.f1778if = cgoto;
    }

    private fe2(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f1777do = Cinstanceof.m33068public(csuper.mo33075final(0));
            this.f1778if = Cgoto.m33040catch(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    public fe2(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        this.f1777do = new Cinstanceof(bArr);
        this.f1778if = new Cgoto(i);
    }

    /* renamed from: new, reason: not valid java name */
    public static fe2 m2261new(Object obj) {
        if (obj instanceof fe2) {
            return (fe2) obj;
        }
        if (obj != null) {
            return new fe2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static fe2 m2262try(Cimport cimport, boolean z) {
        return m2261new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2263case() {
        return this.f1778if.m33043const();
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m2264else() {
        return this.f1777do.m33057const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1777do);
        cimport.m3516do(this.f1778if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
