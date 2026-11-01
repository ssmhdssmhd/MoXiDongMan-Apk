package org.bouncycastle.crypto.ec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.ec.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    /* renamed from: do, reason: not valid java name */
    public static BigInteger m33371do(BigInteger bigInteger, SecureRandom secureRandom) {
        int iBitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, secureRandom);
            if (!bigIntegerM36314new.equals(ECConstants.ZERO) && bigIntegerM36314new.compareTo(bigInteger) < 0) {
                return bigIntegerM36314new;
            }
        }
    }
}
