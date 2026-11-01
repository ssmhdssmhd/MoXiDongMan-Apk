package rx.internal.util;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: rx.internal.util.do, reason: invalid class name */
/* loaded from: classes4.dex */
public enum Cdo {
    ;


    /* renamed from: do, reason: not valid java name */
    private static final Throwable f35800do = new Throwable("Terminated");

    public static boolean addThrowable(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        Throwable cdo;
        do {
            th2 = atomicReference.get();
            if (th2 == f35800do) {
                return false;
            }
            if (th2 == null) {
                cdo = th;
            } else if (th2 instanceof rx.exceptions.Cdo) {
                ArrayList arrayList = new ArrayList(((rx.exceptions.Cdo) th2).getExceptions());
                arrayList.add(th);
                cdo = new rx.exceptions.Cdo(arrayList);
            } else {
                cdo = new rx.exceptions.Cdo(th2, th);
            }
        } while (!atomicReference.compareAndSet(th2, cdo));
        return true;
    }

    public static boolean isTerminated(AtomicReference<Throwable> atomicReference) {
        return isTerminated(atomicReference.get());
    }

    public static Throwable terminate(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = f35800do;
        return th != th2 ? atomicReference.getAndSet(th2) : th;
    }

    public static boolean isTerminated(Throwable th) {
        return th == f35800do;
    }
}
