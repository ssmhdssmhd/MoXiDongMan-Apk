package com.google.common.hash;

import com.google.common.primitives.Cbreak;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class LittleEndianByteArray {

    /* renamed from: do, reason: not valid java name */
    private static final LittleEndianBytes f15135do;

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ boolean f15136if = false;

    public interface LittleEndianBytes {
        long getLongLittleEndian(byte[] bArr, int i);

        void putLongLittleEndian(byte[] bArr, int i, long j);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.hash.LittleEndianByteArray$for, reason: invalid class name */
    public static abstract class Cfor implements LittleEndianBytes {
        public static final Cfor UNSAFE_BIG_ENDIAN;
        public static final Cfor UNSAFE_LITTLE_ENDIAN;

        /* renamed from: do, reason: not valid java name */
        private static final Unsafe f15137do;

        /* renamed from: for, reason: not valid java name */
        private static final /* synthetic */ Cfor[] f15138for;

        /* renamed from: if, reason: not valid java name */
        private static final int f15139if;

        /* renamed from: com.google.common.hash.LittleEndianByteArray$for$do, reason: invalid class name */
        public enum Cdo extends Cfor {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public long getLongLittleEndian(byte[] bArr, int i) {
                return Cfor.f15137do.getLong(bArr, i + Cfor.f15139if);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public void putLongLittleEndian(byte[] bArr, int i, long j) {
                Cfor.f15137do.putLong(bArr, Cfor.f15139if + i, j);
            }
        }

        /* renamed from: com.google.common.hash.LittleEndianByteArray$for$for, reason: invalid class name and collision with other inner class name */
        public static class C0125for implements PrivilegedExceptionAction<Unsafe> {
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

        /* renamed from: com.google.common.hash.LittleEndianByteArray$for$if, reason: invalid class name */
        public enum Cif extends Cfor {
            public Cif(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public long getLongLittleEndian(byte[] bArr, int i) {
                return Long.reverseBytes(Cfor.f15137do.getLong(bArr, i + Cfor.f15139if));
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public void putLongLittleEndian(byte[] bArr, int i, long j) {
                Cfor.f15137do.putLong(bArr, i + Cfor.f15139if, Long.reverseBytes(j));
            }
        }

        static {
            Cdo cdo = new Cdo("UNSAFE_LITTLE_ENDIAN", 0);
            UNSAFE_LITTLE_ENDIAN = cdo;
            Cif cif = new Cif("UNSAFE_BIG_ENDIAN", 1);
            UNSAFE_BIG_ENDIAN = cif;
            f15138for = new Cfor[]{cdo, cif};
            Unsafe unsafeM16871do = m16871do();
            f15137do = unsafeM16871do;
            f15139if = unsafeM16871do.arrayBaseOffset(byte[].class);
            if (unsafeM16871do.arrayIndexScale(byte[].class) != 1) {
                throw new AssertionError();
            }
        }

        private Cfor(String str, int i) {
        }

        /* renamed from: do, reason: not valid java name */
        private static Unsafe m16871do() {
            try {
                try {
                    return Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                return (Unsafe) AccessController.doPrivileged(new C0125for());
            }
        }

        public static Cfor valueOf(String str) {
            return (Cfor) Enum.valueOf(Cfor.class, str);
        }

        public static Cfor[] values() {
            return (Cfor[]) f15138for.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.hash.LittleEndianByteArray$if, reason: invalid class name */
    public static abstract class Cif implements LittleEndianBytes {
        public static final Cif INSTANCE;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cif[] f15140do;

        /* renamed from: com.google.common.hash.LittleEndianByteArray$if$do, reason: invalid class name */
        public enum Cdo extends Cif {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public long getLongLittleEndian(byte[] bArr, int i) {
                return Cbreak.m17466break(bArr[i + 7], bArr[i + 6], bArr[i + 5], bArr[i + 4], bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
            }

            @Override // com.google.common.hash.LittleEndianByteArray.LittleEndianBytes
            public void putLongLittleEndian(byte[] bArr, int i, long j) {
                long j2 = 255;
                for (int i2 = 0; i2 < 8; i2++) {
                    bArr[i + i2] = (byte) ((j & j2) >> (i2 * 8));
                    j2 <<= 8;
                }
            }
        }

        static {
            Cdo cdo = new Cdo("INSTANCE", 0);
            INSTANCE = cdo;
            f15140do = new Cif[]{cdo};
        }

        private Cif(String str, int i) {
        }

        public static Cif valueOf(String str) {
            return (Cif) Enum.valueOf(Cif.class, str);
        }

        public static Cif[] values() {
            return (Cif[]) f15140do.clone();
        }
    }

    static {
        LittleEndianBytes littleEndianBytes = Cif.INSTANCE;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                littleEndianBytes = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? Cfor.UNSAFE_LITTLE_ENDIAN : Cfor.UNSAFE_BIG_ENDIAN;
            }
        } catch (Throwable unused) {
        }
        f15135do = littleEndianBytes;
    }

    private LittleEndianByteArray() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m16866do(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m16867for(byte[] bArr, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < Math.min(i2, 8); i3++) {
            j |= (bArr[i + i3] & 255) << (i3 * 8);
        }
        return j;
    }

    /* renamed from: if, reason: not valid java name */
    public static long m16868if(byte[] bArr, int i) {
        return f15135do.getLongLittleEndian(bArr, i);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m16869new(byte[] bArr, int i, long j) {
        f15135do.putLongLittleEndian(bArr, i, j);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m16870try() {
        return f15135do instanceof Cfor;
    }
}
