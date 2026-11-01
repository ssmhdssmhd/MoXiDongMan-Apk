package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class ze extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f8520do;

    public ze(BigInteger bigInteger) {
        this.f8520do = bigInteger;
    }

    /* renamed from: try, reason: not valid java name */
    public static ze m10161try(Object obj) {
        if (obj instanceof ze) {
            return (ze) obj;
        }
        if (obj != null) {
            return new ze(Cgoto.m33040catch(obj).m33044final());
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m10162new() {
        return this.f8520do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new Cgoto(this.f8520do);
    }

    public String toString() {
        return "CRLNumber: " + m10162new();
    }
}
