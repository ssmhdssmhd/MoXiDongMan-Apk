package android.support.v4;

import java.math.BigInteger;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class q3 {

    /* renamed from: android.support.v4.q3$do, reason: invalid class name */
    public static class Cdo<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        private final T[] f5241do;

        /* renamed from: if, reason: not valid java name */
        private int f5242if = 0;

        public Cdo(T[] tArr) {
            this.f5241do = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5242if < this.f5241do.length;
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.f5242if;
            T[] tArr = this.f5241do;
            if (i != tArr.length) {
                this.f5242if = i + 1;
                return tArr[i];
            }
            throw new NoSuchElementException("Out of elements: " + this.f5242if);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    private q3() {
    }

    public static int[] A(int[] iArr, int i) {
        if (iArr == null) {
            return new int[]{i};
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 1, length);
        iArr2[0] = i;
        return iArr2;
    }

    public static short[] B(short[] sArr, short s) {
        if (sArr == null) {
            return new short[]{s};
        }
        int length = sArr.length;
        short[] sArr2 = new short[length + 1];
        System.arraycopy(sArr, 0, sArr2, 1, length);
        sArr2[0] = s;
        return sArr2;
    }

    public static byte[] C(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int i = 0;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        while (true) {
            length--;
            if (length < 0) {
                return bArr2;
            }
            bArr2[length] = bArr[i];
            i++;
        }
    }

    public static int[] D(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int i = 0;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        while (true) {
            length--;
            if (length < 0) {
                return iArr2;
            }
            iArr2[length] = iArr[i];
            i++;
        }
    }

    public static long[] a(long[] jArr, int i, int i2) {
        int iM = m(i, i2);
        long[] jArr2 = new long[iM];
        if (jArr.length - i < iM) {
            iM = jArr.length - i;
        }
        System.arraycopy(jArr, i, jArr2, 0, iM);
        return jArr2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m6360abstract(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (bArr.length != bArr2.length) {
            return !m6360abstract(bArr, bArr);
        }
        int i = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }

    public static BigInteger[] b(BigInteger[] bigIntegerArr, int i, int i2) {
        int iM = m(i, i2);
        BigInteger[] bigIntegerArr2 = new BigInteger[iM];
        if (bigIntegerArr.length - i < iM) {
            iM = bigIntegerArr.length - i;
        }
        System.arraycopy(bigIntegerArr, i, bigIntegerArr2, 0, iM);
        return bigIntegerArr2;
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m6361break(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr == null || objArr2 == null || objArr.length != objArr2.length) {
            return false;
        }
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            Object obj2 = objArr2[i];
            if (obj == null) {
                if (obj2 != null) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public static void c(byte[] bArr, byte b) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = b;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m6362case(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i != bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m6363catch(short[] sArr, short[] sArr2) {
        if (sArr == sArr2) {
            return true;
        }
        if (sArr == null || sArr2 == null || sArr.length != sArr2.length) {
            return false;
        }
        for (int i = 0; i != sArr.length; i++) {
            if (sArr[i] != sArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m6364class(boolean[] zArr, boolean[] zArr2) {
        if (zArr == zArr2) {
            return true;
        }
        if (zArr == null || zArr2 == null || zArr.length != zArr2.length) {
            return false;
        }
        for (int i = 0; i != zArr.length; i++) {
            if (zArr[i] != zArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m6365const(byte[] bArr) {
        if (bArr != null) {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = 0;
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m6366continue(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static void d(byte[] bArr, int i, byte b) {
        if (i < bArr.length) {
            while (i < bArr.length) {
                bArr[i] = b;
                i++;
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static byte[] m6367default(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return bArr2 != null ? m6371final(bArr2) : m6371final(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m6368do(byte[] bArr, byte b) {
        if (bArr == null) {
            return new byte[]{b};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        bArr2[length] = b;
        return bArr2;
    }

    public static void e(byte[] bArr, int i, int i2, byte b) {
        while (i < i2) {
            bArr[i] = b;
            i++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m6369else(char[] cArr, char[] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        for (int i = 0; i != cArr.length; i++) {
            if (cArr[i] != cArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    public static byte[] m6370extends(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr2 == null || bArr3 == null) {
            return bArr == null ? m6367default(bArr2, bArr3) : bArr2 == null ? m6367default(bArr, bArr3) : m6367default(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, bArr.length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static void f(char[] cArr, char c) {
        for (int i = 0; i < cArr.length; i++) {
            cArr[i] = c;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static byte[] m6371final(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: finally, reason: not valid java name */
    public static byte[] m6372finally(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null || bArr2 == null || bArr3 == null || bArr4 == null) {
            return bArr4 == null ? m6370extends(bArr, bArr2, bArr3) : bArr3 == null ? m6370extends(bArr, bArr2, bArr4) : bArr2 == null ? m6370extends(bArr, bArr3, bArr4) : m6370extends(bArr2, bArr3, bArr4);
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr5, bArr.length + bArr2.length, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, bArr.length + bArr2.length + bArr3.length, bArr4.length);
        return bArr5;
    }

    /* renamed from: for, reason: not valid java name */
    public static String[] m6373for(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    public static void g(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = i;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m6374goto(int[] iArr, int[] iArr2) {
        if (iArr == iArr2) {
            return true;
        }
        if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
            return false;
        }
        for (int i = 0; i != iArr.length; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static void h(int[] iArr, int i, int i2) {
        if (i < iArr.length) {
            while (i < iArr.length) {
                iArr[i] = i2;
                i++;
            }
        }
    }

    public static void i(long[] jArr, int i, long j) {
        if (i < jArr.length) {
            while (i < jArr.length) {
                jArr[i] = j;
                i++;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int[] m6375if(int[] iArr, int i) {
        if (iArr == null) {
            return new int[]{i};
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        iArr2[length] = i;
        return iArr2;
    }

    /* renamed from: implements, reason: not valid java name */
    public static BigInteger[] m6376implements(BigInteger[] bigIntegerArr, int i) {
        BigInteger[] bigIntegerArr2 = new BigInteger[i];
        if (i >= bigIntegerArr.length) {
            i = bigIntegerArr.length;
        }
        System.arraycopy(bigIntegerArr, 0, bigIntegerArr2, 0, i);
        return bigIntegerArr2;
    }

    /* renamed from: import, reason: not valid java name */
    public static long[] m6377import(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        long[] jArr2 = new long[jArr.length];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        return jArr2;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static byte[] m6378instanceof(byte[] bArr, int i, int i2) {
        int iM = m(i, i2);
        byte[] bArr2 = new byte[iM];
        if (bArr.length - i < iM) {
            iM = bArr.length - i;
        }
        System.arraycopy(bArr, i, bArr2, 0, iM);
        return bArr2;
    }

    /* renamed from: interface, reason: not valid java name */
    public static char[] m6379interface(char[] cArr, int i) {
        char[] cArr2 = new char[i];
        if (i >= cArr.length) {
            i = cArr.length;
        }
        System.arraycopy(cArr, 0, cArr2, 0, i);
        return cArr2;
    }

    public static void j(long[] jArr, long j) {
        for (int i = 0; i < jArr.length; i++) {
            jArr[i] = j;
        }
    }

    public static void k(short[] sArr, int i, short s) {
        if (i < sArr.length) {
            while (i < sArr.length) {
                sArr[i] = s;
                i++;
            }
        }
    }

    public static void l(short[] sArr, short s) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = s;
        }
    }

    private static int m(int i, int i2) {
        int i3 = i2 - i;
        if (i3 >= 0) {
            return i3;
        }
        StringBuffer stringBuffer = new StringBuffer(i);
        stringBuffer.append(" > ");
        stringBuffer.append(i2);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static int n(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ bArr[length];
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static long[] m6380native(long[] jArr, long[] jArr2) {
        if (jArr == null) {
            return null;
        }
        if (jArr2 == null || jArr2.length != jArr.length) {
            return m6377import(jArr);
        }
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        return jArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static short[] m6381new(short[] sArr, short s) {
        if (sArr == null) {
            return new short[]{s};
        }
        int length = sArr.length;
        short[] sArr2 = new short[length + 1];
        System.arraycopy(sArr, 0, sArr2, 0, length);
        sArr2[length] = s;
        return sArr2;
    }

    public static int o(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            i3 = (i3 * 257) ^ bArr[i + i2];
        }
    }

    public static int p(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ cArr[length];
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static byte[] m6382package(byte[][] bArr) {
        int length = 0;
        for (int i = 0; i != bArr.length; i++) {
            length += bArr[i].length;
        }
        byte[] bArr2 = new byte[length];
        int length2 = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            System.arraycopy(bArr[i2], 0, bArr2, length2, bArr[i2].length);
            length2 += bArr[i2].length;
        }
        return bArr2;
    }

    /* renamed from: private, reason: not valid java name */
    public static int[] m6383private(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return m6398while(iArr2);
        }
        if (iArr2 == null) {
            return m6398while(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int[] m6384protected(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        if (i >= iArr.length) {
            i = iArr.length;
        }
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    /* renamed from: public, reason: not valid java name */
    public static BigInteger[] m6385public(BigInteger[] bigIntegerArr) {
        if (bigIntegerArr == null) {
            return null;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[bigIntegerArr.length];
        System.arraycopy(bigIntegerArr, 0, bigIntegerArr2, 0, bigIntegerArr.length);
        return bigIntegerArr2;
    }

    public static int q(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ iArr[length];
        }
    }

    public static int r(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            i3 = (i3 * 257) ^ iArr[i + i2];
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static short[] m6386return(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        short[] sArr2 = new short[sArr.length];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        return sArr2;
    }

    public static int s(long[] jArr) {
        if (jArr == null) {
            return 0;
        }
        int length = jArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            long j = jArr[length];
            i = (((i * 257) ^ ((int) j)) * 257) ^ ((int) (j >>> 32));
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static byte[][] m6387static(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][] bArr2 = new byte[length][];
        for (int i = 0; i != length; i++) {
            bArr2[i] = m6371final(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m6388strictfp(short[] sArr, short s) {
        for (short s2 : sArr) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public static byte[] m6389super(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return null;
        }
        if (bArr2 == null || bArr2.length != bArr.length) {
            return m6371final(bArr);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static byte[][][] m6390switch(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][][] bArr2 = new byte[length][][];
        for (int i = 0; i != length; i++) {
            bArr2[i] = m6387static(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int[] m6391synchronized(int[] iArr, int i, int i2) {
        int iM = m(i, i2);
        int[] iArr2 = new int[iM];
        if (iArr.length - i < iM) {
            iM = iArr.length - i;
        }
        System.arraycopy(iArr, i, iArr2, 0, iM);
        return iArr2;
    }

    public static int t(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            long j = jArr[i + i2];
            i3 = (((i3 * 257) ^ ((int) j)) * 257) ^ ((int) (j >>> 32));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m6392this(long[] jArr, long[] jArr2) {
        if (jArr == jArr2) {
            return true;
        }
        if (jArr == null || jArr2 == null || jArr.length != jArr2.length) {
            return false;
        }
        for (int i = 0; i != jArr.length; i++) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    public static char[] m6393throw(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        char[] cArr2 = new char[cArr.length];
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        return cArr2;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m6394throws(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int iMin = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i < iMin; i++) {
            int i2 = bArr[i] & 255;
            int i3 = bArr2[i] & 255;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
        }
        if (bArr.length < bArr2.length) {
            return -1;
        }
        return bArr.length > bArr2.length ? 1 : 0;
    }

    /* renamed from: transient, reason: not valid java name */
    public static long[] m6395transient(long[] jArr, int i) {
        long[] jArr2 = new long[i];
        if (i >= jArr.length) {
            i = jArr.length;
        }
        System.arraycopy(jArr, 0, jArr2, 0, i);
        return jArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m6396try(byte[] bArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 |= bArr[i + i4];
        }
        return i3 == 0;
    }

    public static int u(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int length = objArr.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 257) ^ objArr[length].hashCode();
        }
    }

    public static int v(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ (sArr[length] & 255);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static byte[] m6397volatile(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        if (i >= bArr.length) {
            i = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public static int w(int[][] iArr) {
        int iQ = 0;
        for (int i = 0; i != iArr.length; i++) {
            iQ = (iQ * 257) + q(iArr[i]);
        }
        return iQ;
    }

    /* renamed from: while, reason: not valid java name */
    public static int[] m6398while(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static int x(short[][] sArr) {
        int iV = 0;
        for (int i = 0; i != sArr.length; i++) {
            iV = (iV * 257) + v(sArr[i]);
        }
        return iV;
    }

    public static int y(short[][][] sArr) {
        int iX = 0;
        for (int i = 0; i != sArr.length; i++) {
            iX = (iX * 257) + x(sArr[i]);
        }
        return iX;
    }

    public static byte[] z(byte[] bArr, byte b) {
        if (bArr == null) {
            return new byte[]{b};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, length);
        bArr2[0] = b;
        return bArr2;
    }
}
