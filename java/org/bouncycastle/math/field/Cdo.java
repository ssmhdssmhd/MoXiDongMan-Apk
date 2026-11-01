package org.bouncycastle.math.field;

import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.field.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final FiniteField f32165do = new Cnew(BigInteger.valueOf(2));

    /* renamed from: if, reason: not valid java name */
    public static final FiniteField f32166if = new Cnew(BigInteger.valueOf(3));

    /* renamed from: do, reason: not valid java name */
    public static PolynomialExtensionField m35587do(int[] iArr) {
        if (iArr[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int i = 1; i < iArr.length; i++) {
            if (iArr[i] <= iArr[i - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be montonically increasing");
            }
        }
        return new Cfor(f32165do, new Cif(iArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static FiniteField m35588if(BigInteger bigInteger) {
        int iBitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || iBitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (iBitLength < 3) {
            int iIntValue = bigInteger.intValue();
            if (iIntValue == 2) {
                return f32165do;
            }
            if (iIntValue == 3) {
                return f32166if;
            }
        }
        return new Cnew(bigInteger);
    }
}
