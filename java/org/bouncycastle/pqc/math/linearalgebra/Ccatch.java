package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.l80;
import android.support.v4.w91;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch {

    /* renamed from: case, reason: not valid java name */
    private static final long f32611case = 152125131763605L;

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f32612do = BigInteger.valueOf(0);

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f32616if = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f32614for = BigInteger.valueOf(2);

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f32617new = BigInteger.valueOf(4);

    /* renamed from: try, reason: not valid java name */
    private static final int[] f32618try = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};

    /* renamed from: else, reason: not valid java name */
    private static SecureRandom f32613else = null;

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f32615goto = {0, 1, 0, -1, 0, -1, 0, 1};

    private Ccatch() {
    }

    public static long a(long j, int i) {
        long j2 = 1;
        while (i > 0) {
            if ((i & 1) == 1) {
                j2 *= j;
            }
            j *= j;
            i >>>= 1;
        }
        return j2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m36150abstract(int i, int i2, int i3) {
        if (i3 <= 0 || i3 * i3 > Integer.MAX_VALUE || i2 < 0) {
            return 0;
        }
        int i4 = ((i % i3) + i3) % i3;
        int i5 = 1;
        while (i2 > 0) {
            if ((i2 & 1) == 1) {
                i5 = (i5 * i4) % i3;
            }
            i4 = (i4 * i4) % i3;
            i2 >>>= 1;
        }
        return i5;
    }

    public static BigInteger b(BigInteger bigInteger) {
        if (f32613else == null) {
            f32613else = Cfor.m33599case();
        }
        return c(bigInteger, f32613else);
    }

    /* renamed from: break, reason: not valid java name */
    public static BigInteger[] m36151break(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = f32616if;
        BigInteger bigIntegerDivide = f32612do;
        if (bigInteger2.signum() != 0) {
            BigInteger bigInteger4 = bigInteger;
            BigInteger bigInteger5 = bigInteger2;
            while (bigInteger5.signum() != 0) {
                BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger4.divideAndRemainder(bigInteger5);
                BigInteger bigInteger6 = bigIntegerArrDivideAndRemainder[0];
                BigInteger bigInteger7 = bigIntegerArrDivideAndRemainder[1];
                BigInteger bigInteger8 = bigIntegerDivide;
                bigIntegerDivide = bigInteger3.subtract(bigInteger6.multiply(bigIntegerDivide));
                bigInteger3 = bigInteger8;
                bigInteger4 = bigInteger5;
                bigInteger5 = bigInteger7;
            }
            bigIntegerDivide = bigInteger4.subtract(bigInteger.multiply(bigInteger3)).divide(bigInteger2);
            bigInteger = bigInteger4;
        }
        return new BigInteger[]{bigInteger, bigInteger3, bigIntegerDivide};
    }

    public static BigInteger c(BigInteger bigInteger, SecureRandom secureRandom) {
        int iBitLength = bigInteger.bitLength();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        if (secureRandom == null && (secureRandom = f32613else) == null) {
            secureRandom = Cfor.m33599case();
        }
        for (int i = 0; i < 20; i++) {
            bigIntegerValueOf = Cdo.m36314new(iBitLength, secureRandom);
            if (bigIntegerValueOf.compareTo(bigInteger) < 0) {
                return bigIntegerValueOf;
            }
        }
        return bigIntegerValueOf.mod(bigInteger);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m36152case(long j) {
        if (j == 0) {
            return 1;
        }
        if (j < 0) {
            j = -j;
        }
        int i = 0;
        while (j > 0) {
            i++;
            j >>>= 8;
        }
        return i;
    }

    /* renamed from: catch, reason: not valid java name */
    public static float m36153catch(float f, int i) {
        float f2 = 1.0f;
        while (i > 0) {
            f2 *= f;
            i--;
        }
        return f2;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m36154class(int i) {
        if (i <= 0) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = i >>> 1; i3 > 0; i3 >>>= 1) {
            i2++;
        }
        return i2;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m36155const(BigInteger bigInteger) {
        int i = -1;
        for (BigInteger bigIntegerShiftLeft = f32616if; bigIntegerShiftLeft.compareTo(bigInteger) <= 0; bigIntegerShiftLeft = bigIntegerShiftLeft.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    /* renamed from: continue, reason: not valid java name */
    public static BigInteger m36156continue(long j) {
        if (j <= 1) {
            return BigInteger.valueOf(2L);
        }
        if (j == 2) {
            return BigInteger.valueOf(3L);
        }
        boolean z = false;
        long j2 = 0;
        for (long j3 = j + 1 + (j & 1); j3 <= (j << 1) && !z; j3 += 2) {
            for (long j4 = 3; j4 <= (j3 >> 1) && !z; j4 += 2) {
                if (j3 % j4 == 0) {
                    z = true;
                }
            }
            if (!z) {
                j2 = j3;
            }
            z = !z;
        }
        return BigInteger.valueOf(j2);
    }

    public static BigInteger d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger.subtract(bigInteger2).mod(bigInteger3.subtract(bigInteger2)).add(bigInteger2);
    }

    /* renamed from: default, reason: not valid java name */
    private static double m36157default(double d) {
        double[] dArr = {1.0d, 0.5849625007211562d, 0.32192809488736235d, 0.16992500144231237d, 0.0874628412503394d, 0.044394119358453436d, 0.02236781302845451d, 0.01122725542325412d, 0.005624549193878107d, 0.0028150156070540383d, 0.0014081943928083889d, 7.042690112466433E-4d, 3.5217748030102726E-4d, 1.7609948644250602E-4d, 8.80524301221769E-5d, 4.4026886827316716E-5d, 2.2013611360340496E-5d, 1.1006847667481442E-5d, 5.503434330648604E-6d, 2.751719789561283E-6d, 1.375860550841138E-6d, 6.879304394358497E-7d, 3.4396526072176454E-7d, 1.7198264061184464E-7d, 8.599132286866321E-8d, 4.299566207501687E-8d, 2.1497831197679756E-8d, 1.0748915638882709E-8d, 5.374457829452062E-9d, 2.687228917228708E-9d, 1.3436144592400231E-9d, 6.718072297764289E-10d, 3.3590361492731876E-10d, 1.6795180747343547E-10d, 8.397590373916176E-11d, 4.1987951870191886E-11d, 2.0993975935248694E-11d, 1.0496987967662534E-11d, 5.2484939838408146E-12d, 2.624246991922794E-12d, 1.3121234959619935E-12d, 6.56061747981146E-13d, 3.2803087399061026E-13d, 1.6401543699531447E-13d, 8.200771849765956E-14d, 4.1003859248830365E-14d, 2.0501929624415328E-14d, 1.02509648122077E-14d, 5.1254824061038595E-15d, 2.5627412030519317E-15d, 1.2813706015259665E-15d, 6.406853007629834E-16d, 3.203426503814917E-16d, 1.6017132519074588E-16d, 8.008566259537294E-17d, 4.004283129768647E-17d, 2.0021415648843235E-17d, 1.0010707824421618E-17d, 5.005353912210809E-18d, 2.5026769561054044E-18d, 1.2513384780527022E-18d, 6.256692390263511E-19d, 3.1283461951317555E-19d, 1.5641730975658778E-19d, 7.820865487829389E-20d, 3.9104327439146944E-20d, 1.9552163719573472E-20d, 9.776081859786736E-21d, 4.888040929893368E-21d, 2.444020464946684E-21d, 1.222010232473342E-21d, 6.11005116236671E-22d, 3.055025581183355E-22d, 1.5275127905916775E-22d, 7.637563952958387E-23d, 3.818781976479194E-23d, 1.909390988239597E-23d, 9.546954941197984E-24d, 4.773477470598992E-24d, 2.386738735299496E-24d, 1.193369367649748E-24d, 5.96684683824874E-25d, 2.98342341912437E-25d, 1.491711709562185E-25d, 7.458558547810925E-26d, 3.7292792739054626E-26d, 1.8646396369527313E-26d, 9.323198184763657E-27d, 4.661599092381828E-27d, 2.330799546190914E-27d, 1.165399773095457E-27d, 5.826998865477285E-28d, 2.9134994327386427E-28d, 1.4567497163693213E-28d, 7.283748581846607E-29d, 3.6418742909233034E-29d, 1.8209371454616517E-29d, 9.104685727308258E-30d, 4.552342863654129E-30d, 2.2761714318270646E-30d};
        double d2 = 1.0d;
        double d3 = 0.0d;
        double d4 = 1.0d;
        for (int i = 0; i < 53; i++) {
            double d5 = (d2 * d4) + d2;
            if (d5 <= d) {
                d3 += dArr[i];
                d2 = d5;
            }
            d4 *= 0.5d;
        }
        return d3;
    }

    /* renamed from: do, reason: not valid java name */
    public static BigInteger m36158do(int i, int i2) {
        BigInteger bigIntegerDivide = f32616if;
        if (i == 0) {
            return i2 == 0 ? bigIntegerDivide : f32612do;
        }
        if (i2 > (i >>> 1)) {
            i2 = i - i2;
        }
        for (int i3 = 1; i3 <= i2; i3++) {
            bigIntegerDivide = bigIntegerDivide.multiply(BigInteger.valueOf(i - (i3 - 1))).divide(BigInteger.valueOf(i3));
        }
        return bigIntegerDivide;
    }

    public static BigInteger e(BigInteger bigInteger, BigInteger bigInteger2) throws IllegalArgumentException {
        BigInteger bigIntegerShiftLeft;
        BigInteger bigInteger3 = f32612do;
        BigInteger bigIntegerAdd = bigInteger;
        if (bigIntegerAdd.compareTo(bigInteger3) < 0) {
            bigIntegerAdd = bigInteger.add(bigInteger2);
        }
        if (bigIntegerAdd.equals(bigInteger3)) {
            return bigInteger3;
        }
        if (bigInteger2.equals(f32614for)) {
            return bigIntegerAdd;
        }
        if (bigInteger2.testBit(0) && bigInteger2.testBit(1)) {
            if (m36175public(bigIntegerAdd, bigInteger2) == 1) {
                return bigIntegerAdd.modPow(bigInteger2.add(f32616if).shiftRight(2), bigInteger2);
            }
            throw new IllegalArgumentException("No quadratic residue: " + bigIntegerAdd + ", " + bigInteger2);
        }
        BigInteger bigIntegerSubtract = bigInteger2.subtract(f32616if);
        long j = 0;
        while (!bigIntegerSubtract.testBit(0)) {
            j++;
            bigIntegerSubtract = bigIntegerSubtract.shiftRight(1);
        }
        BigInteger bigInteger4 = f32616if;
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.subtract(bigInteger4).shiftRight(1);
        BigInteger bigIntegerModPow = bigIntegerAdd.modPow(bigIntegerShiftRight, bigInteger2);
        BigInteger bigIntegerRemainder = bigIntegerModPow.multiply(bigIntegerModPow).remainder(bigInteger2).multiply(bigIntegerAdd).remainder(bigInteger2);
        BigInteger bigIntegerRemainder2 = bigIntegerModPow.multiply(bigIntegerAdd).remainder(bigInteger2);
        if (bigIntegerRemainder.equals(bigInteger4)) {
            return bigIntegerRemainder2;
        }
        BigInteger bigIntegerAdd2 = f32614for;
        while (m36175public(bigIntegerAdd2, bigInteger2) == 1) {
            bigIntegerAdd2 = bigIntegerAdd2.add(f32616if);
        }
        BigInteger bigIntegerModPow2 = bigIntegerAdd2.modPow(bigIntegerShiftRight.multiply(f32614for).add(f32616if), bigInteger2);
        for (int i = 1; bigIntegerRemainder.compareTo(f32616if) == i; i = 1) {
            long j2 = 0;
            BigInteger bigIntegerMod = bigIntegerRemainder;
            while (true) {
                bigIntegerShiftLeft = f32616if;
                if (bigIntegerMod.equals(bigIntegerShiftLeft)) {
                    break;
                }
                bigIntegerMod = bigIntegerMod.multiply(bigIntegerMod).mod(bigInteger2);
                j2++;
            }
            long j3 = j - j2;
            if (j3 == 0) {
                throw new IllegalArgumentException("No quadratic residue: " + bigIntegerAdd + ", " + bigInteger2);
            }
            for (long j4 = 0; j4 < j3 - 1; j4++) {
                bigIntegerShiftLeft = bigIntegerShiftLeft.shiftLeft(1);
            }
            BigInteger bigIntegerModPow3 = bigIntegerModPow2.modPow(bigIntegerShiftLeft, bigInteger2);
            bigIntegerRemainder2 = bigIntegerRemainder2.multiply(bigIntegerModPow3).remainder(bigInteger2);
            bigIntegerModPow2 = bigIntegerModPow3.multiply(bigIntegerModPow3).remainder(bigInteger2);
            bigIntegerRemainder = bigIntegerRemainder.multiply(bigIntegerModPow2).mod(bigInteger2);
            j = j2;
        }
        return bigIntegerRemainder2;
    }

    /* renamed from: else, reason: not valid java name */
    public static BigInteger m36159else(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.signum() < 0 ? m36159else(bigInteger.negate(), bigInteger2).negate() : bigInteger2.signum() < 0 ? m36159else(bigInteger, bigInteger2.negate()).negate() : bigInteger.shiftLeft(1).add(bigInteger2).divide(bigInteger2.shiftLeft(1));
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m36160extends(int i) {
        int i2 = 0;
        if (i != 0) {
            for (int i3 = 1; (i & i3) == 0; i3 <<= 1) {
                i2++;
            }
        }
        return i2;
    }

    public static BigInteger f(BigInteger bigInteger) {
        int i;
        BigInteger bigIntegerAdd;
        BigInteger bigIntegerMultiply = f32612do;
        if (bigInteger.compareTo(bigIntegerMultiply) < 0) {
            throw new ArithmeticException("cannot extract root of negative number" + bigInteger + ".");
        }
        int iBitLength = bigInteger.bitLength();
        if ((iBitLength & 1) != 0) {
            int i2 = iBitLength - 1;
            bigIntegerAdd = bigIntegerMultiply;
            bigIntegerMultiply = bigIntegerMultiply.add(f32616if);
            i = i2;
        } else {
            i = iBitLength;
            bigIntegerAdd = bigIntegerMultiply;
        }
        while (i > 0) {
            BigInteger bigInteger2 = f32617new;
            BigInteger bigIntegerMultiply2 = bigIntegerAdd.multiply(bigInteger2);
            int i3 = i - 1;
            int i4 = bigInteger.testBit(i3) ? 2 : 0;
            i = i3 - 1;
            bigIntegerAdd = bigIntegerMultiply2.add(BigInteger.valueOf(i4 + (bigInteger.testBit(i) ? 1 : 0)));
            BigInteger bigIntegerMultiply3 = bigIntegerMultiply.multiply(bigInteger2);
            BigInteger bigInteger3 = f32616if;
            BigInteger bigIntegerAdd2 = bigIntegerMultiply3.add(bigInteger3);
            bigIntegerMultiply = bigIntegerMultiply.multiply(f32614for);
            if (bigIntegerAdd.compareTo(bigIntegerAdd2) != -1) {
                bigIntegerMultiply = bigIntegerMultiply.add(bigInteger3);
                bigIntegerAdd = bigIntegerAdd.subtract(bigIntegerAdd2);
            }
        }
        return bigIntegerMultiply;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m36161final(int i, int i2) {
        return BigInteger.valueOf(i).gcd(BigInteger.valueOf(i2)).intValue();
    }

    /* renamed from: finally, reason: not valid java name */
    public static long m36162finally(long j, long j2) {
        long j3 = j % j2;
        return j3 < 0 ? j3 + j2 : j3;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m36163for(int i) {
        int i2 = 1;
        int i3 = 0;
        while (i2 < i) {
            i2 <<= 1;
            i3++;
        }
        return i3;
    }

    /* renamed from: goto, reason: not valid java name */
    public static BigInteger[] m36164goto(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr2 = new BigInteger[bigIntegerArr.length];
        for (int i = 0; i < bigIntegerArr.length; i++) {
            bigIntegerArr2[i] = m36159else(bigIntegerArr[i], bigInteger);
        }
        return bigIntegerArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m36165if(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += i & 1;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m36166implements(int i, int i2) {
        int i3 = i % i2;
        if (i3 == 0) {
            throw new IllegalArgumentException(i + " is not an element of Z/(" + i2 + "Z)^*; it is not meaningful to compute its order.");
        }
        int i4 = 1;
        while (i3 != 1) {
            i3 = (i3 * i) % i2;
            if (i3 < 0) {
                i3 += i2;
            }
            i4++;
        }
        return i4;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m36167import(int i, int i2) {
        if (i <= 0) {
            return -1;
        }
        int i3 = 0;
        while (i > 1) {
            if (i % i2 != 0) {
                return -1;
            }
            i /= i2;
            i3++;
        }
        return i3;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m36168instanceof(BigInteger bigInteger) {
        int[] iArr = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, org.bouncycastle.math.Cdo.f31781do, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, TypedValues.Attributes.TYPE_EASING, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, l80.f3561break, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, TypedValues.Motion.TYPE_PATHMOTION_ARC, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, TypedValues.Transition.TYPE_FROM, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, w91.f7420do, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, PointerIconCompat.TYPE_VERTICAL_TEXT, PointerIconCompat.TYPE_ALL_SCROLL, PointerIconCompat.TYPE_ZOOM_OUT, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499};
        for (int i = 0; i < 239; i++) {
            if (bigInteger.mod(BigInteger.valueOf(iArr[i])).equals(f32612do)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0012, code lost:
    
        r2 = r2 - 2;
     */
    /* renamed from: interface, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m36169interface(int i) {
        int i2;
        if (i <= 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if ((i & 1) == 0) {
            i2 = i - 1;
            while (i2 > 3 && !m36170native(i2)) {
            }
            return i2;
        }
        i2 -= 2;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m36170native(int i) {
        if (i < 2) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if ((i & 1) == 0) {
            return false;
        }
        if (i < 42) {
            int i2 = 0;
            while (true) {
                int[] iArr = f32618try;
                if (i2 >= iArr.length) {
                    break;
                }
                if (i == iArr[i2]) {
                    return true;
                }
                i2++;
            }
        }
        if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0 || i % 11 == 0 || i % 13 == 0 || i % 17 == 0 || i % 19 == 0 || i % 23 == 0 || i % 29 == 0 || i % 31 == 0 || i % 37 == 0 || i % 41 == 0) {
            return false;
        }
        return BigInteger.valueOf(i).isProbablePrime(20);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m36171new(BigInteger bigInteger) {
        int i = 0;
        for (BigInteger bigIntegerShiftLeft = f32616if; bigIntegerShiftLeft.compareTo(bigInteger) < 0; bigIntegerShiftLeft = bigIntegerShiftLeft.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    /* renamed from: package, reason: not valid java name */
    public static int m36172package(int i, int i2) {
        return BigInteger.valueOf(i).modInverse(BigInteger.valueOf(i2)).intValue();
    }

    /* renamed from: private, reason: not valid java name */
    public static long m36173private(long j, long j2) {
        return BigInteger.valueOf(j).modInverse(BigInteger.valueOf(j2)).longValue();
    }

    /* renamed from: protected, reason: not valid java name */
    public static BigInteger m36174protected(byte[] bArr) {
        return m36185transient(bArr, 0, bArr.length);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m36175public(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerAdd = f32612do;
        if (bigInteger2.equals(bigIntegerAdd)) {
            return bigInteger.abs().equals(f32616if) ? 1 : 0;
        }
        if (!bigInteger.testBit(0) && !bigInteger2.testBit(0)) {
            return 0;
        }
        long j = 1;
        if (bigInteger2.signum() == -1) {
            bigInteger2 = bigInteger2.negate();
            if (bigInteger.signum() == -1) {
                j = -1;
            }
        }
        while (!bigInteger2.testBit(0)) {
            bigIntegerAdd = bigIntegerAdd.add(f32616if);
            bigInteger2 = bigInteger2.divide(f32614for);
        }
        if (bigIntegerAdd.testBit(0)) {
            j *= f32615goto[bigInteger.intValue() & 7];
        }
        if (bigInteger.signum() < 0) {
            if (bigInteger2.testBit(1)) {
                j = -j;
            }
            bigInteger = bigInteger.negate();
        }
        while (bigInteger.signum() != 0) {
            BigInteger bigIntegerAdd2 = f32612do;
            while (!bigInteger.testBit(0)) {
                bigIntegerAdd2 = bigIntegerAdd2.add(f32616if);
                bigInteger = bigInteger.divide(f32614for);
            }
            if (bigIntegerAdd2.testBit(0)) {
                j *= f32615goto[bigInteger2.intValue() & 7];
            }
            if (bigInteger.compareTo(bigInteger2) >= 0) {
                BigInteger bigInteger3 = bigInteger2;
                bigInteger2 = bigInteger;
                bigInteger = bigInteger3;
            } else if (bigInteger2.testBit(1) && bigInteger.testBit(1)) {
                j = -j;
            }
            BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger);
            bigInteger2 = bigInteger;
            bigInteger = bigIntegerSubtract;
        }
        if (bigInteger2.equals(f32616if)) {
            return (int) j;
        }
        return 0;
    }

    /* renamed from: return, reason: not valid java name */
    public static BigInteger m36176return(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        BigInteger bigIntegerDivide = bigIntegerArr[0];
        for (int i = 1; i < length; i++) {
            bigIntegerDivide = bigIntegerDivide.multiply(bigIntegerArr[i]).divide(bigIntegerDivide.gcd(bigIntegerArr[i]));
        }
        return bigIntegerDivide;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m36177static(int i) {
        if (i < 0) {
            i = -i;
        }
        if (i == 0) {
            return 1;
        }
        if ((i & 1) == 0) {
            return 2;
        }
        for (int i2 = 3; i2 <= i / i2; i2 += 2) {
            if (i % i2 == 0) {
                return i2;
            }
        }
        return i;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static BigInteger m36178strictfp(BigInteger bigInteger) {
        return m36187volatile(bigInteger, 20);
    }

    /* renamed from: super, reason: not valid java name */
    public static float m36179super(int i, int i2) {
        float fM36153catch;
        float fM36153catch2 = i / i2;
        float f = 0.0f;
        while (Math.abs(f - fM36153catch2) > 1.0E-4d) {
            while (true) {
                fM36153catch = m36153catch(fM36153catch2, i2);
                if (Float.isInfinite(fM36153catch)) {
                    fM36153catch2 = (fM36153catch2 + f) / 2.0f;
                }
            }
            f = fM36153catch2;
            fM36153catch2 -= (fM36153catch - i) / (i2 * m36153catch(fM36153catch2, i2 - 1));
        }
        return fM36153catch2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static double m36180switch(double d) {
        double d2 = 1.0d;
        if (d > 0.0d && d < 1.0d) {
            return -m36180switch(1.0d / d);
        }
        int i = 0;
        double d3 = d;
        while (d3 > 2.0d) {
            d3 /= 2.0d;
            i++;
            d2 *= 2.0d;
        }
        double dM36157default = m36157default(d / d2);
        double d4 = i;
        Double.isNaN(d4);
        return d4 + dM36157default;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m36181synchronized(int i, int i2) {
        int i3 = 1;
        while (i2 > 0) {
            if ((i2 & 1) == 1) {
                i3 *= i;
            }
            i *= i;
            i2 >>>= 1;
        }
        return i3;
    }

    /* renamed from: this, reason: not valid java name */
    public static int[] m36182this(int i, int i2) {
        BigInteger[] bigIntegerArrM36151break = m36151break(BigInteger.valueOf(i), BigInteger.valueOf(i2));
        return new int[]{bigIntegerArrM36151break[0].intValue(), bigIntegerArrM36151break[1].intValue(), bigIntegerArrM36151break[2].intValue()};
    }

    /* renamed from: throw, reason: not valid java name */
    public static byte[] m36183throw(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.abs().toByteArray();
        if ((bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        int iBitLength = bigInteger.bitLength() >> 3;
        byte[] bArr = new byte[iBitLength];
        System.arraycopy(byteArray, 1, bArr, 0, iBitLength);
        return bArr;
    }

    /* renamed from: throws, reason: not valid java name */
    public static double m36184throws(long j) {
        int iM36155const = m36155const(BigInteger.valueOf(j));
        double d = j;
        Double.isNaN(d);
        Double.isNaN(d);
        double dM36157default = m36157default(d / d);
        double d2 = iM36155const;
        Double.isNaN(d2);
        return d2 + dM36157default;
    }

    /* renamed from: transient, reason: not valid java name */
    public static BigInteger m36185transient(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 1];
        bArr2[0] = 0;
        System.arraycopy(bArr, i, bArr2, 1, i2);
        return new BigInteger(bArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m36186try(int i) {
        if (i == 0) {
            return 1;
        }
        if (i < 0) {
            i = -i;
        }
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 8;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
    /* renamed from: volatile, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BigInteger m36187volatile(BigInteger bigInteger, int i) {
        if (bigInteger.signum() >= 0 && bigInteger.signum() != 0) {
            BigInteger bigInteger2 = f32616if;
            if (!bigInteger.equals(bigInteger2)) {
                BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
                if (!bigIntegerAdd.testBit(0)) {
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger2);
                }
                while (true) {
                    if (bigIntegerAdd.bitLength() > 6) {
                        long jLongValue = bigIntegerAdd.remainder(BigInteger.valueOf(f32611case)).longValue();
                        if (jLongValue % 3 != 0 && jLongValue % 5 != 0 && jLongValue % 7 != 0 && jLongValue % 11 != 0 && jLongValue % 13 != 0 && jLongValue % 17 != 0 && jLongValue % 19 != 0 && jLongValue % 23 != 0 && jLongValue % 29 != 0 && jLongValue % 31 != 0 && jLongValue % 37 != 0 && jLongValue % 41 != 0) {
                            if (bigIntegerAdd.bitLength() < 4 || bigIntegerAdd.isProbablePrime(i)) {
                                return bigIntegerAdd;
                            }
                        }
                    }
                    bigIntegerAdd = bigIntegerAdd.add(f32614for);
                }
            }
        }
        return f32614for;
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m36188while(int[] iArr) {
        for (int i = 1; i < iArr.length; i++) {
            int i2 = i - 1;
            if (iArr[i2] >= iArr[i]) {
                System.out.println("a[" + i2 + "] = " + iArr[i2] + " >= " + iArr[i] + " = a[" + i + "]");
                return false;
            }
        }
        return true;
    }
}
