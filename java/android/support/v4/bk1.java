package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class bk1 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f465if = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private ak1 f466do;

    /* renamed from: if, reason: not valid java name */
    private static int m561if(int i, int i2) {
        if (i >= 1536) {
            if (i2 <= 100) {
                return 3;
            }
            if (i2 <= 128) {
                return 4;
            }
            return 4 + (((i2 - 128) + 1) / 2);
        }
        if (i >= 1024) {
            if (i2 <= 100) {
                return 4;
            }
            if (i2 <= 112) {
                return 5;
            }
            return (((i2 - 112) + 1) / 2) + 5;
        }
        if (i < 512) {
            if (i2 <= 80) {
                return 40;
            }
            return 40 + (((i2 - 80) + 1) / 2);
        }
        if (i2 <= 80) {
            return 5;
        }
        if (i2 <= 100) {
            return 7;
        }
        return (((i2 - 100) + 1) / 2) + 7;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m562do(int i, BigInteger bigInteger, BigInteger bigInteger2) throws IllegalArgumentException {
        for (int i2 = 0; i2 != i * 5; i2++) {
            BigInteger bigIntegerM36308case = Cdo.m36308case(i, 1, this.f466do.m1497do());
            BigInteger bigIntegerMod = bigIntegerM36308case.mod(bigInteger);
            BigInteger bigInteger3 = f465if;
            if (!bigIntegerMod.equals(bigInteger3) && bigIntegerM36308case.multiply(bigIntegerM36308case).compareTo(bigInteger2) >= 0 && m563for(bigIntegerM36308case) && bigInteger.gcd(bigIntegerM36308case.subtract(bigInteger3)).equals(bigInteger3)) {
                return bigIntegerM36308case;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m563for(BigInteger bigInteger) {
        return !org.bouncycastle.math.Cdo.m35249try(bigInteger) && org.bouncycastle.math.Cdo.m35239class(bigInteger, this.f466do.m1497do(), m561if(bigInteger.bitLength(), this.f466do.m261for()));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() throws IllegalArgumentException {
        BigInteger bigIntegerM562do;
        BigInteger bigIntegerM562do2;
        BigInteger bigIntegerMultiply;
        BigInteger bigInteger;
        bk1 bk1Var = this;
        int iM1498if = bk1Var.f466do.m1498if();
        int i = (iM1498if + 1) / 2;
        int i2 = iM1498if - i;
        int i3 = iM1498if / 2;
        int i4 = i3 - 100;
        int i5 = iM1498if / 3;
        if (i4 < i5) {
            i4 = i5;
        }
        int i6 = iM1498if >> 2;
        BigInteger bigIntegerPow = BigInteger.valueOf(2L).pow(i3);
        BigInteger bigInteger2 = f465if;
        BigInteger bigIntegerShiftLeft = bigInteger2.shiftLeft(iM1498if - 1);
        BigInteger bigIntegerShiftLeft2 = bigInteger2.shiftLeft(i4);
        y3 y3Var = null;
        boolean z = false;
        while (!z) {
            BigInteger bigIntegerM262new = bk1Var.f466do.m262new();
            do {
                bigIntegerM562do = bk1Var.m562do(i, bigIntegerM262new, bigIntegerShiftLeft);
                while (true) {
                    bigIntegerM562do2 = bk1Var.m562do(i2, bigIntegerM262new, bigIntegerShiftLeft);
                    BigInteger bigIntegerAbs = bigIntegerM562do2.subtract(bigIntegerM562do).abs();
                    if (bigIntegerAbs.bitLength() >= i4 && bigIntegerAbs.compareTo(bigIntegerShiftLeft2) > 0) {
                        bigIntegerMultiply = bigIntegerM562do.multiply(bigIntegerM562do2);
                        if (bigIntegerMultiply.bitLength() == iM1498if) {
                            break;
                        }
                        bigIntegerM562do = bigIntegerM562do.max(bigIntegerM562do2);
                    } else {
                        bk1Var = this;
                        iM1498if = iM1498if;
                    }
                }
            } while (Cclass.m35317goto(bigIntegerMultiply) < i6);
            if (bigIntegerM562do.compareTo(bigIntegerM562do2) < 0) {
                bigInteger = bigIntegerM562do;
                bigIntegerM562do = bigIntegerM562do2;
            } else {
                bigInteger = bigIntegerM562do2;
            }
            BigInteger bigInteger3 = f465if;
            BigInteger bigIntegerSubtract = bigIntegerM562do.subtract(bigInteger3);
            BigInteger bigIntegerSubtract2 = bigInteger.subtract(bigInteger3);
            int i7 = iM1498if;
            BigInteger bigIntegerModInverse = bigIntegerM262new.modInverse(bigIntegerSubtract.divide(bigIntegerSubtract.gcd(bigIntegerSubtract2)).multiply(bigIntegerSubtract2));
            if (bigIntegerModInverse.compareTo(bigIntegerPow) > 0) {
                y3Var = new y3((a4) new ck1(false, bigIntegerMultiply, bigIntegerM262new), (a4) new dk1(bigIntegerMultiply, bigIntegerM262new, bigIntegerModInverse, bigIntegerM562do, bigInteger, bigIntegerModInverse.remainder(bigIntegerSubtract), bigIntegerModInverse.remainder(bigIntegerSubtract2), bigInteger.modInverse(bigIntegerM562do)));
                z = true;
            }
            bk1Var = this;
            iM1498if = i7;
        }
        return y3Var;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f466do = (ak1) dr0Var;
    }
}
