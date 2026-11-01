package org.apache.commons.lang3;

import android.support.v4.t72;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.Ccase;
import org.apache.commons.lang3.builder.Cfor;
import org.apache.commons.lang3.mutable.Cnew;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: org.apache.commons.lang3.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: public, reason: not valid java name */
    public static final int f28730public = -1;

    /* renamed from: do, reason: not valid java name */
    public static final Object[] f28721do = new Object[0];

    /* renamed from: if, reason: not valid java name */
    public static final Class<?>[] f28726if = new Class[0];

    /* renamed from: for, reason: not valid java name */
    public static final String[] f28724for = new String[0];

    /* renamed from: new, reason: not valid java name */
    public static final long[] f28729new = new long[0];

    /* renamed from: try, reason: not valid java name */
    public static final Long[] f28734try = new Long[0];

    /* renamed from: case, reason: not valid java name */
    public static final int[] f28717case = new int[0];

    /* renamed from: else, reason: not valid java name */
    public static final Integer[] f28722else = new Integer[0];

    /* renamed from: goto, reason: not valid java name */
    public static final short[] f28725goto = new short[0];

    /* renamed from: this, reason: not valid java name */
    public static final Short[] f28732this = new Short[0];

    /* renamed from: break, reason: not valid java name */
    public static final byte[] f28716break = new byte[0];

    /* renamed from: catch, reason: not valid java name */
    public static final Byte[] f28718catch = new Byte[0];

    /* renamed from: class, reason: not valid java name */
    public static final double[] f28719class = new double[0];

    /* renamed from: const, reason: not valid java name */
    public static final Double[] f28720const = new Double[0];

    /* renamed from: final, reason: not valid java name */
    public static final float[] f28723final = new float[0];

    /* renamed from: super, reason: not valid java name */
    public static final Float[] f28731super = new Float[0];

    /* renamed from: throw, reason: not valid java name */
    public static final boolean[] f28733throw = new boolean[0];

    /* renamed from: while, reason: not valid java name */
    public static final Boolean[] f28735while = new Boolean[0];

    /* renamed from: import, reason: not valid java name */
    public static final char[] f28727import = new char[0];

    /* renamed from: native, reason: not valid java name */
    public static final Character[] f28728native = new Character[0];

    public static int A(Object[] objArr, Object obj, int i) {
        if (objArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        if (obj == null) {
            while (i < objArr.length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i < objArr.length) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public static int A0(boolean[] zArr, boolean z) {
        return B0(zArr, z, Integer.MAX_VALUE);
    }

    public static char[] A1(char[] cArr, char... cArr2) {
        if (G(cArr) || G(cArr2)) {
            return m32405abstract(cArr);
        }
        HashMap map = new HashMap(cArr2.length);
        for (char c : cArr2) {
            Character chValueOf = Character.valueOf(c);
            Cnew cnew = (Cnew) map.get(chValueOf);
            if (cnew == null) {
                map.put(chValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Character ch = (Character) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iO = o(cArr, ch.charValue(), i2);
                if (iO < 0) {
                    break;
                }
                bitSet.set(iO);
                i++;
                i2 = iO + 1;
            }
        }
        return (char[]) f1(cArr, bitSet);
    }

    public static float[] A2(Float[] fArr, float f) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f28723final;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            Float f2 = fArr[i];
            fArr2[i] = f2 == null ? f : f2.floatValue();
        }
        return fArr2;
    }

    public static int B(short[] sArr, short s) {
        return C(sArr, s, 0);
    }

    public static int B0(boolean[] zArr, boolean z, int i) {
        if (N(zArr) || i < 0) {
            return -1;
        }
        if (i >= zArr.length) {
            i = zArr.length - 1;
        }
        while (i >= 0) {
            if (z == zArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static double[] B1(double[] dArr, double... dArr2) {
        if (H(dArr) || H(dArr2)) {
            return m32411continue(dArr);
        }
        HashMap map = new HashMap(dArr2.length);
        for (double d : dArr2) {
            Double dValueOf = Double.valueOf(d);
            Cnew cnew = (Cnew) map.get(dValueOf);
            if (cnew == null) {
                map.put(dValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Double d2 = (Double) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iR = r(dArr, d2.doubleValue(), i2);
                if (iR < 0) {
                    break;
                }
                bitSet.set(iR);
                i++;
                i2 = iR + 1;
            }
        }
        return (double[]) f1(dArr, bitSet);
    }

    public static int[] B2(Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return f28717case;
        }
        int[] iArr = new int[numArr.length];
        for (int i = 0; i < numArr.length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public static int C(short[] sArr, short s, int i) {
        if (sArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < sArr.length) {
            if (s == sArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static byte[] C0(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? f28716break : bArr;
    }

    public static float[] C1(float[] fArr, float... fArr2) {
        if (I(fArr) || I(fArr2)) {
            return m32433strictfp(fArr);
        }
        HashMap map = new HashMap(fArr2.length);
        for (float f : fArr2) {
            Float fValueOf = Float.valueOf(f);
            Cnew cnew = (Cnew) map.get(fValueOf);
            if (cnew == null) {
                map.put(fValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Float f2 = (Float) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iU = u(fArr, f2.floatValue(), i2);
                if (iU < 0) {
                    break;
                }
                bitSet.set(iU);
                i++;
                i2 = iU + 1;
            }
        }
        return (float[]) f1(fArr, bitSet);
    }

    public static int[] C2(Integer[] numArr, int i) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return f28717case;
        }
        int[] iArr = new int[numArr.length];
        for (int i2 = 0; i2 < numArr.length; i2++) {
            Integer num = numArr[i2];
            iArr[i2] = num == null ? i : num.intValue();
        }
        return iArr;
    }

    public static int D(boolean[] zArr, boolean z) {
        return E(zArr, z, 0);
    }

    public static char[] D0(char[] cArr) {
        return (cArr == null || cArr.length == 0) ? f28727import : cArr;
    }

    public static int[] D1(int[] iArr, int... iArr2) {
        if (J(iArr) || J(iArr2)) {
            return m32442volatile(iArr);
        }
        HashMap map = new HashMap(iArr2.length);
        for (int i : iArr2) {
            Integer numValueOf = Integer.valueOf(i);
            Cnew cnew = (Cnew) map.get(numValueOf);
            if (cnew == null) {
                map.put(numValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Integer num = (Integer) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i2 = 0;
            int i3 = 0;
            while (i2 < iIntValue) {
                int iW = w(iArr, num.intValue(), i3);
                if (iW < 0) {
                    break;
                }
                bitSet.set(iW);
                i2++;
                i3 = iW + 1;
            }
        }
        return (int[]) f1(iArr, bitSet);
    }

    public static long[] D2(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return f28729new;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    public static int E(boolean[] zArr, boolean z, int i) {
        if (N(zArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < zArr.length) {
            if (z == zArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static double[] E0(double[] dArr) {
        return (dArr == null || dArr.length == 0) ? f28719class : dArr;
    }

    public static long[] E1(long[] jArr, long... jArr2) {
        if (K(jArr) || K(jArr2)) {
            return m32424interface(jArr);
        }
        HashMap map = new HashMap(jArr2.length);
        for (long j : jArr2) {
            Long lValueOf = Long.valueOf(j);
            Cnew cnew = (Cnew) map.get(lValueOf);
            if (cnew == null) {
                map.put(lValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Long l = (Long) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iY = y(jArr, l.longValue(), i2);
                if (iY < 0) {
                    break;
                }
                bitSet.set(iY);
                i++;
                i2 = iY + 1;
            }
        }
        return (long[]) f1(jArr, bitSet);
    }

    public static long[] E2(Long[] lArr, long j) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return f28729new;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            Long l = lArr[i];
            jArr[i] = l == null ? j : l.longValue();
        }
        return jArr;
    }

    public static boolean F(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static float[] F0(float[] fArr) {
        return (fArr == null || fArr.length == 0) ? f28723final : fArr;
    }

    public static <T> T[] F1(T[] tArr, T... tArr2) {
        if (L(tArr) || L(tArr2)) {
            return (T[]) m32429protected(tArr);
        }
        HashMap map = new HashMap(tArr2.length);
        for (T t : tArr2) {
            Cnew cnew = (Cnew) map.get(t);
            if (cnew == null) {
                map.put(t, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iA = A(tArr, key, i2);
                if (iA < 0) {
                    break;
                }
                bitSet.set(iA);
                i++;
                i2 = iA + 1;
            }
        }
        return (T[]) ((Object[]) f1(tArr, bitSet));
    }

    public static short[] F2(Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return f28725goto;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            sArr[i] = shArr[i].shortValue();
        }
        return sArr;
    }

    public static boolean G(char[] cArr) {
        return cArr == null || cArr.length == 0;
    }

    public static int[] G0(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? f28717case : iArr;
    }

    public static short[] G1(short[] sArr, short... sArr2) {
        if (M(sArr) || M(sArr2)) {
            return m32440transient(sArr);
        }
        HashMap map = new HashMap(sArr2.length);
        for (short s : sArr2) {
            Short shValueOf = Short.valueOf(s);
            Cnew cnew = (Cnew) map.get(shValueOf);
            if (cnew == null) {
                map.put(shValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Short sh = (Short) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iC = C(sArr, sh.shortValue(), i2);
                if (iC < 0) {
                    break;
                }
                bitSet.set(iC);
                i++;
                i2 = iC + 1;
            }
        }
        return (short[]) f1(sArr, bitSet);
    }

    public static short[] G2(Short[] shArr, short s) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return f28725goto;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            Short sh = shArr[i];
            sArr[i] = sh == null ? s : sh.shortValue();
        }
        return sArr;
    }

    public static boolean H(double[] dArr) {
        return dArr == null || dArr.length == 0;
    }

    public static long[] H0(long[] jArr) {
        return (jArr == null || jArr.length == 0) ? f28729new : jArr;
    }

    public static boolean[] H1(boolean[] zArr, boolean... zArr2) {
        if (N(zArr) || N(zArr2)) {
            return m32421implements(zArr);
        }
        HashMap map = new HashMap(2);
        for (boolean z : zArr2) {
            Boolean boolValueOf = Boolean.valueOf(z);
            Cnew cnew = (Cnew) map.get(boolValueOf);
            if (cnew == null) {
                map.put(boolValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Boolean bool = (Boolean) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iE = E(zArr, bool.booleanValue(), i2);
                if (iE < 0) {
                    break;
                }
                bitSet.set(iE);
                i++;
                i2 = iE + 1;
            }
        }
        return (boolean[]) f1(zArr, bitSet);
    }

    public static boolean[] H2(Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return f28733throw;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            zArr[i] = boolArr[i].booleanValue();
        }
        return zArr;
    }

    public static boolean I(float[] fArr) {
        return fArr == null || fArr.length == 0;
    }

    public static Boolean[] I0(Boolean[] boolArr) {
        return (boolArr == null || boolArr.length == 0) ? f28735while : boolArr;
    }

    public static void I1(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        J1(bArr, 0, bArr.length);
    }

    public static boolean[] I2(Boolean[] boolArr, boolean z) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return f28733throw;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            Boolean bool = boolArr[i];
            zArr[i] = bool == null ? z : bool.booleanValue();
        }
        return zArr;
    }

    public static boolean J(int[] iArr) {
        return iArr == null || iArr.length == 0;
    }

    public static Byte[] J0(Byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? f28718catch : bArr;
    }

    public static void J1(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(bArr.length, i2) - 1;
        while (iMin > i) {
            byte b = bArr[iMin];
            bArr[iMin] = bArr[i];
            bArr[i] = b;
            iMin--;
            i++;
        }
    }

    public static String J2(Object obj) {
        return K2(obj, MessageFormatter.DELIM_STR);
    }

    public static boolean K(long[] jArr) {
        return jArr == null || jArr.length == 0;
    }

    public static Character[] K0(Character[] chArr) {
        return (chArr == null || chArr.length == 0) ? f28728native : chArr;
    }

    public static void K1(char[] cArr) {
        if (cArr == null) {
            return;
        }
        L1(cArr, 0, cArr.length);
    }

    public static String K2(Object obj, String str) {
        return obj == null ? str : new t72(obj, Ccase.SIMPLE_STYLE).m7750else(obj).toString();
    }

    public static boolean L(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static Class<?>[] L0(Class<?>[] clsArr) {
        return (clsArr == null || clsArr.length == 0) ? f28726if : clsArr;
    }

    public static void L1(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(cArr.length, i2) - 1;
        while (iMin > i) {
            char c = cArr[iMin];
            cArr[iMin] = cArr[i];
            cArr[i] = c;
            iMin--;
            i++;
        }
    }

    public static boolean M(short[] sArr) {
        return sArr == null || sArr.length == 0;
    }

    public static Double[] M0(Double[] dArr) {
        return (dArr == null || dArr.length == 0) ? f28720const : dArr;
    }

    public static void M1(double[] dArr) {
        if (dArr == null) {
            return;
        }
        N1(dArr, 0, dArr.length);
    }

    public static boolean N(boolean[] zArr) {
        return zArr == null || zArr.length == 0;
    }

    public static Float[] N0(Float[] fArr) {
        return (fArr == null || fArr.length == 0) ? f28731super : fArr;
    }

    public static void N1(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(dArr.length, i2) - 1;
        while (iMin > i) {
            double d = dArr[iMin];
            dArr[iMin] = dArr[i];
            dArr[i] = d;
            iMin--;
            i++;
        }
    }

    @Deprecated
    public static boolean O(Object obj, Object obj2) {
        return new org.apache.commons.lang3.builder.Cif().m32206else(obj, obj2).m32217switch();
    }

    public static Integer[] O0(Integer[] numArr) {
        return (numArr == null || numArr.length == 0) ? f28722else : numArr;
    }

    public static void O1(float[] fArr) {
        if (fArr == null) {
            return;
        }
        P1(fArr, 0, fArr.length);
    }

    public static boolean P(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? false : true;
    }

    public static Long[] P0(Long[] lArr) {
        return (lArr == null || lArr.length == 0) ? f28734try : lArr;
    }

    public static void P1(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(fArr.length, i2) - 1;
        while (iMin > i) {
            float f = fArr[iMin];
            fArr[iMin] = fArr[i];
            fArr[i] = f;
            iMin--;
            i++;
        }
    }

    public static boolean Q(char[] cArr) {
        return (cArr == null || cArr.length == 0) ? false : true;
    }

    public static Object[] Q0(Object[] objArr) {
        return (objArr == null || objArr.length == 0) ? f28721do : objArr;
    }

    public static void Q1(int[] iArr) {
        if (iArr == null) {
            return;
        }
        R1(iArr, 0, iArr.length);
    }

    public static boolean R(double[] dArr) {
        return (dArr == null || dArr.length == 0) ? false : true;
    }

    public static Short[] R0(Short[] shArr) {
        return (shArr == null || shArr.length == 0) ? f28732this : shArr;
    }

    public static void R1(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(iArr.length, i2) - 1;
        while (iMin > i) {
            int i3 = iArr[iMin];
            iArr[iMin] = iArr[i];
            iArr[i] = i3;
            iMin--;
            i++;
        }
    }

    public static boolean S(float[] fArr) {
        return (fArr == null || fArr.length == 0) ? false : true;
    }

    public static String[] S0(String[] strArr) {
        return (strArr == null || strArr.length == 0) ? f28724for : strArr;
    }

    public static void S1(long[] jArr) {
        if (jArr == null) {
            return;
        }
        T1(jArr, 0, jArr.length);
    }

    public static boolean T(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? false : true;
    }

    public static short[] T0(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? f28725goto : sArr;
    }

    public static void T1(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(jArr.length, i2) - 1;
        while (iMin > i) {
            long j = jArr[iMin];
            jArr[iMin] = jArr[i];
            jArr[i] = j;
            iMin--;
            i++;
        }
    }

    public static boolean U(long[] jArr) {
        return (jArr == null || jArr.length == 0) ? false : true;
    }

    public static boolean[] U0(boolean[] zArr) {
        return (zArr == null || zArr.length == 0) ? f28733throw : zArr;
    }

    public static void U1(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        V1(objArr, 0, objArr.length);
    }

    public static <T> boolean V(T[] tArr) {
        return (tArr == null || tArr.length == 0) ? false : true;
    }

    private static Object V0(Object obj, int i) throws NegativeArraySizeException {
        int iJ = j(obj);
        if (i < 0 || i >= iJ) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + iJ);
        }
        int i2 = iJ - 1;
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i2);
        System.arraycopy(obj, 0, objNewInstance, 0, i);
        if (i < i2) {
            System.arraycopy(obj, i + 1, objNewInstance, i, (iJ - i) - 1);
        }
        return objNewInstance;
    }

    public static void V1(Object[] objArr, int i, int i2) {
        if (objArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(objArr.length, i2) - 1;
        while (iMin > i) {
            Object obj = objArr[iMin];
            objArr[iMin] = objArr[i];
            objArr[i] = obj;
            iMin--;
            i++;
        }
    }

    public static boolean W(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? false : true;
    }

    public static byte[] W0(byte[] bArr, int i) {
        return (byte[]) V0(bArr, i);
    }

    public static void W1(short[] sArr) {
        if (sArr == null) {
            return;
        }
        X1(sArr, 0, sArr.length);
    }

    public static boolean X(boolean[] zArr) {
        return (zArr == null || zArr.length == 0) ? false : true;
    }

    public static char[] X0(char[] cArr, int i) {
        return (char[]) V0(cArr, i);
    }

    public static void X1(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(sArr.length, i2) - 1;
        while (iMin > i) {
            short s = sArr[iMin];
            sArr[iMin] = sArr[i];
            sArr[i] = s;
            iMin--;
            i++;
        }
    }

    public static boolean Y(byte[] bArr, byte[] bArr2) {
        if (bArr == null && bArr2 != null && bArr2.length > 0) {
            return false;
        }
        if (bArr2 != null || bArr == null || bArr.length <= 0) {
            return bArr == null || bArr2 == null || bArr.length == bArr2.length;
        }
        return false;
    }

    public static double[] Y0(double[] dArr, int i) {
        return (double[]) V0(dArr, i);
    }

    public static void Y1(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        Z1(zArr, 0, zArr.length);
    }

    public static boolean Z(char[] cArr, char[] cArr2) {
        if (cArr == null && cArr2 != null && cArr2.length > 0) {
            return false;
        }
        if (cArr2 != null || cArr == null || cArr.length <= 0) {
            return cArr == null || cArr2 == null || cArr.length == cArr2.length;
        }
        return false;
    }

    public static float[] Z0(float[] fArr, int i) {
        return (float[]) V0(fArr, i);
    }

    public static void Z1(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        int iMin = Math.min(zArr.length, i2) - 1;
        while (iMin > i) {
            boolean z = zArr[iMin];
            zArr[iMin] = zArr[i];
            zArr[i] = z;
            iMin--;
            i++;
        }
    }

    public static boolean a(double[] dArr, double d) {
        return p(dArr, d) != -1;
    }

    public static boolean a0(double[] dArr, double[] dArr2) {
        if (dArr == null && dArr2 != null && dArr2.length > 0) {
            return false;
        }
        if (dArr2 != null || dArr == null || dArr.length <= 0) {
            return dArr == null || dArr2 == null || dArr.length == dArr2.length;
        }
        return false;
    }

    public static int[] a1(int[] iArr, int i) {
        return (int[]) V0(iArr, i);
    }

    public static byte[] a2(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > bArr.length) {
            i2 = bArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28716break;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static char[] m32405abstract(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static boolean b(double[] dArr, double d, double d2) {
        return s(dArr, d, 0, d2) != -1;
    }

    public static boolean b0(float[] fArr, float[] fArr2) {
        if (fArr == null && fArr2 != null && fArr2.length > 0) {
            return false;
        }
        if (fArr2 != null || fArr == null || fArr.length <= 0) {
            return fArr == null || fArr2 == null || fArr.length == fArr2.length;
        }
        return false;
    }

    public static long[] b1(long[] jArr, int i) {
        return (long[]) V0(jArr, i);
    }

    public static char[] b2(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > cArr.length) {
            i2 = cArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28727import;
        }
        char[] cArr2 = new char[i3];
        System.arraycopy(cArr, i, cArr2, 0, i3);
        return cArr2;
    }

    /* renamed from: break, reason: not valid java name */
    public static int[] m32406break(int[] iArr, int i) {
        int[] iArr2 = (int[]) i(iArr, Integer.TYPE);
        iArr2[iArr2.length - 1] = i;
        return iArr2;
    }

    public static boolean c(float[] fArr, float f) {
        return t(fArr, f) != -1;
    }

    public static boolean c0(int[] iArr, int[] iArr2) {
        if (iArr == null && iArr2 != null && iArr2.length > 0) {
            return false;
        }
        if (iArr2 != null || iArr == null || iArr.length <= 0) {
            return iArr == null || iArr2 == null || iArr.length == iArr2.length;
        }
        return false;
    }

    public static <T> T[] c1(T[] tArr, int i) {
        return (T[]) ((Object[]) V0(tArr, i));
    }

    public static double[] c2(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > dArr.length) {
            i2 = dArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28719class;
        }
        double[] dArr2 = new double[i3];
        System.arraycopy(dArr, i, dArr2, 0, i3);
        return dArr2;
    }

    /* renamed from: case, reason: not valid java name */
    public static double[] m32407case(double[] dArr, double d) {
        double[] dArr2 = (double[]) i(dArr, Double.TYPE);
        dArr2[dArr2.length - 1] = d;
        return dArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int[] m32408catch(int[] iArr, int i, int i2) {
        return (int[]) m32413do(iArr, i, Integer.valueOf(i2), Integer.TYPE);
    }

    /* renamed from: class, reason: not valid java name */
    public static long[] m32409class(long[] jArr, int i, long j) {
        return (long[]) m32413do(jArr, i, Long.valueOf(j), Long.TYPE);
    }

    /* renamed from: const, reason: not valid java name */
    public static long[] m32410const(long[] jArr, long j) {
        long[] jArr2 = (long[]) i(jArr, Long.TYPE);
        jArr2[jArr2.length - 1] = j;
        return jArr2;
    }

    /* renamed from: continue, reason: not valid java name */
    public static double[] m32411continue(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public static boolean d(int[] iArr, int i) {
        return v(iArr, i) != -1;
    }

    public static boolean d0(long[] jArr, long[] jArr2) {
        if (jArr == null && jArr2 != null && jArr2.length > 0) {
            return false;
        }
        if (jArr2 != null || jArr == null || jArr.length <= 0) {
            return jArr == null || jArr2 == null || jArr.length == jArr2.length;
        }
        return false;
    }

    public static short[] d1(short[] sArr, int i) {
        return (short[]) V0(sArr, i);
    }

    public static float[] d2(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > fArr.length) {
            i2 = fArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28723final;
        }
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, i3);
        return fArr2;
    }

    /* renamed from: default, reason: not valid java name */
    public static long[] m32412default(long[] jArr, long... jArr2) {
        if (jArr == null) {
            return m32424interface(jArr2);
        }
        if (jArr2 == null) {
            return m32424interface(jArr);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
        System.arraycopy(jArr2, 0, jArr3, jArr.length, jArr2.length);
        return jArr3;
    }

    /* renamed from: do, reason: not valid java name */
    private static Object m32413do(Object obj, int i, Object obj2, Class<?> cls) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        if (obj == null) {
            if (i == 0) {
                Object objNewInstance = Array.newInstance(cls, 1);
                Array.set(objNewInstance, 0, obj2);
                return objNewInstance;
            }
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: 0");
        }
        int length = Array.getLength(obj);
        if (i > length || i < 0) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + length);
        }
        Object objNewInstance2 = Array.newInstance(cls, length + 1);
        System.arraycopy(obj, 0, objNewInstance2, 0, i);
        Array.set(objNewInstance2, i, obj2);
        if (i < length) {
            System.arraycopy(obj, i, objNewInstance2, i + 1, length - i);
        }
        return objNewInstance2;
    }

    public static boolean e(long[] jArr, long j) {
        return x(jArr, j) != -1;
    }

    public static boolean e0(Object[] objArr, Object[] objArr2) {
        if (objArr == null && objArr2 != null && objArr2.length > 0) {
            return false;
        }
        if (objArr2 != null || objArr == null || objArr.length <= 0) {
            return objArr == null || objArr2 == null || objArr.length == objArr2.length;
        }
        return false;
    }

    public static boolean[] e1(boolean[] zArr, int i) {
        return (boolean[]) V0(zArr, i);
    }

    public static int[] e2(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > iArr.length) {
            i2 = iArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28717case;
        }
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i3);
        return iArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public static double[] m32414else(double[] dArr, int i, double d) {
        return (double[]) m32413do(dArr, i, Double.valueOf(d), Double.TYPE);
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T> T[] m32415extends(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) m32429protected(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) m32429protected(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (componentType.isAssignableFrom(componentType2)) {
                throw e;
            }
            throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e);
        }
    }

    public static boolean f(Object[] objArr, Object obj) {
        return z(objArr, obj) != -1;
    }

    public static boolean f0(short[] sArr, short[] sArr2) {
        if (sArr == null && sArr2 != null && sArr2.length > 0) {
            return false;
        }
        if (sArr2 != null || sArr == null || sArr.length <= 0) {
            return sArr == null || sArr2 == null || sArr.length == sArr2.length;
        }
        return false;
    }

    public static Object f1(Object obj, BitSet bitSet) throws NegativeArraySizeException {
        int iJ = j(obj);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), iJ - bitSet.cardinality());
        int iNextClearBit = 0;
        int i = 0;
        while (true) {
            int iNextSetBit = bitSet.nextSetBit(iNextClearBit);
            if (iNextSetBit == -1) {
                break;
            }
            int i2 = iNextSetBit - iNextClearBit;
            if (i2 > 0) {
                System.arraycopy(obj, iNextClearBit, objNewInstance, i, i2);
                i += i2;
            }
            iNextClearBit = bitSet.nextClearBit(iNextSetBit);
        }
        int i3 = iJ - iNextClearBit;
        if (i3 > 0) {
            System.arraycopy(obj, iNextClearBit, objNewInstance, i, i3);
        }
        return objNewInstance;
    }

    public static long[] f2(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > jArr.length) {
            i2 = jArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28729new;
        }
        long[] jArr2 = new long[i3];
        System.arraycopy(jArr, i, jArr2, 0, i3);
        return jArr2;
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> T[] m32416final(T[] tArr, int i, T t) {
        Class<?> componentType;
        if (tArr != null) {
            componentType = tArr.getClass().getComponentType();
        } else {
            if (t == null) {
                throw new IllegalArgumentException("Array and element cannot both be null");
            }
            componentType = t.getClass();
        }
        return (T[]) ((Object[]) m32413do(tArr, i, t, componentType));
    }

    /* renamed from: finally, reason: not valid java name */
    public static short[] m32417finally(short[] sArr, short... sArr2) {
        if (sArr == null) {
            return m32440transient(sArr2);
        }
        if (sArr2 == null) {
            return m32440transient(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m32418for(byte[] bArr, int i, byte b) {
        return (byte[]) m32413do(bArr, i, Byte.valueOf(b), Byte.TYPE);
    }

    public static boolean g(short[] sArr, short s) {
        return B(sArr, s) != -1;
    }

    public static boolean g0(boolean[] zArr, boolean[] zArr2) {
        if (zArr == null && zArr2 != null && zArr2.length > 0) {
            return false;
        }
        if (zArr2 != null || zArr == null || zArr.length <= 0) {
            return zArr == null || zArr2 == null || zArr.length == zArr2.length;
        }
        return false;
    }

    public static Object g1(Object obj, int... iArr) throws NegativeArraySizeException {
        int i;
        int i2;
        int iJ = j(obj);
        if (T(iArr)) {
            Arrays.sort(iArr);
            int length = iArr.length;
            int i3 = iJ;
            i = 0;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                i2 = iArr[length];
                if (i2 < 0 || i2 >= iJ) {
                    break;
                }
                if (i2 < i3) {
                    i++;
                    i3 = i2;
                }
            }
            throw new IndexOutOfBoundsException("Index: " + i2 + ", Length: " + iJ);
        }
        i = 0;
        int i4 = iJ - i;
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), i4);
        if (i < iJ) {
            int length2 = iArr.length - 1;
            while (length2 >= 0) {
                int i5 = iArr[length2];
                int i6 = iJ - i5;
                if (i6 > 1) {
                    int i7 = i6 - 1;
                    i4 -= i7;
                    System.arraycopy(obj, i5 + 1, objNewInstance, i4, i7);
                }
                length2--;
                iJ = i5;
            }
            if (iJ > 0) {
                System.arraycopy(obj, 0, objNewInstance, 0, iJ);
            }
        }
        return objNewInstance;
    }

    public static <T> T[] g2(T[] tArr, int i, int i2) {
        if (tArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > tArr.length) {
            i2 = tArr.length;
        }
        int i3 = i2 - i;
        Class<?> componentType = tArr.getClass().getComponentType();
        if (i3 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(componentType, i3));
        System.arraycopy(tArr, i, tArr2, 0, i3);
        return tArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static float[] m32419goto(float[] fArr, float f) {
        float[] fArr2 = (float[]) i(fArr, Float.TYPE);
        fArr2[fArr2.length - 1] = f;
        return fArr2;
    }

    public static boolean h(boolean[] zArr, boolean z) {
        return D(zArr, z) != -1;
    }

    public static boolean h0(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        return obj.getClass().getName().equals(obj2.getClass().getName());
    }

    public static byte[] h1(byte[] bArr, int... iArr) {
        return (byte[]) g1(bArr, m32442volatile(iArr));
    }

    public static short[] h2(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > sArr.length) {
            i2 = sArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28725goto;
        }
        short[] sArr2 = new short[i3];
        System.arraycopy(sArr, i, sArr2, 0, i3);
        return sArr2;
    }

    private static Object i(Object obj, Class<?> cls) throws NegativeArraySizeException {
        if (obj == null) {
            return Array.newInstance(cls, 1);
        }
        int length = Array.getLength(obj);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        return objNewInstance;
    }

    public static int i0(byte[] bArr, byte b) {
        return j0(bArr, b, Integer.MAX_VALUE);
    }

    public static char[] i1(char[] cArr, int... iArr) {
        return (char[]) g1(cArr, m32442volatile(iArr));
    }

    public static boolean[] i2(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > zArr.length) {
            i2 = zArr.length;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return f28733throw;
        }
        boolean[] zArr2 = new boolean[i3];
        System.arraycopy(zArr, i, zArr2, 0, i3);
        return zArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m32420if(byte[] bArr, byte b) {
        byte[] bArr2 = (byte[]) i(bArr, Byte.TYPE);
        bArr2[bArr2.length - 1] = b;
        return bArr2;
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean[] m32421implements(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean[] m32422import(boolean[] zArr, int i, boolean z) {
        return (boolean[]) m32413do(zArr, i, Boolean.valueOf(z), Boolean.TYPE);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m32423instanceof(byte[] bArr, byte b) {
        return l(bArr, b) != -1;
    }

    /* renamed from: interface, reason: not valid java name */
    public static long[] m32424interface(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static int j(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int j0(byte[] bArr, byte b, int i) {
        if (bArr == null || i < 0) {
            return -1;
        }
        if (i >= bArr.length) {
            i = bArr.length - 1;
        }
        while (i >= 0) {
            if (b == bArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static double[] j1(double[] dArr, int... iArr) {
        return (double[]) g1(dArr, m32442volatile(iArr));
    }

    public static <T> T[] j2(T... tArr) {
        return tArr;
    }

    public static int k(Object obj) {
        return new Cfor().m32175else(obj).m32173continue();
    }

    public static int k0(char[] cArr, char c) {
        return l0(cArr, c, Integer.MAX_VALUE);
    }

    public static float[] k1(float[] fArr, int... iArr) {
        return (float[]) g1(fArr, m32442volatile(iArr));
    }

    public static Map<Object, Object> k2(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        double length = objArr.length;
        Double.isNaN(length);
        HashMap map = new HashMap((int) (length * 1.5d));
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                map.put(entry.getKey(), entry.getValue());
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', is neither of type Map.Entry nor an Array");
                }
                Object[] objArr2 = (Object[]) obj;
                if (objArr2.length < 2) {
                    throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', has a length less than 2");
                }
                map.put(objArr2[0], objArr2[1]);
            }
        }
        return map;
    }

    public static int l(byte[] bArr, byte b) {
        return m(bArr, b, 0);
    }

    public static int l0(char[] cArr, char c, int i) {
        if (cArr == null || i < 0) {
            return -1;
        }
        if (i >= cArr.length) {
            i = cArr.length - 1;
        }
        while (i >= 0) {
            if (c == cArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static int[] l1(int[] iArr, int... iArr2) {
        return (int[]) g1(iArr, m32442volatile(iArr2));
    }

    public static Boolean[] l2(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return f28735while;
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = zArr[i] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static int m(byte[] bArr, byte b, int i) {
        if (bArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < bArr.length) {
            if (b == bArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int m0(double[] dArr, double d) {
        return o0(dArr, d, Integer.MAX_VALUE);
    }

    public static long[] m1(long[] jArr, int... iArr) {
        return (long[]) g1(jArr, m32442volatile(iArr));
    }

    public static Byte[] m2(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f28718catch;
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public static int n(char[] cArr, char c) {
        return o(cArr, c, 0);
    }

    public static int n0(double[] dArr, double d, double d2) {
        return p0(dArr, d, Integer.MAX_VALUE, d2);
    }

    public static <T> T[] n1(T[] tArr, int... iArr) {
        return (T[]) ((Object[]) g1(tArr, m32442volatile(iArr)));
    }

    public static Character[] n2(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return f28728native;
        }
        Character[] chArr = new Character[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            chArr[i] = Character.valueOf(cArr[i]);
        }
        return chArr;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean[] m32425native(boolean[] zArr, boolean z) {
        boolean[] zArr2 = (boolean[]) i(zArr, Boolean.TYPE);
        zArr2[zArr2.length - 1] = z;
        return zArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static char[] m32426new(char[] cArr, char c) {
        char[] cArr2 = (char[]) i(cArr, Character.TYPE);
        cArr2[cArr2.length - 1] = c;
        return cArr2;
    }

    public static int o(char[] cArr, char c, int i) {
        if (cArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < cArr.length) {
            if (c == cArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int o0(double[] dArr, double d, int i) {
        if (H(dArr) || i < 0) {
            return -1;
        }
        if (i >= dArr.length) {
            i = dArr.length - 1;
        }
        while (i >= 0) {
            if (d == dArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static short[] o1(short[] sArr, int... iArr) {
        return (short[]) g1(sArr, m32442volatile(iArr));
    }

    public static Double[] o2(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f28720const;
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    public static int p(double[] dArr, double d) {
        return r(dArr, d, 0);
    }

    public static int p0(double[] dArr, double d, int i, double d2) {
        if (H(dArr) || i < 0) {
            return -1;
        }
        if (i >= dArr.length) {
            i = dArr.length - 1;
        }
        double d3 = d - d2;
        double d4 = d + d2;
        while (i >= 0) {
            if (dArr[i] >= d3 && dArr[i] <= d4) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static boolean[] p1(boolean[] zArr, int... iArr) {
        return (boolean[]) g1(zArr, m32442volatile(iArr));
    }

    public static Float[] p2(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f28731super;
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean[] m32427package(boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return m32421implements(zArr2);
        }
        if (zArr2 == null) {
            return m32421implements(zArr);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr, 0, zArr3, 0, zArr.length);
        System.arraycopy(zArr2, 0, zArr3, zArr.length, zArr2.length);
        return zArr3;
    }

    /* renamed from: private, reason: not valid java name */
    public static byte[] m32428private(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T> T[] m32429protected(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    /* renamed from: public, reason: not valid java name */
    public static byte[] m32430public(byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return m32428private(bArr2);
        }
        if (bArr2 == null) {
            return m32428private(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int q(double[] dArr, double d, double d2) {
        return s(dArr, d, 0, d2);
    }

    public static int q0(float[] fArr, float f) {
        return r0(fArr, f, Integer.MAX_VALUE);
    }

    public static byte[] q1(byte[] bArr, byte b) {
        int iL = l(bArr, b);
        return iL == -1 ? m32428private(bArr) : W0(bArr, iL);
    }

    public static Integer[] q2(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return f28722else;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static int r(double[] dArr, double d, int i) {
        if (H(dArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < dArr.length) {
            if (d == dArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int r0(float[] fArr, float f, int i) {
        if (I(fArr) || i < 0) {
            return -1;
        }
        if (i >= fArr.length) {
            i = fArr.length - 1;
        }
        while (i >= 0) {
            if (f == fArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static char[] r1(char[] cArr, char c) {
        int iN = n(cArr, c);
        return iN == -1 ? m32405abstract(cArr) : X0(cArr, iN);
    }

    public static Long[] r2(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return f28734try;
        }
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* renamed from: return, reason: not valid java name */
    public static char[] m32431return(char[] cArr, char... cArr2) {
        if (cArr == null) {
            return m32405abstract(cArr2);
        }
        if (cArr2 == null) {
            return m32405abstract(cArr);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static int s(double[] dArr, double d, int i, double d2) {
        if (H(dArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        double d3 = d - d2;
        double d4 = d + d2;
        while (i < dArr.length) {
            if (dArr[i] >= d3 && dArr[i] <= d4) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int s0(int[] iArr, int i) {
        return t0(iArr, i, Integer.MAX_VALUE);
    }

    public static double[] s1(double[] dArr, double d) {
        int iP = p(dArr, d);
        return iP == -1 ? m32411continue(dArr) : Y0(dArr, iP);
    }

    public static Short[] s2(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return f28732this;
        }
        Short[] shArr = new Short[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            shArr[i] = Short.valueOf(sArr[i]);
        }
        return shArr;
    }

    /* renamed from: static, reason: not valid java name */
    public static double[] m32432static(double[] dArr, double... dArr2) {
        if (dArr == null) {
            return m32411continue(dArr2);
        }
        if (dArr2 == null) {
            return m32411continue(dArr);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static float[] m32433strictfp(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return (float[]) fArr.clone();
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> T[] m32434super(T[] tArr, T t) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass();
        } else {
            if (t == null) {
                throw new IllegalArgumentException("Arguments cannot both be null");
            }
            cls = t.getClass();
        }
        T[] tArr2 = (T[]) ((Object[]) i(tArr, cls));
        tArr2[tArr2.length - 1] = t;
        return tArr2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static float[] m32435switch(float[] fArr, float... fArr2) {
        if (fArr == null) {
            return m32433strictfp(fArr2);
        }
        if (fArr2 == null) {
            return m32433strictfp(fArr);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m32436synchronized(char[] cArr, char c) {
        return n(cArr, c) != -1;
    }

    public static int t(float[] fArr, float f) {
        return u(fArr, f, 0);
    }

    public static int t0(int[] iArr, int i, int i2) {
        if (iArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= iArr.length) {
            i2 = iArr.length - 1;
        }
        while (i2 >= 0) {
            if (i == iArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static float[] t1(float[] fArr, float f) {
        int iT = t(fArr, f);
        return iT == -1 ? m32433strictfp(fArr) : Z0(fArr, iT);
    }

    public static byte[] t2(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f28716break;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public static float[] m32437this(float[] fArr, int i, float f) {
        return (float[]) m32413do(fArr, i, Float.valueOf(f), Float.TYPE);
    }

    /* renamed from: throw, reason: not valid java name */
    public static short[] m32438throw(short[] sArr, int i, short s) {
        return (short[]) m32413do(sArr, i, Short.valueOf(s), Short.TYPE);
    }

    /* renamed from: throws, reason: not valid java name */
    public static int[] m32439throws(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return m32442volatile(iArr2);
        }
        if (iArr2 == null) {
            return m32442volatile(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    /* renamed from: transient, reason: not valid java name */
    public static short[] m32440transient(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    /* renamed from: try, reason: not valid java name */
    public static char[] m32441try(char[] cArr, int i, char c) {
        return (char[]) m32413do(cArr, i, Character.valueOf(c), Character.TYPE);
    }

    public static int u(float[] fArr, float f, int i) {
        if (I(fArr)) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < fArr.length) {
            if (f == fArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int u0(long[] jArr, long j) {
        return v0(jArr, j, Integer.MAX_VALUE);
    }

    public static int[] u1(int[] iArr, int i) {
        int iV = v(iArr, i);
        return iV == -1 ? m32442volatile(iArr) : a1(iArr, iV);
    }

    public static byte[] u2(Byte[] bArr, byte b) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f28716break;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            Byte b2 = bArr[i];
            bArr2[i] = b2 == null ? b : b2.byteValue();
        }
        return bArr2;
    }

    public static int v(int[] iArr, int i) {
        return w(iArr, i, 0);
    }

    public static int v0(long[] jArr, long j, int i) {
        if (jArr == null || i < 0) {
            return -1;
        }
        if (i >= jArr.length) {
            i = jArr.length - 1;
        }
        while (i >= 0) {
            if (j == jArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static long[] v1(long[] jArr, long j) {
        int iX = x(jArr, j);
        return iX == -1 ? m32424interface(jArr) : b1(jArr, iX);
    }

    public static char[] v2(Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return f28727import;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            cArr[i] = chArr[i].charValue();
        }
        return cArr;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int[] m32442volatile(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static int w(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < iArr.length) {
            if (i == iArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int w0(Object[] objArr, Object obj) {
        return x0(objArr, obj, Integer.MAX_VALUE);
    }

    public static <T> T[] w1(T[] tArr, Object obj) {
        int iZ = z(tArr, obj);
        return iZ == -1 ? (T[]) m32429protected(tArr) : (T[]) c1(tArr, iZ);
    }

    public static char[] w2(Character[] chArr, char c) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return f28727import;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            Character ch = chArr[i];
            cArr[i] = ch == null ? c : ch.charValue();
        }
        return cArr;
    }

    /* renamed from: while, reason: not valid java name */
    public static short[] m32443while(short[] sArr, short s) {
        short[] sArr2 = (short[]) i(sArr, Short.TYPE);
        sArr2[sArr2.length - 1] = s;
        return sArr2;
    }

    public static int x(long[] jArr, long j) {
        return y(jArr, j, 0);
    }

    public static int x0(Object[] objArr, Object obj, int i) {
        if (objArr == null || i < 0) {
            return -1;
        }
        if (i >= objArr.length) {
            i = objArr.length - 1;
        }
        if (obj == null) {
            while (i >= 0) {
                if (objArr[i] == null) {
                    return i;
                }
                i--;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i >= 0) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
                i--;
            }
        }
        return -1;
    }

    public static short[] x1(short[] sArr, short s) {
        int iB = B(sArr, s);
        return iB == -1 ? m32440transient(sArr) : d1(sArr, iB);
    }

    public static double[] x2(Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f28719class;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i].doubleValue();
        }
        return dArr2;
    }

    public static int y(long[] jArr, long j, int i) {
        if (jArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < jArr.length) {
            if (j == jArr[i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int y0(short[] sArr, short s) {
        return z0(sArr, s, Integer.MAX_VALUE);
    }

    public static boolean[] y1(boolean[] zArr, boolean z) {
        int iD = D(zArr, z);
        return iD == -1 ? m32421implements(zArr) : e1(zArr, iD);
    }

    public static double[] y2(Double[] dArr, double d) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return f28719class;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            Double d2 = dArr[i];
            dArr2[i] = d2 == null ? d : d2.doubleValue();
        }
        return dArr2;
    }

    public static int z(Object[] objArr, Object obj) {
        return A(objArr, obj, 0);
    }

    public static int z0(short[] sArr, short s, int i) {
        if (sArr == null || i < 0) {
            return -1;
        }
        if (i >= sArr.length) {
            i = sArr.length - 1;
        }
        while (i >= 0) {
            if (s == sArr[i]) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static byte[] z1(byte[] bArr, byte... bArr2) {
        if (F(bArr) || F(bArr2)) {
            return m32428private(bArr);
        }
        HashMap map = new HashMap(bArr2.length);
        for (byte b : bArr2) {
            Byte bValueOf = Byte.valueOf(b);
            Cnew cnew = (Cnew) map.get(bValueOf);
            if (cnew == null) {
                map.put(bValueOf, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (Map.Entry entry : map.entrySet()) {
            Byte b2 = (Byte) entry.getKey();
            int iIntValue = ((Cnew) entry.getValue()).intValue();
            int i = 0;
            int i2 = 0;
            while (i < iIntValue) {
                int iM = m(bArr, b2.byteValue(), i2);
                if (iM < 0) {
                    break;
                }
                bitSet.set(iM);
                i++;
                i2 = iM + 1;
            }
        }
        return (byte[]) f1(bArr, bitSet);
    }

    public static float[] z2(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return f28723final;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = fArr[i].floatValue();
        }
        return fArr2;
    }
}
