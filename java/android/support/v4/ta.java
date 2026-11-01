package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class ta extends Cbreak {

    /* renamed from: if, reason: not valid java name */
    public static final long f6457if = 4294967295L;

    /* renamed from: do, reason: not valid java name */
    private final long f6458do;

    public ta(long j) {
        if (j < 0 || j > 4294967295L) {
            throw new IllegalArgumentException("id out of range");
        }
        this.f6458do = j;
    }

    private ta(Cgoto cgoto) {
        this(m7795new(cgoto.m33044final()));
    }

    /* renamed from: case, reason: not valid java name */
    public static ta m7794case(Object obj) {
        if (obj instanceof ta) {
            return (ta) obj;
        }
        if (obj != null) {
            return new ta(Cgoto.m33040catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static long m7795new(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 32) {
            return bigInteger.longValue();
        }
        throw new IllegalArgumentException("id out of range");
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new Cgoto(this.f6458do);
    }

    /* renamed from: try, reason: not valid java name */
    public long m7796try() {
        return this.f6458do;
    }
}
