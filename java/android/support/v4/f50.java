package android.support.v4;

import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import org.bouncycastle.math.ec.Cif;

/* loaded from: classes3.dex */
public class f50 {
    /* renamed from: do, reason: not valid java name */
    public static ECPoint m2143do(EllipticCurve ellipticCurve, byte[] bArr) {
        Cif ctry;
        if (ellipticCurve.getField() instanceof ECFieldFp) {
            ctry = new Cif.Ccase(((ECFieldFp) ellipticCurve.getField()).getP(), ellipticCurve.getA(), ellipticCurve.getB());
        } else {
            int[] midTermsOfReductionPolynomial = ((ECFieldF2m) ellipticCurve.getField()).getMidTermsOfReductionPolynomial();
            ctry = midTermsOfReductionPolynomial.length == 3 ? new Cif.Ctry(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[2], midTermsOfReductionPolynomial[1], midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB()) : new Cif.Ctry(((ECFieldF2m) ellipticCurve.getField()).getM(), midTermsOfReductionPolynomial[0], ellipticCurve.getA(), ellipticCurve.getB());
        }
        return t30.m7706new(ctry.m35421class(bArr));
    }
}
