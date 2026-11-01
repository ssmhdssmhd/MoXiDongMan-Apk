package org.bouncycastle.crypto.tls;

import android.support.v4.a50;
import android.support.v4.e21;
import android.support.v4.e40;
import android.support.v4.h50;
import android.support.v4.hn0;
import android.support.v4.k50;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.q40;
import android.support.v4.r40;
import android.support.v4.th2;
import android.support.v4.u30;
import android.support.v4.vl;
import android.support.v4.x30;
import android.support.v4.y3;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: do, reason: not valid java name */
    public static final Integer f30746do = hn0.m3072for(10);

    /* renamed from: if, reason: not valid java name */
    public static final Integer f30748if = hn0.m3072for(11);

    /* renamed from: for, reason: not valid java name */
    private static final String[] f30747for = {"sect163k1", "sect163r1", "sect163r2", "sect193r1", "sect193r2", "sect233k1", "sect233r1", "sect239k1", "sect283k1", "sect283r1", "sect409k1", "sect409r1", "sect571k1", "sect571r1", "secp160k1", "secp160r1", "secp160r2", "secp192k1", "secp192r1", "secp224k1", "secp224r1", "secp256k1", "secp256r1", "secp384r1", "secp521r1", "brainpoolP256r1", "brainpoolP384r1", "brainpoolP512r1"};

    /* renamed from: abstract, reason: not valid java name */
    public static byte[] m34293abstract(short[] sArr, Cnew cnew) throws IOException {
        boolean zM34318public;
        short s;
        Cif cifM35477this = cnew.m35477this();
        if (Cdo.m35360final(cifM35477this)) {
            s = 1;
        } else {
            if (!Cdo.m35356class(cifM35477this)) {
                zM34318public = false;
                return cnew.m35459const(zM34318public);
            }
            s = 2;
        }
        zM34318public = m34318public(sArr, s);
        return cnew.m35459const(zM34318public);
    }

    /* renamed from: break, reason: not valid java name */
    public static Cnew m34294break(short[] sArr, Cif cif, byte[] bArr) throws IOException {
        if (bArr != null) {
            short s = 1;
            if (bArr.length >= 1) {
                byte b = bArr[0];
                if (b == 2 || b == 3) {
                    if (Cdo.m35356class(cif)) {
                        s = 2;
                    } else if (!Cdo.m35360final(cif)) {
                        throw new n72((short) 47);
                    }
                } else {
                    if (b != 4) {
                        throw new n72((short) 47);
                    }
                    s = 0;
                }
                if (s == 0 || (sArr != null && q3.m6388strictfp(sArr, s))) {
                    return cif.m35421class(bArr);
                }
                throw new n72((short) 47);
            }
        }
        throw new n72((short) 47);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m34295case(int[] iArr) {
        for (int i : iArr) {
            if (m34319return(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public static k50 m34296catch(short[] sArr, e40 e40Var, byte[] bArr) throws IOException {
        try {
            return new k50(m34294break(sArr, e40Var.m1646do(), bArr), e40Var);
        } catch (RuntimeException e) {
            throw new n72((short) 47, e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static y3 m34297class(SecureRandom secureRandom, e40 e40Var) {
        r40 r40Var = new r40();
        r40Var.init(new q40(e40Var, secureRandom));
        return r40Var.generateKeyPair();
    }

    /* renamed from: const, reason: not valid java name */
    public static h50 m34298const(SecureRandom secureRandom, short[] sArr, e40 e40Var, OutputStream outputStream) throws IOException {
        y3 y3VarM34297class = m34297class(secureRandom, e40Var);
        m34309implements(sArr, ((k50) y3VarM34297class.m9727if()).m4252for(), outputStream);
        return (h50) y3VarM34297class.m9726do();
    }

    /* renamed from: continue, reason: not valid java name */
    public static byte[] m34299continue(short[] sArr, k50 k50Var) throws IOException {
        return m34293abstract(sArr, k50Var.m4252for());
    }

    /* renamed from: default, reason: not valid java name */
    public static BigInteger m34300default(InputStream inputStream) throws IOException {
        return new BigInteger(1, l0.R(inputStream));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m34301do(Hashtable hashtable, int[] iArr) throws IOException {
        hashtable.put(f30746do, m34302else(iArr));
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m34302else(int[] iArr) throws IOException {
        if (iArr == null || iArr.length < 1) {
            throw new n72((short) 80);
        }
        return l0.m34180abstract(iArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static e40 m34303extends(int[] iArr, short[] sArr, InputStream inputStream) throws IOException {
        int iM34323switch;
        int iM34323switch2;
        BigInteger bigInteger;
        Cif.Ctry ctry;
        try {
            short sC0 = l0.c0(inputStream);
            if (sC0 == 1) {
                m34329try(iArr, 65281);
                BigInteger bigIntegerM34300default = m34300default(inputStream);
                BigInteger bigIntegerM34327throws = m34327throws(bigIntegerM34300default.bitLength(), inputStream);
                BigInteger bigIntegerM34327throws2 = m34327throws(bigIntegerM34300default.bitLength(), inputStream);
                byte[] bArrR = l0.R(inputStream);
                BigInteger bigIntegerM34300default2 = m34300default(inputStream);
                BigInteger bigIntegerM34300default3 = m34300default(inputStream);
                Cif.Ccase ccase = new Cif.Ccase(bigIntegerM34300default, bigIntegerM34327throws, bigIntegerM34327throws2, bigIntegerM34300default2, bigIntegerM34300default3);
                return new e40(ccase, m34294break(sArr, ccase, bArrR), bigIntegerM34300default2, bigIntegerM34300default3);
            }
            if (sC0 != 2) {
                if (sC0 != 3) {
                    throw new n72((short) 47);
                }
                int iT = l0.T(inputStream);
                if (!e21.m1634if(iT)) {
                    throw new n72((short) 47);
                }
                m34329try(iArr, iT);
                return m34326throw(iT);
            }
            m34329try(iArr, 65282);
            int iT2 = l0.T(inputStream);
            short sC02 = l0.c0(inputStream);
            if (!u30.m8225do(sC02)) {
                throw new n72((short) 47);
            }
            int iM34323switch3 = m34323switch(iT2, inputStream);
            if (sC02 == 2) {
                iM34323switch = m34323switch(iT2, inputStream);
                iM34323switch2 = m34323switch(iT2, inputStream);
            } else {
                iM34323switch = -1;
                iM34323switch2 = -1;
            }
            BigInteger bigIntegerM34327throws3 = m34327throws(iT2, inputStream);
            BigInteger bigIntegerM34327throws4 = m34327throws(iT2, inputStream);
            byte[] bArrR2 = l0.R(inputStream);
            BigInteger bigIntegerM34300default4 = m34300default(inputStream);
            BigInteger bigIntegerM34300default5 = m34300default(inputStream);
            if (sC02 == 2) {
                bigInteger = bigIntegerM34300default4;
                ctry = new Cif.Ctry(iT2, iM34323switch3, iM34323switch, iM34323switch2, bigIntegerM34327throws3, bigIntegerM34327throws4, bigIntegerM34300default4, bigIntegerM34300default5);
            } else {
                bigInteger = bigIntegerM34300default4;
                ctry = new Cif.Ctry(iT2, iM34323switch3, bigIntegerM34327throws3, bigIntegerM34327throws4, bigInteger, bigIntegerM34300default5);
            }
            return new e40(ctry, m34294break(sArr, ctry, bArrR2), bigInteger, bigIntegerM34300default5);
        } catch (RuntimeException e) {
            throw new n72((short) 47, e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static h50 m34304final(SecureRandom secureRandom, int[] iArr, short[] sArr, OutputStream outputStream) throws IOException {
        int i;
        if (iArr != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    i = -1;
                    break;
                }
                i = iArr[i2];
                if (e21.m1633do(i) && m34320static(i)) {
                    break;
                }
                i2++;
            }
        } else {
            i = 23;
        }
        e40 e40VarM34326throw = null;
        if (i >= 0) {
            e40VarM34326throw = m34326throw(i);
        } else if (q3.m6366continue(iArr, 65281)) {
            e40VarM34326throw = m34326throw(23);
        } else if (q3.m6366continue(iArr, 65282)) {
            e40VarM34326throw = m34326throw(10);
        }
        if (e40VarM34326throw == null) {
            throw new n72((short) 80);
        }
        if (i < 0) {
            m34311instanceof(sArr, e40VarM34326throw, outputStream);
        } else {
            m34324synchronized(i, outputStream);
        }
        return m34298const(secureRandom, sArr, e40VarM34326throw, outputStream);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int[] m34305finally(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        int iT = l0.T(byteArrayInputStream);
        if (iT < 2 || (iT & 1) != 0) {
            throw new n72((short) 50);
        }
        int[] iArrV = l0.V(iT / 2, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return iArrV;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m34306for(e40 e40Var, e40 e40Var2) {
        return e40Var != null && e40Var.equals(e40Var2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m34307goto(short[] sArr) throws IOException {
        if (sArr == null || !q3.m6388strictfp(sArr, (short) 0)) {
            sArr = q3.m6381new(sArr, (short) 0);
        }
        return l0.m34186continue(sArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m34308if(Hashtable hashtable, short[] sArr) throws IOException {
        hashtable.put(f30748if, m34307goto(sArr));
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m34309implements(short[] sArr, Cnew cnew, OutputStream outputStream) throws IOException {
        l0.q0(m34293abstract(sArr, cnew), outputStream);
    }

    /* renamed from: import, reason: not valid java name */
    public static short[] m34310import(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30748if);
        if (bArrB == null) {
            return null;
        }
        return m34315package(bArrB);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m34311instanceof(short[] sArr, e40 e40Var, OutputStream outputStream) throws IOException {
        int i;
        Cif cifM1646do = e40Var.m1646do();
        if (Cdo.m35360final(cifM1646do)) {
            l0.H0((short) 1, outputStream);
            m34328transient(cifM1646do.m35440static().getCharacteristic(), outputStream);
        } else {
            if (!Cdo.m35356class(cifM1646do)) {
                throw new IllegalArgumentException("'ecParameters' not a known curve type");
            }
            int[] exponentsPresent = ((PolynomialExtensionField) cifM1646do.m35440static()).getMinimalPolynomial().getExponentsPresent();
            l0.H0((short) 2, outputStream);
            int i2 = exponentsPresent[exponentsPresent.length - 1];
            l0.m34181break(i2);
            l0.r0(i2, outputStream);
            if (exponentsPresent.length == 3) {
                l0.H0((short) 1, outputStream);
                i = exponentsPresent[1];
            } else {
                if (exponentsPresent.length != 5) {
                    throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
                }
                l0.H0((short) 2, outputStream);
                m34330volatile(exponentsPresent[1], outputStream);
                m34330volatile(exponentsPresent[2], outputStream);
                i = exponentsPresent[3];
            }
            m34330volatile(i, outputStream);
        }
        m34317protected(cifM1646do.m35443throw(), outputStream);
        m34317protected(cifM1646do.m35432import(), outputStream);
        l0.q0(m34293abstract(sArr, e40Var.m1648if()), outputStream);
        m34328transient(e40Var.m1650try(), outputStream);
        m34328transient(e40Var.m1647for(), outputStream);
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m34312interface(int i, BigInteger bigInteger, OutputStream outputStream) throws IOException {
        l0.q0(m34316private(i, bigInteger), outputStream);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m34313native() {
        return f30747for.length > 0;
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m34314new(k50 k50Var, h50 h50Var) {
        x30 x30Var = new x30();
        x30Var.init(h50Var);
        return org.bouncycastle.util.Cdo.m36309do(x30Var.getFieldSize(), x30Var.calculateAgreement(k50Var));
    }

    /* renamed from: package, reason: not valid java name */
    public static short[] m34315package(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        short sC0 = l0.c0(byteArrayInputStream);
        if (sC0 < 1) {
            throw new n72((short) 50);
        }
        short[] sArrE0 = l0.e0(sC0, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        if (q3.m6388strictfp(sArrE0, (short) 0)) {
            return sArrE0;
        }
        throw new n72((short) 47);
    }

    /* renamed from: private, reason: not valid java name */
    public static byte[] m34316private(int i, BigInteger bigInteger) throws IOException {
        return org.bouncycastle.util.Cdo.m36309do((i + 7) / 8, bigInteger);
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m34317protected(Cfor cfor, OutputStream outputStream) throws IOException {
        l0.q0(cfor.m35379try(), outputStream);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m34318public(short[] sArr, short s) {
        short s2;
        if (sArr == null) {
            return false;
        }
        for (int i = 0; i < sArr.length && (s2 = sArr[i]) != 0; i++) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m34319return(int i) {
        if (i == 52396) {
            return true;
        }
        switch (i) {
            case vl.R /* 49153 */:
            case vl.S /* 49154 */:
            case vl.T /* 49155 */:
            case vl.U /* 49156 */:
            case vl.V /* 49157 */:
            case vl.W /* 49158 */:
            case vl.X /* 49159 */:
            case vl.Y /* 49160 */:
            case vl.Z /* 49161 */:
            case vl.a0 /* 49162 */:
            case vl.b0 /* 49163 */:
            case vl.c0 /* 49164 */:
            case vl.d0 /* 49165 */:
            case vl.e0 /* 49166 */:
            case vl.f0 /* 49167 */:
            case vl.g0 /* 49168 */:
            case vl.h0 /* 49169 */:
            case vl.i0 /* 49170 */:
            case vl.j0 /* 49171 */:
            case vl.k0 /* 49172 */:
            case vl.l0 /* 49173 */:
            case vl.m0 /* 49174 */:
            case vl.n0 /* 49175 */:
            case vl.o0 /* 49176 */:
            case vl.p0 /* 49177 */:
                return true;
            default:
                switch (i) {
                    case vl.b1 /* 49187 */:
                    case vl.c1 /* 49188 */:
                    case vl.d1 /* 49189 */:
                    case vl.e1 /* 49190 */:
                    case vl.f1 /* 49191 */:
                    case vl.g1 /* 49192 */:
                    case vl.h1 /* 49193 */:
                    case vl.i1 /* 49194 */:
                    case vl.j1 /* 49195 */:
                    case vl.k1 /* 49196 */:
                    case vl.l1 /* 49197 */:
                    case vl.m1 /* 49198 */:
                    case vl.n1 /* 49199 */:
                    case vl.o1 /* 49200 */:
                    case vl.p1 /* 49201 */:
                    case vl.q1 /* 49202 */:
                    case vl.J1 /* 49203 */:
                    case vl.K1 /* 49204 */:
                    case vl.L1 /* 49205 */:
                    case vl.M1 /* 49206 */:
                    case vl.N1 /* 49207 */:
                    case vl.O1 /* 49208 */:
                    case vl.P1 /* 49209 */:
                    case vl.Q1 /* 49210 */:
                    case vl.R1 /* 49211 */:
                        return true;
                    default:
                        switch (i) {
                            case vl.T1 /* 49266 */:
                            case vl.U1 /* 49267 */:
                            case vl.V1 /* 49268 */:
                            case vl.W1 /* 49269 */:
                            case vl.X1 /* 49270 */:
                            case vl.Y1 /* 49271 */:
                            case vl.Z1 /* 49272 */:
                            case vl.a2 /* 49273 */:
                                return true;
                            default:
                                switch (i) {
                                    case vl.n2 /* 49286 */:
                                    case vl.o2 /* 49287 */:
                                    case vl.p2 /* 49288 */:
                                    case vl.q2 /* 49289 */:
                                    case vl.r2 /* 49290 */:
                                    case vl.s2 /* 49291 */:
                                    case vl.t2 /* 49292 */:
                                    case vl.u2 /* 49293 */:
                                        return true;
                                    default:
                                        switch (i) {
                                            case vl.H2 /* 49306 */:
                                            case vl.I2 /* 49307 */:
                                                return true;
                                            default:
                                                switch (i) {
                                                    case vl.Z2 /* 49324 */:
                                                    case vl.a3 /* 49325 */:
                                                    case vl.b3 /* 49326 */:
                                                    case vl.c3 /* 49327 */:
                                                        return true;
                                                    default:
                                                        switch (i) {
                                                            case vl.e3 /* 52392 */:
                                                            case vl.f3 /* 52393 */:
                                                                return true;
                                                            default:
                                                                switch (i) {
                                                                    case 65282:
                                                                    case vl.o3 /* 65283 */:
                                                                    case vl.p3 /* 65284 */:
                                                                    case vl.q3 /* 65285 */:
                                                                        return true;
                                                                    default:
                                                                        switch (i) {
                                                                            case vl.v3 /* 65300 */:
                                                                            case vl.w3 /* 65301 */:
                                                                                return true;
                                                                            default:
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

    /* renamed from: static, reason: not valid java name */
    public static boolean m34320static(int i) {
        return i > 0 && i <= f30747for.length;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static k50 m34321strictfp(k50 k50Var) throws IOException {
        return k50Var;
    }

    /* renamed from: super, reason: not valid java name */
    public static String m34322super(int i) {
        if (m34320static(i)) {
            return f30747for[i - 1];
        }
        return null;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m34323switch(int i, InputStream inputStream) throws IOException {
        int iIntValue;
        BigInteger bigIntegerM34300default = m34300default(inputStream);
        if (bigIntegerM34300default.bitLength() >= 32 || (iIntValue = bigIntegerM34300default.intValue()) <= 0 || iIntValue >= i) {
            throw new n72((short) 47);
        }
        return iIntValue;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m34324synchronized(int i, OutputStream outputStream) throws IOException {
        if (!e21.m1634if(i)) {
            throw new n72((short) 80);
        }
        l0.H0((short) 3, outputStream);
        l0.m34181break(i);
        l0.r0(i, outputStream);
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger m34325this(int i, byte[] bArr) throws IOException {
        if (bArr.length == (i + 7) / 8) {
            return new BigInteger(1, bArr);
        }
        throw new n72((short) 50);
    }

    /* renamed from: throw, reason: not valid java name */
    public static e40 m34326throw(int i) {
        String strM34322super = m34322super(i);
        if (strM34322super == null) {
            return null;
        }
        th2 th2VarM33363goto = org.bouncycastle.crypto.ec.Cdo.m33363goto(strM34322super);
        if (th2VarM33363goto == null && (th2VarM33363goto = a50.m45for(strM34322super)) == null) {
            return null;
        }
        return new e40(th2VarM33363goto.m7909try(), th2VarM33363goto.m7906goto(), th2VarM33363goto.m7903catch(), th2VarM33363goto.m7908this(), th2VarM33363goto.m7904class());
    }

    /* renamed from: throws, reason: not valid java name */
    public static BigInteger m34327throws(int i, InputStream inputStream) throws IOException {
        return m34325this(i, l0.R(inputStream));
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m34328transient(BigInteger bigInteger, OutputStream outputStream) throws IOException {
        l0.q0(org.bouncycastle.util.Cdo.m36313if(bigInteger), outputStream);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m34329try(int[] iArr, int i) throws IOException {
        if (iArr != null && !q3.m6366continue(iArr, i)) {
            throw new n72((short) 47);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m34330volatile(int i, OutputStream outputStream) throws IOException {
        m34328transient(BigInteger.valueOf(i), outputStream);
    }

    /* renamed from: while, reason: not valid java name */
    public static int[] m34331while(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30746do);
        if (bArrB == null) {
            return null;
        }
        return m34305finally(bArrB);
    }
}
