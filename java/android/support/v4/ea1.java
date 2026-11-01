package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ea1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f1333do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f1334if;

    private ea1(Csuper csuper) {
        this.f1334if = (Cclass) csuper.mo33075final(0);
        this.f1333do = Cgoto.m33040catch(csuper.mo33075final(1));
    }

    public ea1(byte[] bArr, int i) {
        this.f1334if = new org.bouncycastle.asn1.j(bArr);
        this.f1333do = new Cgoto(i);
    }

    /* renamed from: try, reason: not valid java name */
    public static ea1 m1712try(Object obj) {
        if (obj instanceof ea1) {
            return (ea1) obj;
        }
        if (obj != null) {
            return new ea1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m1713case() {
        return this.f1333do.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m1714new() {
        return this.f1334if.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1334if);
        cimport.m3516do(this.f1333do);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
