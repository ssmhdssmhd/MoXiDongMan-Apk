package android.support.v4;

import java.util.HashSet;
import java.util.List;
import rx.Observer;
import rx.exceptions.Cdo;
import rx.exceptions.Cif;

/* loaded from: classes4.dex */
public final class s80 {

    /* renamed from: do, reason: not valid java name */
    private static final int f6042do = 25;

    private s80() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7293case(Throwable th, b02<?> b02Var) {
        m7301try(th);
        b02Var.onError(th);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7294do(Throwable th, Throwable th2) {
        HashSet hashSet = new HashSet();
        int i = 0;
        while (th.getCause() != null) {
            int i2 = i + 1;
            if (i >= 25) {
                return;
            }
            th = th.getCause();
            if (!hashSet.contains(th.getCause())) {
                hashSet.add(th.getCause());
                i = i2;
            }
        }
        try {
            th.initCause(th2);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7295else(Throwable th, b02<?> b02Var, Object obj) {
        m7301try(th);
        b02Var.onError(Cif.addValueAsLastCause(th, obj));
    }

    /* renamed from: for, reason: not valid java name */
    public static RuntimeException m7296for(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new RuntimeException(th);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7297goto(Throwable th, Observer<?> observer) {
        m7301try(th);
        observer.onError(th);
    }

    /* renamed from: if, reason: not valid java name */
    public static Throwable m7298if(Throwable th) {
        int i = 0;
        while (th.getCause() != null) {
            int i2 = i + 1;
            if (i >= 25) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th = th.getCause();
            i = i2;
        }
        return th;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7299new(List<? extends Throwable> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (list.size() != 1) {
            throw new Cdo(list);
        }
        Throwable th = list.get(0);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new RuntimeException(th);
        }
        throw ((Error) th);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7300this(Throwable th, Observer<?> observer, Object obj) {
        m7301try(th);
        observer.onError(Cif.addValueAsLastCause(th, obj));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7301try(Throwable th) {
        if (th instanceof y61) {
            throw ((y61) th);
        }
        if (th instanceof x61) {
            throw ((x61) th);
        }
        if (th instanceof w61) {
            throw ((w61) th);
        }
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
