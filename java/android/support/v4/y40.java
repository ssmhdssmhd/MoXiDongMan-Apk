package android.support.v4;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.Polynomial;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* loaded from: classes3.dex */
public class y40 extends ECParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private String f8136do;

    public y40(String str, EllipticCurve ellipticCurve, ECPoint eCPoint, BigInteger bigInteger) {
        super(ellipticCurve, eCPoint, bigInteger, 1);
        this.f8136do = str;
    }

    public y40(String str, EllipticCurve ellipticCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        super(ellipticCurve, eCPoint, bigInteger, bigInteger2.intValue());
        this.f8136do = str;
    }

    public y40(String str, Cif cif, Cnew cnew, BigInteger bigInteger) {
        super(m9753do(cif, null), t30.m7706new(cnew), bigInteger, 1);
        this.f8136do = str;
    }

    public y40(String str, Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2) {
        super(m9753do(cif, null), t30.m7706new(cnew), bigInteger, bigInteger2.intValue());
        this.f8136do = str;
    }

    public y40(String str, Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        super(m9753do(cif, bArr), t30.m7706new(cnew), bigInteger, bigInteger2.intValue());
        this.f8136do = str;
    }

    /* renamed from: do, reason: not valid java name */
    private static EllipticCurve m9753do(Cif cif, byte[] bArr) {
        return new EllipticCurve(m9754if(cif.m35440static()), cif.m35443throw().mo339static(), cif.m35432import().mo339static(), bArr);
    }

    /* renamed from: if, reason: not valid java name */
    private static ECField m9754if(FiniteField finiteField) {
        if (Cdo.m35370super(finiteField)) {
            return new ECFieldFp(finiteField.getCharacteristic());
        }
        Polynomial minimalPolynomial = ((PolynomialExtensionField) finiteField).getMinimalPolynomial();
        int[] exponentsPresent = minimalPolynomial.getExponentsPresent();
        return new ECFieldF2m(minimalPolynomial.getDegree(), q3.D(q3.m6391synchronized(exponentsPresent, 1, exponentsPresent.length - 1)));
    }

    /* renamed from: for, reason: not valid java name */
    public String m9755for() {
        return this.f8136do;
    }
}
