package org.bouncycastle.crypto.generators;

import android.support.v4.fs;
import android.support.v4.ou;
import android.support.v4.yp1;
import java.math.BigInteger;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.generators.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f29871new = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private int f29872do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f29873for;

    /* renamed from: if, reason: not valid java name */
    private int f29874if;

    /* renamed from: org.bouncycastle.crypto.generators.for$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static final BigInteger f29875do = BigInteger.valueOf(2);

        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public static BigInteger[] m33674do(int i, int i2, SecureRandom secureRandom) throws IllegalArgumentException {
            BigInteger bigIntegerM36308case;
            BigInteger bigIntegerAdd;
            int i3 = i - 1;
            while (true) {
                bigIntegerM36308case = org.bouncycastle.util.Cdo.m36308case(i3, 2, secureRandom);
                bigIntegerAdd = bigIntegerM36308case.shiftLeft(1).add(Cfor.f29871new);
                if (bigIntegerAdd.isProbablePrime(i2) && (i2 <= 2 || bigIntegerM36308case.isProbablePrime(i2))) {
                    break;
                }
            }
            return new BigInteger[]{bigIntegerAdd, bigIntegerM36308case};
        }

        /* renamed from: if, reason: not valid java name */
        public static BigInteger m33675if(BigInteger bigInteger, SecureRandom secureRandom) {
            BigInteger bigIntegerModPow;
            BigInteger bigIntegerSubtract = bigInteger.subtract(f29875do);
            do {
                BigInteger bigInteger2 = f29875do;
                bigIntegerModPow = org.bouncycastle.util.Cdo.m36316try(bigInteger2, bigIntegerSubtract, secureRandom).modPow(bigInteger2, bigInteger);
            } while (bigIntegerModPow.equals(Cfor.f29871new));
            return bigIntegerModPow;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public fs m33671for(ou ouVar) {
        BigInteger bigIntegerM33675if;
        BigInteger bigIntegerM5757case = ouVar.m5757case();
        BigInteger bigIntegerM5761if = ouVar.m5761if();
        do {
            bigIntegerM33675if = Cdo.m33675if(bigIntegerM5757case, this.f29873for);
        } while (bigIntegerM5761if.equals(bigIntegerM33675if));
        return new fs(bigIntegerM5757case, bigIntegerM5761if, bigIntegerM33675if, new yp1());
    }

    /* renamed from: if, reason: not valid java name */
    public fs m33672if() {
        BigInteger bigIntegerM33675if;
        BigInteger bigInteger = Cdo.m33674do(this.f29872do, this.f29874if, this.f29873for)[1];
        BigInteger bigIntegerM33675if2 = Cdo.m33675if(bigInteger, this.f29873for);
        do {
            bigIntegerM33675if = Cdo.m33675if(bigInteger, this.f29873for);
        } while (bigIntegerM33675if2.equals(bigIntegerM33675if));
        return new fs(bigInteger, bigIntegerM33675if2, bigIntegerM33675if, new yp1());
    }

    /* renamed from: new, reason: not valid java name */
    public void m33673new(int i, int i2, SecureRandom secureRandom) {
        this.f29872do = i;
        this.f29874if = i2;
        this.f29873for = secureRandom;
    }
}
