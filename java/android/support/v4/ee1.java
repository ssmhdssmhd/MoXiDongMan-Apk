package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class ee1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private BigInteger f1404do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f1405if;

    public ee1(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f1404do = bigInteger;
        this.f1405if = bigInteger2;
    }

    private ee1(Csuper csuper) {
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            if (cimportM33063catch.getTagNo() == 0) {
                this.f1404do = Cgoto.m33041class(cimportM33063catch, false).m33044final();
            } else {
                if (cimportM33063catch.getTagNo() != 1) {
                    throw new IllegalArgumentException("Unknown tag encountered.");
                }
                this.f1405if = Cgoto.m33041class(cimportM33063catch, false).m33044final();
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static ee1 m1810case(Object obj) {
        if (obj instanceof ee1) {
            return (ee1) obj;
        }
        if (obj != null) {
            return new ee1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static ee1 m1811new(y90 y90Var) {
        return m1810case(y90Var.m9791this(Cif.f29333switch));
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m1812else() {
        return this.f1404do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f1404do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, new Cgoto(this.f1404do)));
        }
        if (this.f1405if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, new Cgoto(this.f1405if)));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m1813try() {
        return this.f1405if;
    }
}
