package com.google.common.hash;

import android.support.v4.b51;
import android.support.v4.li0;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

@li0
/* renamed from: com.google.common.hash.switch, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cswitch extends Number {

    /* renamed from: do, reason: not valid java name */
    private static final Unsafe f15208do;

    /* renamed from: for, reason: not valid java name */
    private static final long f15209for;

    /* renamed from: if, reason: not valid java name */
    private static final long f15210if;
    public volatile transient long base;
    public volatile transient int busy;

    @b51
    public volatile transient Cif[] cells;
    public static final ThreadLocal<int[]> threadHashCode = new ThreadLocal<>();
    public static final Random rng = new Random();
    public static final int NCPU = Runtime.getRuntime().availableProcessors();

    /* renamed from: com.google.common.hash.switch$do, reason: invalid class name */
    public static class Cdo implements PrivilegedExceptionAction<Unsafe> {
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

    /* renamed from: com.google.common.hash.switch$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: throw, reason: not valid java name */
        private static final Unsafe f15211throw;

        /* renamed from: while, reason: not valid java name */
        private static final long f15212while;

        /* renamed from: break, reason: not valid java name */
        public volatile long f15213break;

        /* renamed from: case, reason: not valid java name */
        public volatile long f15214case;

        /* renamed from: catch, reason: not valid java name */
        public volatile long f15215catch;

        /* renamed from: class, reason: not valid java name */
        public volatile long f15216class;

        /* renamed from: const, reason: not valid java name */
        public volatile long f15217const;

        /* renamed from: do, reason: not valid java name */
        public volatile long f15218do;

        /* renamed from: else, reason: not valid java name */
        public volatile long f15219else;

        /* renamed from: final, reason: not valid java name */
        public volatile long f15220final;

        /* renamed from: for, reason: not valid java name */
        public volatile long f15221for;

        /* renamed from: goto, reason: not valid java name */
        public volatile long f15222goto;

        /* renamed from: if, reason: not valid java name */
        public volatile long f15223if;

        /* renamed from: new, reason: not valid java name */
        public volatile long f15224new;

        /* renamed from: super, reason: not valid java name */
        public volatile long f15225super;

        /* renamed from: this, reason: not valid java name */
        public volatile long f15226this;

        /* renamed from: try, reason: not valid java name */
        public volatile long f15227try;

        static {
            try {
                Unsafe unsafeM16966do = Cswitch.m16966do();
                f15211throw = unsafeM16966do;
                f15212while = unsafeM16966do.objectFieldOffset(Cif.class.getDeclaredField("goto"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public Cif(long j) {
            this.f15222goto = j;
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m16968do(long j, long j2) {
            return f15211throw.compareAndSwapLong(this, f15212while, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafeM16966do = m16966do();
            f15208do = unsafeM16966do;
            f15210if = unsafeM16966do.objectFieldOffset(Cswitch.class.getDeclaredField("base"));
            f15209for = unsafeM16966do.objectFieldOffset(Cswitch.class.getDeclaredField("busy"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static Unsafe m16966do() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                throw new RuntimeException("Could not initialize intrinsics", e.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new Cdo());
        }
    }

    final boolean casBase(long j, long j2) {
        return f15208do.compareAndSwapLong(this, f15210if, j, j2);
    }

    final boolean casBusy() {
        return f15208do.compareAndSwapInt(this, f15209for, 0, 1);
    }

    abstract long fn(long j, long j2);

    final void internalReset(long j) {
        Cif[] cifArr = this.cells;
        this.base = j;
        if (cifArr != null) {
            for (Cif cif : cifArr) {
                if (cif != null) {
                    cif.f15222goto = j;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ee A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void retryUpdate(long j, @b51 int[] iArr, boolean z) {
        int iNextInt;
        int[] iArr2;
        boolean z2;
        int length;
        boolean z3;
        int length2;
        if (iArr == null) {
            iArr2 = new int[1];
            threadHashCode.set(iArr2);
            iNextInt = rng.nextInt();
            if (iNextInt == 0) {
                iNextInt = 1;
            }
            iArr2[0] = iNextInt;
        } else {
            iNextInt = iArr[0];
            iArr2 = iArr;
        }
        int i = iNextInt;
        boolean z4 = false;
        boolean z5 = z;
        while (true) {
            Cif[] cifArr = this.cells;
            if (cifArr != null && (length = cifArr.length) > 0) {
                Cif cif = cifArr[(length - 1) & i];
                if (cif == null) {
                    if (this.busy == 0) {
                        Cif cif2 = new Cif(j);
                        if (this.busy == 0 && casBusy()) {
                            try {
                                Cif[] cifArr2 = this.cells;
                                if (cifArr2 == null || (length2 = cifArr2.length) <= 0) {
                                    z3 = false;
                                    if (!z3) {
                                        return;
                                    }
                                } else {
                                    int i2 = (length2 - 1) & i;
                                    if (cifArr2[i2] == null) {
                                        cifArr2[i2] = cif2;
                                        z3 = true;
                                    }
                                    if (!z3) {
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    z4 = false;
                } else if (z5) {
                    long j2 = cif.f15222goto;
                    if (cif.m16968do(j2, fn(j2, j))) {
                        return;
                    }
                    if (length >= NCPU || this.cells != cifArr) {
                        z4 = false;
                    } else if (!z4) {
                        z4 = true;
                    } else if (this.busy == 0 && casBusy()) {
                        try {
                            if (this.cells == cifArr) {
                                Cif[] cifArr3 = new Cif[length << 1];
                                for (int i3 = 0; i3 < length; i3++) {
                                    cifArr3[i3] = cifArr[i3];
                                }
                                this.cells = cifArr3;
                            }
                            this.busy = 0;
                            z4 = false;
                        } finally {
                        }
                    }
                } else {
                    z5 = true;
                }
                int i4 = i ^ (i << 13);
                int i5 = i4 ^ (i4 >>> 17);
                i = i5 ^ (i5 << 5);
                iArr2[0] = i;
            } else if (this.busy == 0 && this.cells == cifArr && casBusy()) {
                try {
                    if (this.cells == cifArr) {
                        Cif[] cifArr4 = new Cif[2];
                        cifArr4[i & 1] = new Cif(j);
                        this.cells = cifArr4;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        return;
                    }
                } finally {
                }
            } else {
                long j3 = this.base;
                if (casBase(j3, fn(j3, j))) {
                    return;
                }
            }
        }
    }
}
