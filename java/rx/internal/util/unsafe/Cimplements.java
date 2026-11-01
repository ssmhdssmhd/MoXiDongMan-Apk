package rx.internal.util.unsafe;

import android.support.v4.j32;
import java.lang.reflect.Field;
import sun.misc.Unsafe;

@j32
/* renamed from: rx.internal.util.unsafe.implements, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cimplements {

    /* renamed from: do, reason: not valid java name */
    public static final Unsafe f35953do;

    /* renamed from: if, reason: not valid java name */
    private static final boolean f35954if;

    static {
        f35954if = System.getProperty("rx.unsafe-disable") != null;
        Unsafe unsafe = null;
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            unsafe = (Unsafe) declaredField.get(null);
        } catch (Throwable unused) {
        }
        f35953do = unsafe;
    }

    private Cimplements() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m38984case() {
        return (f35953do == null || f35954if) ? false : true;
    }

    /* renamed from: do, reason: not valid java name */
    public static long m38985do(Class<?> cls, String str) throws NoSuchFieldException {
        try {
            return f35953do.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            InternalError internalError = new InternalError();
            internalError.initCause(e);
            throw internalError;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m38986for(Object obj, long j, int i) {
        Unsafe unsafe;
        int intVolatile;
        do {
            unsafe = f35953do;
            intVolatile = unsafe.getIntVolatile(obj, j);
        } while (!unsafe.compareAndSwapInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m38987if(Object obj, long j, int i, int i2) {
        return f35953do.compareAndSwapInt(obj, j, i, i2);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m38988new(Object obj, long j) {
        Unsafe unsafe;
        int intVolatile;
        do {
            unsafe = f35953do;
            intVolatile = unsafe.getIntVolatile(obj, j);
        } while (!unsafe.compareAndSwapInt(obj, j, intVolatile, intVolatile + 1));
        return intVolatile;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m38989try(Object obj, long j, int i) {
        Unsafe unsafe;
        int intVolatile;
        do {
            unsafe = f35953do;
            intVolatile = unsafe.getIntVolatile(obj, j);
        } while (!unsafe.compareAndSwapInt(obj, j, intVolatile, i));
        return intVolatile;
    }
}
