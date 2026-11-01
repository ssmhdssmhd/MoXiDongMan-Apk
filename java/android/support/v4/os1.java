package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class os1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f4731do;

    /* renamed from: for, reason: not valid java name */
    private final BigInteger f4732for;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f4733if;

    /* renamed from: new, reason: not valid java name */
    private final BigInteger f4734new;

    /* renamed from: try, reason: not valid java name */
    private final BigInteger f4735try;

    private os1(Csuper csuper) {
        if (csuper.size() != 4 && csuper.size() != 5) {
            throw new IllegalArgumentException("invalid sequence: size = " + csuper.size());
        }
        this.f4731do = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(0)).mo5490const());
        this.f4733if = Cgoto.m33040catch(csuper.mo33075final(1)).m33044final();
        this.f4732for = Cgoto.m33040catch(csuper.mo33075final(2)).m33044final();
        this.f4734new = Cgoto.m33040catch(csuper.mo33075final(3)).m33044final();
        this.f4735try = csuper.size() == 5 ? Cgoto.m33040catch(csuper.mo33075final(4)).m33044final() : null;
    }

    public os1(byte[] bArr, int i, int i2, int i3) {
        this(bArr, BigInteger.valueOf(i), BigInteger.valueOf(i2), BigInteger.valueOf(i3), (BigInteger) null);
    }

    public os1(byte[] bArr, int i, int i2, int i3, int i4) {
        this(bArr, BigInteger.valueOf(i), BigInteger.valueOf(i2), BigInteger.valueOf(i3), BigInteger.valueOf(i4));
    }

    public os1(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f4731do = q3.m6371final(bArr);
        this.f4733if = bigInteger;
        this.f4732for = bigInteger2;
        this.f4734new = bigInteger3;
        this.f4735try = bigInteger4;
    }

    /* renamed from: case, reason: not valid java name */
    public static os1 m5750case(Object obj) {
        if (obj instanceof os1) {
            return (os1) obj;
        }
        if (obj != null) {
            return new os1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m5751else() {
        return this.f4735try;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m5752goto() {
        return this.f4734new;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m5753new() {
        return this.f4732for;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m5754this() {
        return q3.m6371final(this.f4731do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f4731do));
        cimport.m3516do(new Cgoto(this.f4733if));
        cimport.m3516do(new Cgoto(this.f4732for));
        cimport.m3516do(new Cgoto(this.f4734new));
        BigInteger bigInteger = this.f4735try;
        if (bigInteger != null) {
            cimport.m3516do(new Cgoto(bigInteger));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m5755try() {
        return this.f4733if;
    }
}
