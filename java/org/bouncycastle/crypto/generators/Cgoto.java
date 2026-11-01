package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.generators.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f29876do = BigInteger.valueOf(1);

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f29877if = BigInteger.valueOf(2);

    /* renamed from: do, reason: not valid java name */
    public static BigInteger[] m33676do(int i, int i2, SecureRandom secureRandom) throws IllegalArgumentException {
        int i3 = i - 1;
        int i4 = i >>> 2;
        while (true) {
            BigInteger bigIntegerM36308case = Cdo.m36308case(i3, 2, secureRandom);
            BigInteger bigIntegerAdd = bigIntegerM36308case.shiftLeft(1).add(f29876do);
            if (bigIntegerAdd.isProbablePrime(i2) && (i2 <= 2 || bigIntegerM36308case.isProbablePrime(i2 - 2))) {
                if (Cclass.m35317goto(bigIntegerAdd) >= i4) {
                    return new BigInteger[]{bigIntegerAdd, bigIntegerM36308case};
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static BigInteger m33677if(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerModPow;
        BigInteger bigIntegerSubtract = bigInteger.subtract(f29877if);
        do {
            BigInteger bigInteger3 = f29877if;
            bigIntegerModPow = Cdo.m36316try(bigInteger3, bigIntegerSubtract, secureRandom).modPow(bigInteger3, bigInteger);
        } while (bigIntegerModPow.equals(f29876do));
        return bigIntegerModPow;
    }
}
