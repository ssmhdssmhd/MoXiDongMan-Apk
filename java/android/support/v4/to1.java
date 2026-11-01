package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class to1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f6631do;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f6632if;

    public to1(b1 b1Var, int i) {
        this.f6631do = b1Var;
        this.f6632if = BigInteger.valueOf(i);
    }

    private to1(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("ASN.1 SEQUENCE should be of length 2");
        }
        this.f6631do = b1.m418try(csuper.mo33075final(0));
        this.f6632if = Cgoto.m33040catch(csuper.mo33075final(1)).m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public static to1 m8034new(Object obj) {
        if (obj instanceof to1) {
            return (to1) obj;
        }
        if (obj != null) {
            return new to1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m8035case() {
        return this.f6632if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6631do);
        cimport.m3516do(new Cgoto(this.f6632if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m8036try() {
        return this.f6631do;
    }
}
