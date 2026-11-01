package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* loaded from: classes3.dex */
public class xh2 extends Cbreak implements X9ObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7949do;

    /* renamed from: if, reason: not valid java name */
    private Cfinal f7950if;

    public xh2(int i, int i2) {
        this(i, i2, 0, 0);
    }

    public xh2(int i, int i2, int i3, int i4) {
        this.f7949do = X9ObjectIdentifiers.characteristic_two_field;
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(i));
        if (i3 == 0) {
            if (i4 != 0) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            cimport.m3516do(X9ObjectIdentifiers.tpBasis);
            cimport.m3516do(new Cgoto(i2));
        } else {
            if (i3 <= i2 || i4 <= i3) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            cimport.m3516do(X9ObjectIdentifiers.ppBasis);
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(new Cgoto(i2));
            cimport2.m3516do(new Cgoto(i3));
            cimport2.m3516do(new Cgoto(i4));
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        this.f7950if = new org.bouncycastle.asn1.n(cimport);
    }

    public xh2(BigInteger bigInteger) {
        this.f7949do = X9ObjectIdentifiers.prime_field;
        this.f7950if = new Cgoto(bigInteger);
    }

    private xh2(Csuper csuper) {
        this.f7949do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f7950if = csuper.mo33075final(1).toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public static xh2 m9519try(Object obj) {
        if (obj instanceof xh2) {
            return (xh2) obj;
        }
        if (obj != null) {
            return new xh2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cfinal m9520case() {
        return this.f7950if;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9521new() {
        return this.f7949do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7949do);
        cimport.m3516do(this.f7950if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
