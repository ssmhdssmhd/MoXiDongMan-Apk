package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class me extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private byte[] f3889do;

    /* renamed from: if, reason: not valid java name */
    private int f3890if;

    private me(Csuper csuper) {
        this.f3889do = Cclass.m32796catch(csuper.mo33075final(0)).mo5490const();
        this.f3890if = csuper.size() == 2 ? Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue() : 12;
    }

    public me(byte[] bArr, int i) {
        this.f3889do = q3.m6371final(bArr);
        this.f3890if = i;
    }

    /* renamed from: try, reason: not valid java name */
    public static me m4905try(Object obj) {
        if (obj instanceof me) {
            return (me) obj;
        }
        if (obj != null) {
            return new me(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m4906case() {
        return q3.m6371final(this.f3889do);
    }

    /* renamed from: new, reason: not valid java name */
    public int m4907new() {
        return this.f3890if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f3889do));
        int i = this.f3890if;
        if (i != 12) {
            cimport.m3516do(new Cgoto(i));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
