package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.math.Cdo;

/* loaded from: classes3.dex */
public class v11 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private u11 f7035do;

    /* renamed from: if, reason: not valid java name */
    private static int[] f7034if = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, Cdo.f31781do, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, TypedValues.Attributes.TYPE_EASING, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, l80.f3561break, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557};

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f7033for = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private static Vector m8720do(int i) {
        Vector vector = new Vector(i);
        for (int i2 = 0; i2 != i; i2++) {
            vector.addElement(BigInteger.valueOf(f7034if[i2]));
        }
        return vector;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m8721for(SecureRandom secureRandom, int i) {
        int iNextInt;
        int i2;
        if (((-i) & i) == i) {
            return (int) ((i * (secureRandom.nextInt() & Integer.MAX_VALUE)) >> 31);
        }
        do {
            iNextInt = secureRandom.nextInt() & Integer.MAX_VALUE;
            i2 = iNextInt % i;
        } while ((iNextInt - i2) + (i - 1) < 0);
        return i2;
    }

    /* renamed from: if, reason: not valid java name */
    private static BigInteger m8722if(int i, int i2, SecureRandom secureRandom) throws IllegalArgumentException {
        BigInteger bigIntegerM36308case;
        do {
            bigIntegerM36308case = org.bouncycastle.util.Cdo.m36308case(i, i2, secureRandom);
        } while (bigIntegerM36308case.bitLength() != i);
        return bigIntegerM36308case;
    }

    /* renamed from: new, reason: not valid java name */
    private static Vector m8723new(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i = 0; i < vector.size(); i++) {
            vector3.addElement(vector.elementAt(i));
        }
        vector2.addElement(vector3.elementAt(0));
        while (true) {
            vector3.removeElementAt(0);
            if (vector3.size() == 0) {
                return vector2;
            }
            vector2.insertElementAt(vector3.elementAt(0), m8721for(secureRandom, vector2.size() + 1));
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() throws IllegalArgumentException {
        long j;
        BigInteger bigIntegerM8722if;
        BigInteger bigIntegerAdd;
        BigInteger bigIntegerM8722if2;
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigIntegerAdd2;
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        BigInteger bigInteger5;
        BigInteger bigInteger6;
        BigInteger bigIntegerMod;
        boolean z;
        BigInteger bigInteger7;
        BigInteger bigInteger8;
        int i;
        PrintStream printStream;
        StringBuilder sb;
        String str;
        long j2;
        BigInteger bigIntegerM36308case;
        int i2;
        int iM1498if = this.f7035do.m1498if();
        SecureRandom secureRandomM1497do = this.f7035do.m1497do();
        int iM8183for = this.f7035do.m8183for();
        boolean zM8185try = this.f7035do.m8185try();
        if (zM8185try) {
            System.out.println("Fetching first " + this.f7035do.m8184new() + " primes.");
        }
        Vector vectorM8723new = m8723new(m8720do(this.f7035do.m8184new()), secureRandomM1497do);
        BigInteger bigIntegerMultiply = f7033for;
        BigInteger bigIntegerMultiply2 = bigIntegerMultiply;
        for (int i3 = 0; i3 < vectorM8723new.size() / 2; i3++) {
            bigIntegerMultiply2 = bigIntegerMultiply2.multiply((BigInteger) vectorM8723new.elementAt(i3));
        }
        for (int size = vectorM8723new.size() / 2; size < vectorM8723new.size(); size++) {
            bigIntegerMultiply = bigIntegerMultiply.multiply((BigInteger) vectorM8723new.elementAt(size));
        }
        BigInteger bigIntegerMultiply3 = bigIntegerMultiply2.multiply(bigIntegerMultiply);
        int iBitLength = (((iM1498if - bigIntegerMultiply3.bitLength()) - 48) / 2) + 1;
        BigInteger bigIntegerM8722if3 = m8722if(iBitLength, iM8183for, secureRandomM1497do);
        BigInteger bigIntegerM8722if4 = m8722if(iBitLength, iM8183for, secureRandomM1497do);
        if (zM8185try) {
            System.out.println("generating p and q");
        }
        BigInteger bigIntegerShiftLeft = bigIntegerM8722if3.multiply(bigIntegerMultiply2).shiftLeft(1);
        BigInteger bigIntegerShiftLeft2 = bigIntegerM8722if4.multiply(bigIntegerMultiply).shiftLeft(1);
        long j3 = 0;
        while (true) {
            j = j3 + 1;
            bigIntegerM8722if = m8722if(24, iM8183for, secureRandomM1497do);
            bigIntegerAdd = bigIntegerM8722if.multiply(bigIntegerShiftLeft).add(f7033for);
            if (bigIntegerAdd.isProbablePrime(iM8183for)) {
                while (true) {
                    do {
                        bigIntegerM8722if2 = m8722if(24, iM8183for, secureRandomM1497do);
                    } while (bigIntegerM8722if.equals(bigIntegerM8722if2));
                    BigInteger bigIntegerMultiply4 = bigIntegerM8722if2.multiply(bigIntegerShiftLeft2);
                    bigInteger = bigIntegerShiftLeft2;
                    bigInteger2 = f7033for;
                    bigIntegerAdd2 = bigIntegerMultiply4.add(bigInteger2);
                    if (bigIntegerAdd2.isProbablePrime(iM8183for)) {
                        break;
                    }
                    bigIntegerShiftLeft2 = bigInteger;
                }
                bigInteger3 = bigIntegerShiftLeft;
                if (!bigIntegerMultiply3.gcd(bigIntegerM8722if.multiply(bigIntegerM8722if2)).equals(bigInteger2)) {
                    continue;
                } else {
                    if (bigIntegerAdd.multiply(bigIntegerAdd2).bitLength() >= iM1498if) {
                        break;
                    }
                    if (zM8185try) {
                        System.out.println("key size too small. Should be " + iM1498if + " but is actually " + bigIntegerAdd.multiply(bigIntegerAdd2).bitLength());
                    }
                }
            } else {
                bigInteger = bigIntegerShiftLeft2;
                bigInteger3 = bigIntegerShiftLeft;
            }
            j3 = j;
            bigIntegerShiftLeft2 = bigInteger;
            bigIntegerShiftLeft = bigInteger3;
        }
        BigInteger bigInteger9 = bigIntegerM8722if4;
        if (zM8185try) {
            bigInteger4 = bigIntegerM8722if3;
            System.out.println("needed " + j + " tries to generate p and q.");
        } else {
            bigInteger4 = bigIntegerM8722if3;
        }
        BigInteger bigIntegerMultiply5 = bigIntegerAdd.multiply(bigIntegerAdd2);
        BigInteger bigIntegerMultiply6 = bigIntegerAdd.subtract(bigInteger2).multiply(bigIntegerAdd2.subtract(bigInteger2));
        if (zM8185try) {
            System.out.println("generating g");
        }
        long j4 = 0;
        while (true) {
            Vector vector = new Vector();
            bigInteger5 = bigIntegerAdd;
            bigInteger6 = bigIntegerAdd2;
            int i4 = 0;
            while (i4 != vectorM8723new.size()) {
                BigInteger bigIntegerDivide = bigIntegerMultiply6.divide((BigInteger) vectorM8723new.elementAt(i4));
                while (true) {
                    j2 = j4 + 1;
                    bigIntegerM36308case = org.bouncycastle.util.Cdo.m36308case(iM1498if, iM8183for, secureRandomM1497do);
                    i2 = iM1498if;
                    if (bigIntegerM36308case.modPow(bigIntegerDivide, bigIntegerMultiply5).equals(f7033for)) {
                        j4 = j2;
                        iM1498if = i2;
                    }
                }
                vector.addElement(bigIntegerM36308case);
                i4++;
                j4 = j2;
                iM1498if = i2;
            }
            int i5 = iM1498if;
            bigIntegerMod = f7033for;
            int i6 = 0;
            while (i6 < vectorM8723new.size()) {
                bigIntegerMod = bigIntegerMod.multiply(((BigInteger) vector.elementAt(i6)).modPow(bigIntegerMultiply3.divide((BigInteger) vectorM8723new.elementAt(i6)), bigIntegerMultiply5)).mod(bigIntegerMultiply5);
                i6++;
                secureRandomM1497do = secureRandomM1497do;
            }
            SecureRandom secureRandom = secureRandomM1497do;
            int i7 = 0;
            while (true) {
                if (i7 >= vectorM8723new.size()) {
                    z = false;
                    break;
                }
                if (bigIntegerMod.modPow(bigIntegerMultiply6.divide((BigInteger) vectorM8723new.elementAt(i7)), bigIntegerMultiply5).equals(f7033for)) {
                    if (zM8185try) {
                        System.out.println("g has order phi(n)/" + vectorM8723new.elementAt(i7) + "\n g: " + bigIntegerMod);
                    }
                    z = true;
                } else {
                    i7++;
                }
            }
            if (z) {
                bigInteger8 = bigInteger9;
                bigInteger7 = bigInteger4;
                i = iM8183for;
            } else {
                BigInteger bigIntegerModPow = bigIntegerMod.modPow(bigIntegerMultiply6.divide(BigInteger.valueOf(4L)), bigIntegerMultiply5);
                BigInteger bigInteger10 = f7033for;
                if (bigIntegerModPow.equals(bigInteger10)) {
                    if (zM8185try) {
                        printStream = System.out;
                        sb = new StringBuilder();
                        str = "g has order phi(n)/4\n g:";
                        sb.append(str);
                        sb.append(bigIntegerMod);
                        printStream.println(sb.toString());
                    }
                    bigInteger8 = bigInteger9;
                    bigInteger7 = bigInteger4;
                    i = iM8183for;
                } else if (bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerM8722if), bigIntegerMultiply5).equals(bigInteger10)) {
                    if (zM8185try) {
                        printStream = System.out;
                        sb = new StringBuilder();
                        str = "g has order phi(n)/p'\n g: ";
                        sb.append(str);
                        sb.append(bigIntegerMod);
                        printStream.println(sb.toString());
                    }
                    bigInteger8 = bigInteger9;
                    bigInteger7 = bigInteger4;
                    i = iM8183for;
                } else if (bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerM8722if2), bigIntegerMultiply5).equals(bigInteger10)) {
                    if (zM8185try) {
                        printStream = System.out;
                        sb = new StringBuilder();
                        str = "g has order phi(n)/q'\n g: ";
                        sb.append(str);
                        sb.append(bigIntegerMod);
                        printStream.println(sb.toString());
                    }
                    bigInteger8 = bigInteger9;
                    bigInteger7 = bigInteger4;
                    i = iM8183for;
                } else {
                    bigInteger7 = bigInteger4;
                    if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigInteger7), bigIntegerMultiply5).equals(bigInteger10)) {
                        bigInteger8 = bigInteger9;
                        if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigInteger8), bigIntegerMultiply5).equals(bigInteger10)) {
                            break;
                        }
                        if (zM8185try) {
                            PrintStream printStream2 = System.out;
                            StringBuilder sb2 = new StringBuilder();
                            i = iM8183for;
                            sb2.append("g has order phi(n)/b\n g: ");
                            sb2.append(bigIntegerMod);
                            printStream2.println(sb2.toString());
                        }
                    } else {
                        if (zM8185try) {
                            System.out.println("g has order phi(n)/a\n g: " + bigIntegerMod);
                        }
                        bigInteger8 = bigInteger9;
                    }
                    i = iM8183for;
                }
            }
            bigInteger4 = bigInteger7;
            iM8183for = i;
            bigIntegerAdd2 = bigInteger6;
            bigIntegerAdd = bigInteger5;
            iM1498if = i5;
            secureRandomM1497do = secureRandom;
            bigInteger9 = bigInteger8;
        }
        if (zM8185try) {
            System.out.println("needed " + j4 + " tries to generate g");
            System.out.println();
            System.out.println("found new NaccacheStern cipher variables:");
            System.out.println("smallPrimes: " + vectorM8723new);
            System.out.println("sigma:...... " + bigIntegerMultiply3 + " (" + bigIntegerMultiply3.bitLength() + " bits)");
            PrintStream printStream3 = System.out;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("a:.......... ");
            sb3.append(bigInteger7);
            printStream3.println(sb3.toString());
            System.out.println("b:.......... " + bigInteger8);
            System.out.println("p':......... " + bigIntegerM8722if);
            System.out.println("q':......... " + bigIntegerM8722if2);
            System.out.println("p:.......... " + bigInteger5);
            System.out.println("q:.......... " + bigInteger6);
            System.out.println("n:.......... " + bigIntegerMultiply5);
            System.out.println("phi(n):..... " + bigIntegerMultiply6);
            System.out.println("g:.......... " + bigIntegerMod);
            System.out.println();
        }
        return new y3((a4) new w11(false, bigIntegerMod, bigIntegerMultiply5, bigIntegerMultiply3.bitLength()), (a4) new x11(bigIntegerMod, bigIntegerMultiply5, bigIntegerMultiply3.bitLength(), vectorM8723new, bigIntegerMultiply6));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f7035do = (u11) dr0Var;
    }
}
