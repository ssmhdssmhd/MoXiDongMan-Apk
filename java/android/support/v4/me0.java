package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class me0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private byte[] f3891do;

    /* renamed from: if, reason: not valid java name */
    private int f3892if;

    private me0(Csuper csuper) {
        this.f3891do = Cclass.m32796catch(csuper.mo33075final(0)).mo5490const();
        this.f3892if = csuper.size() == 2 ? Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue() : 12;
    }

    public me0(byte[] bArr, int i) {
        this.f3891do = q3.m6371final(bArr);
        this.f3892if = i;
    }

    /* renamed from: try, reason: not valid java name */
    public static me0 m4908try(Object obj) {
        if (obj instanceof me0) {
            return (me0) obj;
        }
        if (obj != null) {
            return new me0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m4909case() {
        return q3.m6371final(this.f3891do);
    }

    /* renamed from: new, reason: not valid java name */
    public int m4910new() {
        return this.f3892if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f3891do));
        int i = this.f3892if;
        if (i != 12) {
            cimport.m3516do(new Cgoto(i));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
