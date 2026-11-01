package android.support.v4;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class ib0 implements Runnable {

    /* renamed from: case, reason: not valid java name */
    @b51
    private static final Constructor<Thread> f2657case;

    /* renamed from: else, reason: not valid java name */
    @b51
    private static final Field f2658else;

    /* renamed from: new, reason: not valid java name */
    private static final Logger f2659new = Logger.getLogger(ib0.class.getName());

    /* renamed from: try, reason: not valid java name */
    private static final String f2660try = "com.google.common.base.FinalizableReference";

    /* renamed from: do, reason: not valid java name */
    private final WeakReference<Class<?>> f2661do;

    /* renamed from: for, reason: not valid java name */
    private final ReferenceQueue<Object> f2662for;

    /* renamed from: if, reason: not valid java name */
    private final PhantomReference<Object> f2663if;

    static {
        Constructor<Thread> constructorM3343if = m3343if();
        f2657case = constructorM3343if;
        f2658else = constructorM3343if == null ? m3344new() : null;
    }

    private ib0(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.f2662for = referenceQueue;
        this.f2661do = new WeakReference<>(cls);
        this.f2663if = phantomReference;
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m3341do(Reference<?> reference) {
        Method methodM3342for = m3342for();
        if (methodM3342for == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f2663if) {
                return false;
            }
            try {
                methodM3342for.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                f2659new.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.f2662for.poll();
        } while (reference != null);
        return true;
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    private Method m3342for() {
        Class<?> cls = this.f2661do.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", new Class[0]);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    @b51
    /* renamed from: if, reason: not valid java name */
    private static Constructor<Thread> m3343if() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    @b51
    /* renamed from: new, reason: not valid java name */
    private static Field m3344new() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            f2659new.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3345try(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        Thread thread;
        if (!cls.getName().equals(f2660try)) {
            throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
        }
        ib0 ib0Var = new ib0(cls, referenceQueue, phantomReference);
        String name = ib0.class.getName();
        Constructor<Thread> constructor = f2657case;
        if (constructor != null) {
            try {
                thread = constructor.newInstance(null, ib0Var, name, 0L, Boolean.FALSE);
            } catch (Throwable th) {
                f2659new.log(Level.INFO, "Failed to create a thread without inherited thread-local values", th);
            }
        } else {
            thread = null;
        }
        if (thread == null) {
            thread = new Thread(null, ib0Var, name);
        }
        thread.setDaemon(true);
        try {
            Field field = f2658else;
            if (field != null) {
                field.set(thread, null);
            }
        } catch (Throwable th2) {
            f2659new.log(Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", th2);
        }
        thread.start();
    }

    @Override // java.lang.Runnable
    public void run() {
        while (m3341do(this.f2662for.remove())) {
        }
    }
}
