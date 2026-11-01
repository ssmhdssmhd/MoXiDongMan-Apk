package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Arrays;
import java.util.Comparator;
import sun.misc.Unsafe;

@li0
/* renamed from: com.google.common.primitives.super, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Csuper {

    /* renamed from: do, reason: not valid java name */
    public static final byte f15517do = Byte.MIN_VALUE;

    /* renamed from: for, reason: not valid java name */
    private static final int f15518for = 255;

    /* renamed from: if, reason: not valid java name */
    public static final byte f15519if = -1;

    @af2
    /* renamed from: com.google.common.primitives.super$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final String f15520do = Cdo.class.getName() + "$UnsafeComparator";

        /* renamed from: if, reason: not valid java name */
        public static final Comparator<byte[]> f15521if = m17673do();

        /* renamed from: com.google.common.primitives.super$do$do, reason: invalid class name and collision with other inner class name */
        public enum EnumC0135do implements Comparator<byte[]> {
            INSTANCE;

            @Override // java.lang.Enum
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (pure Java version)";
            }

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int iMin = Math.min(bArr.length, bArr2.length);
                for (int i = 0; i < iMin; i++) {
                    int iM17665if = Csuper.m17665if(bArr[i], bArr2[i]);
                    if (iM17665if != 0) {
                        return iM17665if;
                    }
                }
                return bArr.length - bArr2.length;
            }
        }

        @af2
        /* renamed from: com.google.common.primitives.super$do$if, reason: invalid class name */
        public enum Cif implements Comparator<byte[]> {
            INSTANCE;

            public static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
            public static final int BYTE_ARRAY_BASE_OFFSET;
            public static final Unsafe theUnsafe;

            /* renamed from: com.google.common.primitives.super$do$if$do, reason: invalid class name and collision with other inner class name */
            public static class C0136do implements PrivilegedExceptionAction<Unsafe> {
                @Override // java.security.PrivilegedExceptionAction
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Unsafe run() throws Exception {
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    throw new NoSuchFieldError("the Unsafe");
                }
            }

            static {
                Unsafe unsafeM17674do = m17674do();
                theUnsafe = unsafeM17674do;
                int iArrayBaseOffset = unsafeM17674do.arrayBaseOffset(byte[].class);
                BYTE_ARRAY_BASE_OFFSET = iArrayBaseOffset;
                if (!"64".equals(System.getProperty("sun.arch.data.model")) || iArrayBaseOffset % 8 != 0 || unsafeM17674do.arrayIndexScale(byte[].class) != 1) {
                    throw new Error();
                }
            }

            /* renamed from: do, reason: not valid java name */
            private static Unsafe m17674do() {
                try {
                    try {
                        return Unsafe.getUnsafe();
                    } catch (PrivilegedActionException e) {
                        throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                    }
                } catch (SecurityException unused) {
                    return (Unsafe) AccessController.doPrivileged(new C0136do());
                }
            }

            @Override // java.lang.Enum
            public String toString() {
                return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
            }

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int iMin = Math.min(bArr.length, bArr2.length);
                int i = iMin & (-8);
                int i2 = 0;
                while (i2 < i) {
                    Unsafe unsafe = theUnsafe;
                    int i3 = BYTE_ARRAY_BASE_OFFSET;
                    long j = i2;
                    long j2 = unsafe.getLong(bArr, i3 + j);
                    long j3 = unsafe.getLong(bArr2, i3 + j);
                    if (j2 != j3) {
                        if (BIG_ENDIAN) {
                            return Cwhile.m17758do(j2, j3);
                        }
                        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j2 ^ j3) & (-8);
                        return ((int) ((j2 >>> iNumberOfTrailingZeros) & 255)) - ((int) ((j3 >>> iNumberOfTrailingZeros) & 255));
                    }
                    i2 += 8;
                }
                while (i2 < iMin) {
                    int iM17665if = Csuper.m17665if(bArr[i2], bArr2[i2]);
                    if (iM17665if != 0) {
                        return iM17665if;
                    }
                    i2++;
                }
                return bArr.length - bArr2.length;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static Comparator<byte[]> m17673do() {
            try {
                return (Comparator) Class.forName(f15520do).getEnumConstants()[0];
            } catch (Throwable unused) {
                return Csuper.m17656case();
            }
        }
    }

    private Csuper() {
    }

    @lf
    @o8
    /* renamed from: break, reason: not valid java name */
    public static byte m17655break(String str, int i) throws NumberFormatException {
        int i2 = Integer.parseInt((String) af1.m205continue(str), i);
        if ((i2 >> 8) == 0) {
            return (byte) i2;
        }
        throw new NumberFormatException("out of range: " + i2);
    }

    @af2
    /* renamed from: case, reason: not valid java name */
    public static Comparator<byte[]> m17656case() {
        return Cdo.EnumC0135do.INSTANCE;
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte m17657catch(long j) {
        if (j > m17670throw((byte) -1)) {
            return (byte) -1;
        }
        if (j < 0) {
            return (byte) 0;
        }
        return (byte) j;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m17658class(byte[] bArr) {
        af1.m205continue(bArr);
        m17659const(bArr, 0, bArr.length);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m17659const(byte[] bArr, int i, int i2) {
        af1.m205continue(bArr);
        af1.s(i, i2, bArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            bArr[i3] = m17663for(bArr[i3]);
        }
        Arrays.sort(bArr, i, i2);
        while (i < i2) {
            bArr[i] = m17663for(bArr[i]);
            i++;
        }
    }

    @lf
    /* renamed from: do, reason: not valid java name */
    public static byte m17660do(long j) {
        af1.m232throw((j >> 8) == 0, "out of range: %s", j);
        return (byte) j;
    }

    /* renamed from: else, reason: not valid java name */
    public static byte m17661else(byte... bArr) {
        af1.m220new(bArr.length > 0);
        int iM17670throw = m17670throw(bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            int iM17670throw2 = m17670throw(bArr[i]);
            if (iM17670throw2 > iM17670throw) {
                iM17670throw = iM17670throw2;
            }
        }
        return (byte) iM17670throw;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m17662final(byte[] bArr) {
        af1.m205continue(bArr);
        m17668super(bArr, 0, bArr.length);
    }

    /* renamed from: for, reason: not valid java name */
    private static byte m17663for(byte b) {
        return (byte) (b ^ 128);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte m17664goto(byte... bArr) {
        af1.m220new(bArr.length > 0);
        int iM17670throw = m17670throw(bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            int iM17670throw2 = m17670throw(bArr[i]);
            if (iM17670throw2 < iM17670throw) {
                iM17670throw = iM17670throw2;
            }
        }
        return (byte) iM17670throw;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m17665if(byte b, byte b2) {
        return m17670throw(b) - m17670throw(b2);
    }

    @o8
    /* renamed from: import, reason: not valid java name */
    public static String m17666import(byte b, int i) {
        af1.m202catch(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i);
        return Integer.toString(m17670throw(b), i);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m17667new(String str, byte... bArr) {
        af1.m205continue(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * (str.length() + 3));
        sb.append(m17670throw(bArr[0]));
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str);
            sb.append(m17672while(bArr[i]));
        }
        return sb.toString();
    }

    /* renamed from: super, reason: not valid java name */
    public static void m17668super(byte[] bArr, int i, int i2) {
        af1.m205continue(bArr);
        af1.s(i, i2, bArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            bArr[i3] = (byte) (bArr[i3] ^ Byte.MAX_VALUE);
        }
        Arrays.sort(bArr, i, i2);
        while (i < i2) {
            bArr[i] = (byte) (bArr[i] ^ Byte.MAX_VALUE);
            i++;
        }
    }

    @lf
    @o8
    /* renamed from: this, reason: not valid java name */
    public static byte m17669this(String str) {
        return m17655break(str, 10);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m17670throw(byte b) {
        return b & 255;
    }

    /* renamed from: try, reason: not valid java name */
    public static Comparator<byte[]> m17671try() {
        return Cdo.f15521if;
    }

    @o8
    /* renamed from: while, reason: not valid java name */
    public static String m17672while(byte b) {
        return m17666import(b, 10);
    }
}
