package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class mi2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f3922do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f3923if;

    private mi2(Csuper csuper) {
        if (!Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().equals(BigInteger.valueOf(0L))) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f3922do = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(1)).mo5490const());
        this.f3923if = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(2)).mo5490const());
    }

    public mi2(byte[] bArr, byte[] bArr2) {
        this.f3922do = q3.m6371final(bArr);
        this.f3923if = q3.m6371final(bArr2);
    }

    /* renamed from: new, reason: not valid java name */
    public static mi2 m4929new(Object obj) {
        if (obj instanceof mi2) {
            return (mi2) obj;
        }
        if (obj != null) {
            return new mi2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m4930case() {
        return q3.m6371final(this.f3923if);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(0L));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f3922do));
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f3923if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m4931try() {
        return q3.m6371final(this.f3922do);
    }
}
