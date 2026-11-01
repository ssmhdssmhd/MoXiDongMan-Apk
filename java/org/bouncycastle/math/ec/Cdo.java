package org.bouncycastle.math.ec;

import android.support.v4.ff2;
import android.support.v4.t3;
import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* renamed from: org.bouncycastle.math.ec.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {
    /* renamed from: break, reason: not valid java name */
    public static Cnew m35353break(Cnew[] cnewArr, BigInteger[] bigIntegerArr, GLVEndomorphism gLVEndomorphism) {
        BigInteger bigIntegerM35426extends = cnewArr[0].m35477this().m35426extends();
        int length = cnewArr.length;
        int i = length << 1;
        BigInteger[] bigIntegerArr2 = new BigInteger[i];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            BigInteger[] bigIntegerArrDecomposeScalar = gLVEndomorphism.decomposeScalar(bigIntegerArr[i3].mod(bigIntegerM35426extends));
            int i4 = i2 + 1;
            bigIntegerArr2[i2] = bigIntegerArrDecomposeScalar[0];
            i2 = i4 + 1;
            bigIntegerArr2[i4] = bigIntegerArrDecomposeScalar[1];
        }
        ECPointMap pointMap = gLVEndomorphism.getPointMap();
        if (gLVEndomorphism.hasEfficientPointMap()) {
            return m35359else(cnewArr, pointMap, bigIntegerArr2);
        }
        Cnew[] cnewArr2 = new Cnew[i];
        int i5 = 0;
        for (Cnew cnew : cnewArr) {
            Cnew map = pointMap.map(cnew);
            int i6 = i5 + 1;
            cnewArr2[i5] = cnew;
            i5 = i6 + 1;
            cnewArr2[i6] = map;
        }
        return m35362goto(cnewArr2, bigIntegerArr2);
    }

    /* renamed from: case, reason: not valid java name */
    private static Cnew m35354case(Cnew[] cnewArr, Cnew[] cnewArr2, byte[] bArr, Cnew[] cnewArr3, Cnew[] cnewArr4, byte[] bArr2) {
        Cnew cnewMo373do;
        int iMax = Math.max(bArr.length, bArr2.length);
        Cnew cnewMo35335throws = cnewArr[0].m35477this().mo35335throws();
        int i = iMax - 1;
        Cnew cnewA = cnewMo35335throws;
        int i2 = 0;
        while (i >= 0) {
            byte b = i < bArr.length ? bArr[i] : (byte) 0;
            byte b2 = i < bArr2.length ? bArr2[i] : (byte) 0;
            if ((b | b2) == 0) {
                i2++;
            } else {
                if (b != 0) {
                    cnewMo373do = cnewMo35335throws.mo373do((b < 0 ? cnewArr2 : cnewArr)[Math.abs((int) b) >>> 1]);
                } else {
                    cnewMo373do = cnewMo35335throws;
                }
                if (b2 != 0) {
                    cnewMo373do = cnewMo373do.mo373do((b2 < 0 ? cnewArr4 : cnewArr3)[Math.abs((int) b2) >>> 1]);
                }
                if (i2 > 0) {
                    cnewA = cnewA.mo35468instanceof(i2);
                    i2 = 0;
                }
                cnewA = cnewA.a(cnewMo373do);
            }
            i--;
        }
        return i2 > 0 ? cnewA.mo35468instanceof(i2) : cnewA;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cnew m35355catch(Cif cif, Cnew cnew) {
        if (cif.m35427final(cnew.m35477this())) {
            return cif.mo35435package(cnew);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m35356class(Cif cif) {
        return m35357const(cif.m35440static());
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m35357const(FiniteField finiteField) {
        return finiteField.getDimension() > 1 && finiteField.getCharacteristic().equals(ECConstants.TWO) && (finiteField instanceof PolynomialExtensionField);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cnew m35358do(Cif cif, Cnew cnew) {
        if (cif.m35427final(cnew.m35477this())) {
            return cif.m35421class(cnew.m35459const(false));
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    /* renamed from: else, reason: not valid java name */
    public static Cnew m35359else(Cnew[] cnewArr, ECPointMap eCPointMap, BigInteger[] bigIntegerArr) {
        int length = cnewArr.length;
        int i = length << 1;
        boolean[] zArr = new boolean[i];
        ff2[] ff2VarArr = new ff2[i];
        byte[][] bArr = new byte[i][];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 << 1;
            int i4 = i3 + 1;
            BigInteger bigInteger = bigIntegerArr[i3];
            zArr[i3] = bigInteger.signum() < 0;
            BigInteger bigIntegerAbs = bigInteger.abs();
            BigInteger bigInteger2 = bigIntegerArr[i4];
            zArr[i4] = bigInteger2.signum() < 0;
            BigInteger bigIntegerAbs2 = bigInteger2.abs();
            int iMax = Math.max(2, Math.min(16, Cclass.m35310catch(Math.max(bigIntegerAbs.bitLength(), bigIntegerAbs2.bitLength()))));
            Cnew cnew = cnewArr[i2];
            Cnew cnewM35312const = Cclass.m35312const(cnew, iMax, true, eCPointMap);
            ff2VarArr[i3] = Cclass.m35321this(cnew);
            ff2VarArr[i4] = Cclass.m35321this(cnewM35312const);
            bArr[i3] = Cclass.m35314else(iMax, bigIntegerAbs);
            bArr[i4] = Cclass.m35314else(iMax, bigIntegerAbs2);
        }
        return m35371this(zArr, ff2VarArr, bArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m35360final(Cif cif) {
        return m35370super(cif.m35440static());
    }

    /* renamed from: for, reason: not valid java name */
    public static Cnew m35361for(Cnew cnew, BigInteger bigInteger, Cnew cnew2, BigInteger bigInteger2) {
        Cif cifM35477this = cnew.m35477this();
        Cnew cnewMo35335throws = cifM35477this.mo35335throws();
        Cnew[] cnewArr = {cnew2, cnew.mo35480transient(cnew2), cnew, cnew.mo373do(cnew2)};
        cifM35477this.m35420abstract(cnewArr);
        Cnew[] cnewArr2 = {cnewArr[3].mo377private(), cnewArr[2].mo377private(), cnewArr[1].mo377private(), cnewArr[0].mo377private(), cnewMo35335throws, cnewArr[0], cnewArr[1], cnewArr[2], cnewArr[3]};
        byte[] bArrM35323try = Cclass.m35323try(bigInteger, bigInteger2);
        int length = bArrM35323try.length;
        while (true) {
            length--;
            if (length < 0) {
                return cnewMo35335throws;
            }
            byte b = bArrM35323try[length];
            cnewMo35335throws = cnewMo35335throws.a(cnewArr2[(((b << t3.f6397package) >> 28) * 3) + 4 + ((b << t3.f6403strictfp) >> 28)]);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cnew m35362goto(Cnew[] cnewArr, BigInteger[] bigIntegerArr) {
        int length = cnewArr.length;
        boolean[] zArr = new boolean[length];
        ff2[] ff2VarArr = new ff2[length];
        byte[][] bArr = new byte[length][];
        for (int i = 0; i < length; i++) {
            BigInteger bigInteger = bigIntegerArr[i];
            zArr[i] = bigInteger.signum() < 0;
            BigInteger bigIntegerAbs = bigInteger.abs();
            int iMax = Math.max(2, Math.min(16, Cclass.m35310catch(bigIntegerAbs.bitLength())));
            ff2VarArr[i] = Cclass.m35315final(cnewArr[i], iMax, true);
            bArr[i] = Cclass.m35314else(iMax, bigIntegerAbs);
        }
        return m35371this(zArr, ff2VarArr, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cnew m35363if(Cnew cnew) {
        if (cnew.m35464finally()) {
            return cnew;
        }
        throw new IllegalStateException("Invalid result");
    }

    /* renamed from: import, reason: not valid java name */
    public static Cnew m35364import(Cnew cnew, BigInteger bigInteger) {
        BigInteger bigIntegerAbs = bigInteger.abs();
        Cnew cnewMo35335throws = cnew.m35477this().mo35335throws();
        int iBitLength = bigIntegerAbs.bitLength();
        if (iBitLength > 0) {
            if (bigIntegerAbs.testBit(0)) {
                cnewMo35335throws = cnew;
            }
            for (int i = 1; i < iBitLength; i++) {
                cnew = cnew.mo378synchronized();
                if (bigIntegerAbs.testBit(i)) {
                    cnewMo35335throws = cnewMo35335throws.mo373do(cnew);
                }
            }
        }
        return bigInteger.signum() < 0 ? cnewMo35335throws.mo377private() : cnewMo35335throws;
    }

    /* renamed from: native, reason: not valid java name */
    public static Cnew m35365native(Cnew cnew, BigInteger bigInteger, Cnew cnew2, BigInteger bigInteger2) {
        return m35363if(m35361for(cnew, bigInteger, m35355catch(cnew.m35477this(), cnew2), bigInteger2));
    }

    /* renamed from: new, reason: not valid java name */
    public static Cnew m35366new(Cnew cnew, BigInteger bigInteger, Cnew cnew2, BigInteger bigInteger2) {
        boolean z = bigInteger.signum() < 0;
        boolean z2 = bigInteger2.signum() < 0;
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        int iMax = Math.max(2, Math.min(16, Cclass.m35310catch(bigIntegerAbs.bitLength())));
        int iMax2 = Math.max(2, Math.min(16, Cclass.m35310catch(bigIntegerAbs2.bitLength())));
        ff2 ff2VarM35315final = Cclass.m35315final(cnew, iMax, true);
        ff2 ff2VarM35315final2 = Cclass.m35315final(cnew2, iMax2, true);
        return m35354case(z ? ff2VarM35315final.m2271if() : ff2VarM35315final.m2269do(), z ? ff2VarM35315final.m2269do() : ff2VarM35315final.m2271if(), Cclass.m35314else(iMax, bigIntegerAbs), z2 ? ff2VarM35315final2.m2271if() : ff2VarM35315final2.m2269do(), z2 ? ff2VarM35315final2.m2269do() : ff2VarM35315final2.m2271if(), Cclass.m35314else(iMax2, bigIntegerAbs2));
    }

    /* renamed from: public, reason: not valid java name */
    public static Cnew m35367public(Cnew[] cnewArr, BigInteger[] bigIntegerArr) {
        if (cnewArr != null && bigIntegerArr != null && cnewArr.length == bigIntegerArr.length) {
            if (cnewArr.length >= 1) {
                int length = cnewArr.length;
                if (length == 1) {
                    return cnewArr[0].m35470package(bigIntegerArr[0]);
                }
                if (length == 2) {
                    return m35368return(cnewArr[0], bigIntegerArr[0], cnewArr[1], bigIntegerArr[1]);
                }
                Cnew cnew = cnewArr[0];
                Cif cifM35477this = cnew.m35477this();
                Cnew[] cnewArr2 = new Cnew[length];
                cnewArr2[0] = cnew;
                for (int i = 1; i < length; i++) {
                    cnewArr2[i] = m35355catch(cifM35477this, cnewArr[i]);
                }
                ECEndomorphism eCEndomorphismM35439return = cifM35477this.m35439return();
                return eCEndomorphismM35439return instanceof GLVEndomorphism ? m35363if(m35353break(cnewArr2, bigIntegerArr, (GLVEndomorphism) eCEndomorphismM35439return)) : m35363if(m35362goto(cnewArr2, bigIntegerArr));
            }
        }
        throw new IllegalArgumentException("point and scalar arrays should be non-null, and of equal, non-zero, length");
    }

    /* renamed from: return, reason: not valid java name */
    public static Cnew m35368return(Cnew cnew, BigInteger bigInteger, Cnew cnew2, BigInteger bigInteger2) {
        Cnew cnewM35353break;
        Cif cifM35477this = cnew.m35477this();
        Cnew cnewM35355catch = m35355catch(cifM35477this, cnew2);
        if ((cifM35477this instanceof Cif.AbstractC0462if) && ((Cif.AbstractC0462if) cifM35477this).mo35339synchronized()) {
            cnewM35353break = cnew.m35470package(bigInteger).mo373do(cnewM35355catch.m35470package(bigInteger2));
        } else {
            ECEndomorphism eCEndomorphismM35439return = cifM35477this.m35439return();
            cnewM35353break = eCEndomorphismM35439return instanceof GLVEndomorphism ? m35353break(new Cnew[]{cnew, cnewM35355catch}, new BigInteger[]{bigInteger, bigInteger2}, (GLVEndomorphism) eCEndomorphismM35439return) : m35366new(cnew, bigInteger, cnewM35355catch, bigInteger2);
        }
        return m35363if(cnewM35353break);
    }

    /* renamed from: static, reason: not valid java name */
    public static Cnew m35369static(Cnew cnew) {
        if (cnew.m35463extends()) {
            return cnew;
        }
        throw new IllegalStateException("Invalid point");
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m35370super(FiniteField finiteField) {
        return finiteField.getDimension() == 1;
    }

    /* renamed from: this, reason: not valid java name */
    private static Cnew m35371this(boolean[] zArr, ff2[] ff2VarArr, byte[][] bArr) {
        int length = bArr.length;
        int iMax = 0;
        for (byte[] bArr2 : bArr) {
            iMax = Math.max(iMax, bArr2.length);
        }
        Cnew cnewMo35335throws = ff2VarArr[0].m2269do()[0].m35477this().mo35335throws();
        int i = iMax - 1;
        Cnew cnewA = cnewMo35335throws;
        int i2 = 0;
        while (i >= 0) {
            Cnew cnewMo373do = cnewMo35335throws;
            for (int i3 = 0; i3 < length; i3++) {
                byte[] bArr3 = bArr[i3];
                byte b = i < bArr3.length ? bArr3[i] : (byte) 0;
                if (b != 0) {
                    int iAbs = Math.abs((int) b);
                    ff2 ff2Var = ff2VarArr[i3];
                    cnewMo373do = cnewMo373do.mo373do(((b < 0) == zArr[i3] ? ff2Var.m2269do() : ff2Var.m2271if())[iAbs >>> 1]);
                }
            }
            if (cnewMo373do == cnewMo35335throws) {
                i2++;
            } else {
                if (i2 > 0) {
                    cnewA = cnewA.mo35468instanceof(i2);
                    i2 = 0;
                }
                cnewA = cnewA.a(cnewMo373do);
            }
            i--;
        }
        return i2 > 0 ? cnewA.mo35468instanceof(i2) : cnewA;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m35372throw(Cfor[] cforArr, int i, int i2) {
        m35374while(cforArr, i, i2, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cnew m35373try(Cnew cnew, BigInteger bigInteger, ECPointMap eCPointMap, BigInteger bigInteger2) {
        boolean z = bigInteger.signum() < 0;
        boolean z2 = bigInteger2.signum() < 0;
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        int iMax = Math.max(2, Math.min(16, Cclass.m35310catch(Math.max(bigIntegerAbs.bitLength(), bigIntegerAbs2.bitLength()))));
        Cnew cnewM35312const = Cclass.m35312const(cnew, iMax, true, eCPointMap);
        ff2 ff2VarM35321this = Cclass.m35321this(cnew);
        ff2 ff2VarM35321this2 = Cclass.m35321this(cnewM35312const);
        return m35354case(z ? ff2VarM35321this.m2271if() : ff2VarM35321this.m2269do(), z ? ff2VarM35321this.m2269do() : ff2VarM35321this.m2271if(), Cclass.m35314else(iMax, bigIntegerAbs), z2 ? ff2VarM35321this2.m2271if() : ff2VarM35321this2.m2269do(), z2 ? ff2VarM35321this2.m2269do() : ff2VarM35321this2.m2271if(), Cclass.m35314else(iMax, bigIntegerAbs2));
    }

    /* renamed from: while, reason: not valid java name */
    public static void m35374while(Cfor[] cforArr, int i, int i2, Cfor cfor) {
        Cfor[] cforArr2 = new Cfor[i2];
        int i3 = 0;
        cforArr2[0] = cforArr[i];
        while (true) {
            i3++;
            if (i3 >= i2) {
                break;
            } else {
                cforArr2[i3] = cforArr2[i3 - 1].mo330catch(cforArr[i + i3]);
            }
        }
        int i4 = i3 - 1;
        if (cfor != null) {
            cforArr2[i4] = cforArr2[i4].mo330catch(cfor);
        }
        Cfor cforMo334goto = cforArr2[i4].mo334goto();
        while (i4 > 0) {
            int i5 = i4 - 1;
            int i6 = i4 + i;
            Cfor cfor2 = cforArr[i6];
            cforArr[i6] = cforArr2[i5].mo330catch(cforMo334goto);
            cforMo334goto = cforMo334goto.mo330catch(cfor2);
            i4 = i5;
        }
        cforArr[i] = cforMo334goto;
    }
}
