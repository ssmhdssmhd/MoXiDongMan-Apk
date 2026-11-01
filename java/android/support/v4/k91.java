package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class k91 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f3340do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f3341if;

    private k91(Csuper csuper) {
        this.f3341if = (Cclass) csuper.mo33075final(0);
        this.f3340do = (Cgoto) csuper.mo33075final(1);
    }

    public k91(byte[] bArr, int i) {
        if (bArr.length != 8) {
            throw new IllegalArgumentException("salt length must be 8");
        }
        this.f3341if = new org.bouncycastle.asn1.j(bArr);
        this.f3340do = new Cgoto(i);
    }

    /* renamed from: new, reason: not valid java name */
    public static k91 m4294new(Object obj) {
        if (obj instanceof k91) {
            return (k91) obj;
        }
        if (obj != null) {
            return new k91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m4295case() {
        return this.f3341if.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3341if);
        cimport.m3516do(this.f3340do);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m4296try() {
        return this.f3340do.m33044final();
    }
}
