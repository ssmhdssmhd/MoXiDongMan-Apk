package org.bouncycastle.crypto.generators;

import android.support.v4.ou;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.generators.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final Ctry f29887do = new Ctry();

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f29889if = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f29888for = BigInteger.valueOf(2);

    private Ctry() {
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m33679do(ou ouVar, SecureRandom secureRandom) {
        BigInteger bigIntegerM36316try;
        BigInteger bit;
        int iM5762new = ouVar.m5762new();
        if (iM5762new != 0) {
            int i = iM5762new >>> 2;
            do {
                bit = Cdo.m36314new(iM5762new, secureRandom).setBit(iM5762new - 1);
            } while (Cclass.m35317goto(bit) < i);
            return bit;
        }
        BigInteger bigInteger = f29888for;
        int iM5763try = ouVar.m5763try();
        BigInteger bigIntegerShiftLeft = iM5763try != 0 ? f29889if.shiftLeft(iM5763try - 1) : bigInteger;
        BigInteger bigIntegerM5758else = ouVar.m5758else();
        if (bigIntegerM5758else == null) {
            bigIntegerM5758else = ouVar.m5757case();
        }
        BigInteger bigIntegerSubtract = bigIntegerM5758else.subtract(bigInteger);
        int iBitLength = bigIntegerSubtract.bitLength() >>> 2;
        do {
            bigIntegerM36316try = Cdo.m36316try(bigIntegerShiftLeft, bigIntegerSubtract, secureRandom);
        } while (Cclass.m35317goto(bigIntegerM36316try) < iBitLength);
        return bigIntegerM36316try;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m33680if(ou ouVar, BigInteger bigInteger) {
        return ouVar.m5761if().modPow(bigInteger, ouVar.m5757case());
    }
}
