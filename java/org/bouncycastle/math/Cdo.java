package org.bouncycastle.math;

import android.support.v4.q3;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.math.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final int f31781do = 211;

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f31783if = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f31782for = BigInteger.valueOf(2);

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f31784new = BigInteger.valueOf(3);

    /* renamed from: org.bouncycastle.math.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private BigInteger f31785do;

        /* renamed from: for, reason: not valid java name */
        private int f31786for;

        /* renamed from: if, reason: not valid java name */
        private byte[] f31787if;

        private Cfor(BigInteger bigInteger, byte[] bArr, int i) {
            this.f31785do = bigInteger;
            this.f31787if = bArr;
            this.f31786for = i;
        }

        /* renamed from: do, reason: not valid java name */
        public BigInteger m35250do() {
            return this.f31785do;
        }

        /* renamed from: for, reason: not valid java name */
        public byte[] m35251for() {
            return this.f31787if;
        }

        /* renamed from: if, reason: not valid java name */
        public int m35252if() {
            return this.f31786for;
        }
    }

    /* renamed from: org.bouncycastle.math.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private boolean f31788do;

        /* renamed from: if, reason: not valid java name */
        private BigInteger f31789if;

        private Cif(boolean z, BigInteger bigInteger) {
            this.f31788do = z;
            this.f31789if = bigInteger;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public static Cif m35254else() {
            return new Cif(false, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public static Cif m35256goto() {
            return new Cif(true, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public static Cif m35258this(BigInteger bigInteger) {
            return new Cif(true, bigInteger);
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m35259case() {
            return this.f31788do;
        }

        /* renamed from: new, reason: not valid java name */
        public BigInteger m35260new() {
            return this.f31789if;
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m35261try() {
            return this.f31788do && this.f31789if == null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static Cfor m35236break(Digest digest, int i, byte[] bArr) {
        C0457do c0457do;
        int digestSize = digest.getDigestSize();
        C0457do c0457do2 = null;
        int i2 = 1;
        if (i < 33) {
            byte[] bArr2 = new byte[digestSize];
            byte[] bArr3 = new byte[digestSize];
            int i3 = 0;
            do {
                m35237case(digest, bArr, bArr2, 0);
                m35238catch(bArr, 1);
                m35237case(digest, bArr, bArr3, 0);
                m35238catch(bArr, 1);
                i3++;
                long jM35244for = (((m35244for(bArr2) ^ m35244for(bArr3)) & ((-1) >>> (32 - i))) | (1 << (i - 1)) | 1) & 4294967295L;
                if (m35243final(jM35244for)) {
                    return new Cfor(BigInteger.valueOf(jM35244for), bArr, i3);
                }
            } while (i3 <= i * 4);
            throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
        }
        Cfor cforM35236break = m35236break(digest, (i + 3) / 2, bArr);
        BigInteger bigIntegerM35250do = cforM35236break.m35250do();
        byte[] bArrM35251for = cforM35236break.m35251for();
        int iM35252if = cforM35236break.m35252if();
        int i4 = i - 1;
        int i5 = (i4 / (digestSize * 8)) + 1;
        BigInteger bigIntegerM35242else = m35242else(digest, bArrM35251for, i5);
        BigInteger bigInteger = f31783if;
        BigInteger bit = bigIntegerM35242else.mod(bigInteger.shiftLeft(i4)).setBit(i4);
        BigInteger bigIntegerShiftLeft = bigIntegerM35250do.shiftLeft(1);
        BigInteger bigIntegerShiftLeft2 = bit.subtract(bigInteger).divide(bigIntegerShiftLeft).add(bigInteger).shiftLeft(1);
        BigInteger bigIntegerAdd = bigIntegerShiftLeft2.multiply(bigIntegerM35250do).add(bigInteger);
        int i6 = iM35252if;
        int i7 = 0;
        while (true) {
            if (bigIntegerAdd.bitLength() > i) {
                BigInteger bigInteger2 = f31783if;
                bigIntegerShiftLeft2 = bigInteger2.shiftLeft(i4).subtract(bigInteger2).divide(bigIntegerShiftLeft).add(bigInteger2).shiftLeft(i2);
                bigIntegerAdd = bigIntegerShiftLeft2.multiply(bigIntegerM35250do).add(bigInteger2);
            }
            i6 += i2;
            if (m35245goto(bigIntegerAdd)) {
                c0457do = c0457do2;
                m35238catch(bArrM35251for, i5);
            } else {
                BigInteger bigIntegerAdd2 = m35242else(digest, bArrM35251for, i5).mod(bigIntegerAdd.subtract(f31784new)).add(f31782for);
                BigInteger bigIntegerAdd3 = bigIntegerShiftLeft2.add(BigInteger.valueOf(i7));
                BigInteger bigIntegerModPow = bigIntegerAdd2.modPow(bigIntegerAdd3, bigIntegerAdd);
                BigInteger bigInteger3 = f31783if;
                if (bigIntegerAdd.gcd(bigIntegerModPow.subtract(bigInteger3)).equals(bigInteger3) && bigIntegerModPow.modPow(bigIntegerM35250do, bigIntegerAdd).equals(bigInteger3)) {
                    return new Cfor(bigIntegerAdd, bArrM35251for, i6);
                }
                c0457do = null;
                bigIntegerShiftLeft2 = bigIntegerAdd3;
                i7 = 0;
            }
            if (i6 >= (i * 4) + iM35252if) {
                throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
            }
            i7 += 2;
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerShiftLeft);
            c0457do2 = c0457do;
            i2 = 1;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static void m35237case(Digest digest, byte[] bArr, byte[] bArr2, int i) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, i);
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m35238catch(byte[] bArr, int i) {
        int length = bArr.length;
        while (i > 0) {
            length--;
            if (length < 0) {
                return;
            }
            int i2 = i + (bArr[length] & 255);
            bArr[length] = (byte) i2;
            i = i2 >>> 8;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m35239class(BigInteger bigInteger, SecureRandom secureRandom, int i) {
        m35241do(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        if (!bigInteger.testBit(0)) {
            return false;
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(f31783if);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(f31782for);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int i2 = 0; i2 < i; i2++) {
            if (!m35248this(bigInteger, bigIntegerSubtract, bigIntegerShiftRight, lowestSetBit, org.bouncycastle.util.Cdo.m36316try(f31782for, bigIntegerSubtract2, secureRandom))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m35240const(BigInteger bigInteger, BigInteger bigInteger2) {
        m35241do(bigInteger, "candidate");
        m35241do(bigInteger2, "base");
        BigInteger bigInteger3 = f31783if;
        if (bigInteger2.compareTo(bigInteger.subtract(bigInteger3)) >= 0) {
            throw new IllegalArgumentException("'base' must be < ('candidate' - 1)");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger3);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        return m35248this(bigInteger, bigIntegerSubtract, bigIntegerSubtract.shiftRight(lowestSetBit), lowestSetBit, bigInteger2);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m35241do(BigInteger bigInteger, String str) {
        if (bigInteger == null || bigInteger.signum() < 1 || bigInteger.bitLength() < 2) {
            throw new IllegalArgumentException("'" + str + "' must be non-null and >= 2");
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static BigInteger m35242else(Digest digest, byte[] bArr, int i) {
        int digestSize = digest.getDigestSize();
        int i2 = i * digestSize;
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 < i; i3++) {
            i2 -= digestSize;
            m35237case(digest, bArr, bArr2, i2);
            m35238catch(bArr, 1);
        }
        return new BigInteger(1, bArr2);
    }

    /* renamed from: final, reason: not valid java name */
    private static boolean m35243final(long j) {
        if ((j >>> 32) != 0) {
            throw new IllegalArgumentException("Size limit exceeded");
        }
        if (j <= 5) {
            return j == 2 || j == 3 || j == 5;
        }
        if ((1 & j) == 0 || j % 3 == 0 || j % 5 == 0) {
            return false;
        }
        long[] jArr = {1, 7, 11, 13, 17, 19, 23, 29};
        long j2 = 0;
        int i = 1;
        while (true) {
            if (i >= 8) {
                j2 += 30;
                if (j2 * j2 >= j) {
                    return true;
                }
                i = 0;
            } else {
                if (j % (jArr[i] + j2) == 0) {
                    return j < 30;
                }
                i++;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m35244for(byte[] bArr) {
        int iMin = Math.min(4, bArr.length);
        int i = 0;
        int i2 = 0;
        while (i < iMin) {
            int i3 = i + 1;
            i2 |= (bArr[bArr.length - i3] & 255) << (i * 8);
            i = i3;
        }
        return i2;
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m35245goto(BigInteger bigInteger) {
        int iIntValue = bigInteger.mod(BigInteger.valueOf(223092870)).intValue();
        if (iIntValue % 2 != 0 && iIntValue % 3 != 0 && iIntValue % 5 != 0 && iIntValue % 7 != 0 && iIntValue % 11 != 0 && iIntValue % 13 != 0 && iIntValue % 17 != 0 && iIntValue % 19 != 0 && iIntValue % 23 != 0) {
            int iIntValue2 = bigInteger.mod(BigInteger.valueOf(58642669)).intValue();
            if (iIntValue2 % 29 != 0 && iIntValue2 % 31 != 0 && iIntValue2 % 37 != 0 && iIntValue2 % 41 != 0 && iIntValue2 % 43 != 0) {
                int iIntValue3 = bigInteger.mod(BigInteger.valueOf(600662303)).intValue();
                if (iIntValue3 % 47 != 0 && iIntValue3 % 53 != 0 && iIntValue3 % 59 != 0 && iIntValue3 % 61 != 0 && iIntValue3 % 67 != 0) {
                    int iIntValue4 = bigInteger.mod(BigInteger.valueOf(33984931)).intValue();
                    if (iIntValue4 % 71 != 0 && iIntValue4 % 73 != 0 && iIntValue4 % 79 != 0 && iIntValue4 % 83 != 0) {
                        int iIntValue5 = bigInteger.mod(BigInteger.valueOf(89809099)).intValue();
                        if (iIntValue5 % 89 != 0 && iIntValue5 % 97 != 0 && iIntValue5 % 101 != 0 && iIntValue5 % 103 != 0) {
                            int iIntValue6 = bigInteger.mod(BigInteger.valueOf(167375713)).intValue();
                            if (iIntValue6 % 107 != 0 && iIntValue6 % 109 != 0 && iIntValue6 % 113 != 0 && iIntValue6 % 127 != 0) {
                                int iIntValue7 = bigInteger.mod(BigInteger.valueOf(371700317)).intValue();
                                if (iIntValue7 % 131 != 0 && iIntValue7 % 137 != 0 && iIntValue7 % 139 != 0 && iIntValue7 % 149 != 0) {
                                    int iIntValue8 = bigInteger.mod(BigInteger.valueOf(645328247)).intValue();
                                    if (iIntValue8 % 151 != 0 && iIntValue8 % 157 != 0 && iIntValue8 % 163 != 0 && iIntValue8 % 167 != 0) {
                                        int iIntValue9 = bigInteger.mod(BigInteger.valueOf(1070560157)).intValue();
                                        if (iIntValue9 % 173 != 0 && iIntValue9 % 179 != 0 && iIntValue9 % 181 != 0 && iIntValue9 % 191 != 0) {
                                            int iIntValue10 = bigInteger.mod(BigInteger.valueOf(1596463769)).intValue();
                                            if (iIntValue10 % 193 != 0 && iIntValue10 % 197 != 0 && iIntValue10 % 199 != 0 && iIntValue10 % f31781do != 0) {
                                                return false;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m35246if(BigInteger bigInteger, SecureRandom secureRandom, int i) {
        BigInteger bigIntegerModPow;
        boolean z;
        m35241do(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return Cif.m35254else();
        }
        if (!bigInteger.testBit(0)) {
            return Cif.m35258this(f31782for);
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(f31783if);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(f31782for);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int i2 = 0; i2 < i; i2++) {
            BigInteger bigIntegerM36316try = org.bouncycastle.util.Cdo.m36316try(f31782for, bigIntegerSubtract2, secureRandom);
            BigInteger bigIntegerGcd = bigIntegerM36316try.gcd(bigInteger);
            BigInteger bigInteger2 = f31783if;
            if (bigIntegerGcd.compareTo(bigInteger2) > 0) {
                return Cif.m35258this(bigIntegerGcd);
            }
            BigInteger bigIntegerModPow2 = bigIntegerM36316try.modPow(bigIntegerShiftRight, bigInteger);
            if (!bigIntegerModPow2.equals(bigInteger2) && !bigIntegerModPow2.equals(bigIntegerSubtract)) {
                int i3 = 1;
                while (true) {
                    if (i3 >= lowestSetBit) {
                        bigIntegerModPow = bigIntegerModPow2;
                        break;
                    }
                    bigIntegerModPow = bigIntegerModPow2.modPow(f31782for, bigInteger);
                    if (bigIntegerModPow.equals(bigIntegerSubtract)) {
                        z = true;
                        break;
                    }
                    if (bigIntegerModPow.equals(f31783if)) {
                        break;
                    }
                    i3++;
                    bigIntegerModPow2 = bigIntegerModPow;
                }
                z = false;
                if (!z) {
                    BigInteger bigInteger3 = f31783if;
                    if (!bigIntegerModPow.equals(bigInteger3)) {
                        bigIntegerModPow2 = bigIntegerModPow.modPow(f31782for, bigInteger);
                        if (bigIntegerModPow2.equals(bigInteger3)) {
                            bigIntegerModPow2 = bigIntegerModPow;
                        }
                    }
                    BigInteger bigIntegerGcd2 = bigIntegerModPow2.subtract(bigInteger3).gcd(bigInteger);
                    return bigIntegerGcd2.compareTo(bigInteger3) > 0 ? Cif.m35258this(bigIntegerGcd2) : Cif.m35256goto();
                }
            }
        }
        return Cif.m35254else();
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfor m35247new(Digest digest, int i, byte[] bArr) {
        if (digest == null) {
            throw new IllegalArgumentException("'hash' cannot be null");
        }
        if (i < 2) {
            throw new IllegalArgumentException("'length' must be >= 2");
        }
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("'inputSeed' cannot be null or empty");
        }
        return m35236break(digest, i, q3.m6371final(bArr));
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m35248this(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, BigInteger bigInteger4) {
        BigInteger bigIntegerModPow = bigInteger4.modPow(bigInteger3, bigInteger);
        if (bigIntegerModPow.equals(f31783if) || bigIntegerModPow.equals(bigInteger2)) {
            return true;
        }
        for (int i2 = 1; i2 < i; i2++) {
            bigIntegerModPow = bigIntegerModPow.modPow(f31782for, bigInteger);
            if (bigIntegerModPow.equals(bigInteger2)) {
                return true;
            }
            if (bigIntegerModPow.equals(f31783if)) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m35249try(BigInteger bigInteger) {
        m35241do(bigInteger, "candidate");
        return m35245goto(bigInteger);
    }
}
