package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Objects;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class h10 {

    /* renamed from: do, reason: not valid java name */
    private static final int f2302do = 16;

    /* renamed from: break, reason: not valid java name */
    private static boolean m2851break(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        int iBitLength = bigIntegerAbs2.bitLength();
        int iBitLength2 = bigIntegerAbs.bitLength() * 2;
        return iBitLength2 + (-1) <= iBitLength && (iBitLength2 < iBitLength || bigIntegerAbs.multiply(bigIntegerAbs).compareTo(bigIntegerAbs2) < 0);
    }

    /* renamed from: case, reason: not valid java name */
    private static BigInteger[] m2852case(BigInteger[] bigIntegerArr) {
        boolean z = bigIntegerArr[0].compareTo(bigIntegerArr[1]) < 0;
        if (z) {
            m2866return(bigIntegerArr);
        }
        BigInteger bigInteger = bigIntegerArr[0];
        BigInteger bigInteger2 = bigIntegerArr[1];
        BigInteger bigInteger3 = ECConstants.ONE;
        BigInteger bigInteger4 = ECConstants.ZERO;
        BigInteger bigInteger5 = bigInteger3;
        BigInteger bigInteger6 = bigInteger4;
        BigInteger bigInteger7 = bigInteger2;
        BigInteger bigInteger8 = bigInteger;
        while (bigInteger7.compareTo(ECConstants.ONE) > 0) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger8.divideAndRemainder(bigInteger7);
            BigInteger bigInteger9 = bigIntegerArrDivideAndRemainder[0];
            BigInteger bigInteger10 = bigIntegerArrDivideAndRemainder[1];
            BigInteger bigIntegerSubtract = bigInteger3.subtract(bigInteger9.multiply(bigInteger4));
            BigInteger bigIntegerSubtract2 = bigInteger6.subtract(bigInteger9.multiply(bigInteger5));
            BigInteger bigInteger11 = bigInteger7;
            bigInteger7 = bigInteger10;
            bigInteger8 = bigInteger11;
            BigInteger bigInteger12 = bigInteger4;
            bigInteger4 = bigIntegerSubtract;
            bigInteger3 = bigInteger12;
            bigInteger6 = bigInteger5;
            bigInteger5 = bigIntegerSubtract2;
        }
        if (bigInteger7.signum() <= 0) {
            return null;
        }
        BigInteger[] bigIntegerArr2 = {bigInteger4, bigInteger5};
        if (z) {
            m2866return(bigIntegerArr2);
        }
        return bigIntegerArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m2853catch(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        BigInteger bigIntegerAbs = bigIntegerArr[0].abs();
        BigInteger bigIntegerAbs2 = bigIntegerArr[1].abs();
        BigInteger bigIntegerAbs3 = bigIntegerArr2[0].abs();
        BigInteger bigIntegerAbs4 = bigIntegerArr2[1].abs();
        boolean z = bigIntegerAbs.compareTo(bigIntegerAbs3) < 0;
        return z == (bigIntegerAbs2.compareTo(bigIntegerAbs4) < 0) ? z : bigIntegerAbs.multiply(bigIntegerAbs).add(bigIntegerAbs2.multiply(bigIntegerAbs2)).compareTo(bigIntegerAbs3.multiply(bigIntegerAbs3).add(bigIntegerAbs4.multiply(bigIntegerAbs4))) < 0;
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m2854class(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        return m2851break(bigIntegerArr[0].abs().max(bigIntegerArr[1].abs()), bigInteger);
    }

    /* renamed from: const, reason: not valid java name */
    private static BigInteger m2855const(BigInteger bigInteger) {
        BigInteger bigIntegerShiftRight = bigInteger.shiftRight(bigInteger.bitLength() / 2);
        while (true) {
            BigInteger bigIntegerShiftRight2 = bigIntegerShiftRight.add(bigInteger.divide(bigIntegerShiftRight)).shiftRight(1);
            if (bigIntegerShiftRight2.equals(bigIntegerShiftRight)) {
                return bigIntegerShiftRight2;
            }
            bigIntegerShiftRight = bigIntegerShiftRight2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m2856do(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.gcd(bigInteger2).equals(ECConstants.ONE);
    }

    /* renamed from: else, reason: not valid java name */
    private static BigInteger[] m2857else(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = ECConstants.ZERO;
        BigInteger bigInteger4 = ECConstants.ONE;
        BigInteger bigInteger5 = bigInteger;
        while (true) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger5.divideAndRemainder(bigInteger2);
            BigInteger bigInteger6 = bigIntegerArrDivideAndRemainder[0];
            BigInteger bigInteger7 = bigIntegerArrDivideAndRemainder[1];
            BigInteger bigIntegerSubtract = bigInteger3.subtract(bigInteger6.multiply(bigInteger4));
            if (m2851break(bigInteger2, bigInteger)) {
                return new BigInteger[]{bigInteger5, bigInteger3, bigInteger2, bigInteger4, bigInteger7, bigIntegerSubtract};
            }
            bigInteger5 = bigInteger2;
            bigInteger3 = bigInteger4;
            bigInteger2 = bigInteger7;
            bigInteger4 = bigIntegerSubtract;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2858final(String[] strArr) {
        if (strArr.length < 1) {
            System.err.println("Expected a list of curve names as arguments");
            return;
        }
        for (String str : strArr) {
            m2870try(str);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static BigInteger[] m2859for(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        return m2853catch(bigIntegerArr, bigIntegerArr2) ? bigIntegerArr : bigIntegerArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    private static Cfor[] m2860goto(Cif cif) {
        BigInteger bigIntegerModPow;
        BigInteger characteristic = cif.m35440static().getCharacteristic();
        BigInteger bigIntegerDivide = characteristic.divide(ECConstants.THREE);
        SecureRandom secureRandom = new SecureRandom();
        do {
            BigInteger bigInteger = ECConstants.TWO;
            bigIntegerModPow = Cdo.m36316try(bigInteger, characteristic.subtract(bigInteger), secureRandom).modPow(bigIntegerDivide, characteristic);
        } while (bigIntegerModPow.equals(ECConstants.ONE));
        Cfor cforMo35333super = cif.mo35333super(bigIntegerModPow);
        return new Cfor[]{cforMo35333super, cforMo35333super.mo342throw()};
    }

    /* renamed from: if, reason: not valid java name */
    private static BigInteger[] m2861if(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return m2867super(bigInteger.subtract(bigInteger2).divide(bigInteger3), bigInteger.add(bigInteger2).divide(bigInteger3));
    }

    /* renamed from: import, reason: not valid java name */
    private static void m2862import(String str, Object obj) {
        StringBuffer stringBuffer = new StringBuffer("  ");
        stringBuffer.append(str);
        while (stringBuffer.length() < 20) {
            stringBuffer.append(' ');
        }
        stringBuffer.append("= ");
        stringBuffer.append(obj.toString());
        System.out.println(stringBuffer.toString());
    }

    /* renamed from: native, reason: not valid java name */
    private static BigInteger m2863native(BigInteger bigInteger, BigInteger bigInteger2) {
        boolean z = bigInteger.signum() != bigInteger2.signum();
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        BigInteger bigIntegerDivide = bigIntegerAbs.add(bigIntegerAbs2.shiftRight(1)).divide(bigIntegerAbs2);
        return z ? bigIntegerDivide.negate() : bigIntegerDivide;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m2864new(th2 th2Var) {
        Objects.requireNonNull(th2Var, "x9");
        Cif cifM7909try = th2Var.m7909try();
        if (org.bouncycastle.math.ec.Cdo.m35360final(cifM7909try)) {
            BigInteger characteristic = cifM7909try.m35440static().getCharacteristic();
            if (cifM7909try.m35443throw().mo328break() && characteristic.mod(ECConstants.THREE).equals(ECConstants.ONE)) {
                System.out.println("Curve has a 'GLV Type B' endomorphism with these parameters:");
                m2869throw(th2Var);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    private static BigInteger[] m2865public(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        BigInteger bigIntegerMo339static = new Cfor.Cnew(bigInteger, bigInteger2.multiply(bigInteger2).subtract(bigInteger3.shiftLeft(2)).mod(bigInteger)).mo340super().mo339static();
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerMo339static);
        if (bigIntegerMo339static.testBit(0)) {
            bigIntegerSubtract = bigIntegerSubtract.add(bigInteger);
        } else {
            bigIntegerMo339static = bigIntegerMo339static.add(bigInteger);
        }
        return new BigInteger[]{bigIntegerMo339static.shiftRight(1), bigIntegerSubtract.shiftRight(1)};
    }

    /* renamed from: return, reason: not valid java name */
    private static void m2866return(BigInteger[] bigIntegerArr) {
        BigInteger bigInteger = bigIntegerArr[0];
        bigIntegerArr[0] = bigIntegerArr[1];
        bigIntegerArr[1] = bigInteger;
    }

    /* renamed from: super, reason: not valid java name */
    private static BigInteger[] m2867super(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) <= 0 ? new BigInteger[]{bigInteger, bigInteger2} : new BigInteger[]{bigInteger2, bigInteger};
    }

    /* renamed from: this, reason: not valid java name */
    private static BigInteger[] m2868this(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        BigInteger bigIntegerMax = bigIntegerArr[0].max(bigIntegerArr2[0]);
        BigInteger bigIntegerMin = bigIntegerArr[1].min(bigIntegerArr2[1]);
        if (bigIntegerMax.compareTo(bigIntegerMin) > 0) {
            return null;
        }
        return new BigInteger[]{bigIntegerMax, bigIntegerMin};
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m2869throw(th2 th2Var) {
        BigInteger bigIntegerM7903catch = th2Var.m7903catch();
        BigInteger bigInteger = ECConstants.ONE;
        BigInteger[] bigIntegerArrM2865public = m2865public(bigIntegerM7903catch, bigInteger, bigInteger);
        Cfor[] cforArrM2860goto = m2860goto(th2Var.m7909try());
        m2871while(th2Var, bigIntegerArrM2865public[0], cforArrM2860goto);
        System.out.println("OR");
        m2871while(th2Var, bigIntegerArrM2865public[1], cforArrM2860goto);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m2870try(String str) {
        th2 th2VarM45for = a50.m45for(str);
        if (th2VarM45for == null) {
            System.err.println("Unknown curve: " + str);
            return;
        }
        Cif cifM7909try = th2VarM45for.m7909try();
        if (org.bouncycastle.math.ec.Cdo.m35360final(cifM7909try)) {
            BigInteger characteristic = cifM7909try.m35440static().getCharacteristic();
            if (cifM7909try.m35443throw().mo328break() && characteristic.mod(ECConstants.THREE).equals(ECConstants.ONE)) {
                System.out.println("Curve '" + str + "' has a 'GLV Type B' endomorphism with these parameters:");
                m2869throw(th2VarM45for);
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static void m2871while(th2 th2Var, BigInteger bigInteger, Cfor[] cforArr) {
        Cnew cnewM35454abstract = th2Var.m7906goto().m35454abstract();
        Cnew cnewM35454abstract2 = cnewM35454abstract.m35470package(bigInteger).m35454abstract();
        if (!cnewM35454abstract.mo375native().equals(cnewM35454abstract2.mo375native())) {
            throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
        }
        Cfor cfor = cforArr[0];
        if (!cnewM35454abstract.m35467import().mo330catch(cfor).equals(cnewM35454abstract2.m35467import())) {
            cfor = cforArr[1];
            if (!cnewM35454abstract.m35467import().mo330catch(cfor).equals(cnewM35454abstract2.m35467import())) {
                throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
            }
        }
        BigInteger bigIntegerM7903catch = th2Var.m7903catch();
        BigInteger[] bigIntegerArrM2857else = m2857else(bigIntegerM7903catch, bigInteger);
        BigInteger[] bigIntegerArr = {bigIntegerArrM2857else[2], bigIntegerArrM2857else[3].negate()};
        BigInteger[] bigIntegerArrM2859for = m2859for(new BigInteger[]{bigIntegerArrM2857else[0], bigIntegerArrM2857else[1].negate()}, new BigInteger[]{bigIntegerArrM2857else[4], bigIntegerArrM2857else[5].negate()});
        if (!m2854class(bigIntegerArrM2859for, bigIntegerM7903catch) && m2856do(bigIntegerArr[0], bigIntegerArr[1])) {
            BigInteger bigInteger2 = bigIntegerArr[0];
            BigInteger bigInteger3 = bigIntegerArr[1];
            BigInteger bigIntegerDivide = bigInteger2.add(bigInteger3.multiply(bigInteger)).divide(bigIntegerM7903catch);
            BigInteger[] bigIntegerArrM2852case = m2852case(new BigInteger[]{bigIntegerDivide.abs(), bigInteger3.abs()});
            if (bigIntegerArrM2852case != null) {
                BigInteger bigIntegerNegate = bigIntegerArrM2852case[0];
                BigInteger bigIntegerNegate2 = bigIntegerArrM2852case[1];
                if (bigIntegerDivide.signum() < 0) {
                    bigIntegerNegate = bigIntegerNegate.negate();
                }
                if (bigInteger3.signum() > 0) {
                    bigIntegerNegate2 = bigIntegerNegate2.negate();
                }
                BigInteger bigIntegerSubtract = bigIntegerDivide.multiply(bigIntegerNegate).subtract(bigInteger3.multiply(bigIntegerNegate2));
                BigInteger bigInteger4 = ECConstants.ONE;
                if (!bigIntegerSubtract.equals(bigInteger4)) {
                    throw new IllegalStateException();
                }
                BigInteger bigIntegerSubtract2 = bigIntegerNegate2.multiply(bigIntegerM7903catch).subtract(bigIntegerNegate.multiply(bigInteger));
                BigInteger bigIntegerNegate3 = bigIntegerNegate.negate();
                BigInteger bigIntegerNegate4 = bigIntegerSubtract2.negate();
                BigInteger bigIntegerAdd = m2855const(bigIntegerM7903catch.subtract(bigInteger4)).add(bigInteger4);
                BigInteger[] bigIntegerArrM2868this = m2868this(m2861if(bigIntegerNegate3, bigIntegerAdd, bigInteger3), m2861if(bigIntegerNegate4, bigIntegerAdd, bigInteger2));
                if (bigIntegerArrM2868this != null) {
                    for (BigInteger bigIntegerAdd2 = bigIntegerArrM2868this[0]; bigIntegerAdd2.compareTo(bigIntegerArrM2868this[1]) <= 0; bigIntegerAdd2 = bigIntegerAdd2.add(ECConstants.ONE)) {
                        BigInteger[] bigIntegerArr2 = {bigIntegerSubtract2.add(bigIntegerAdd2.multiply(bigInteger2)), bigIntegerNegate.add(bigIntegerAdd2.multiply(bigInteger3))};
                        if (m2853catch(bigIntegerArr2, bigIntegerArrM2859for)) {
                            bigIntegerArrM2859for = bigIntegerArr2;
                        }
                    }
                }
            }
        }
        BigInteger bigIntegerSubtract3 = bigIntegerArr[0].multiply(bigIntegerArrM2859for[1]).subtract(bigIntegerArr[1].multiply(bigIntegerArrM2859for[0]));
        int iBitLength = (bigIntegerM7903catch.bitLength() + 16) - (bigIntegerM7903catch.bitLength() & 7);
        BigInteger bigIntegerM2863native = m2863native(bigIntegerArrM2859for[1].shiftLeft(iBitLength), bigIntegerSubtract3);
        BigInteger bigIntegerNegate5 = m2863native(bigIntegerArr[1].shiftLeft(iBitLength), bigIntegerSubtract3).negate();
        m2862import("Beta", cfor.mo339static().toString(16));
        m2862import("Lambda", bigInteger.toString(16));
        m2862import("v1", "{ " + bigIntegerArr[0].toString(16) + ", " + bigIntegerArr[1].toString(16) + " }");
        m2862import("v2", "{ " + bigIntegerArrM2859for[0].toString(16) + ", " + bigIntegerArrM2859for[1].toString(16) + " }");
        m2862import("d", bigIntegerSubtract3.toString(16));
        m2862import("(OPT) g1", bigIntegerM2863native.toString(16));
        m2862import("(OPT) g2", bigIntegerNegate5.toString(16));
        m2862import("(OPT) bits", Integer.toString(iBitLength));
    }
}
