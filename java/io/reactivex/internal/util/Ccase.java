package io.reactivex.internal.util;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.Cclass;

/* renamed from: io.reactivex.internal.util.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final Throwable f27435do = new Cdo();

    /* renamed from: io.reactivex.internal.util.case$do, reason: invalid class name */
    public static final class Cdo extends Throwable {
        private static final long serialVersionUID = -4649703670690200604L;

        public Cdo() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    private Ccase() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static RuntimeException m29712case(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m29713do(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        do {
            th2 = atomicReference.get();
            if (th2 == f27435do) {
                return false;
            }
        } while (!atomicReference.compareAndSet(th2, th2 == null ? th : new io.reactivex.exceptions.Cdo(th2, th)));
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Throwable m29714for(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = f27435do;
        return th != th2 ? atomicReference.getAndSet(th2) : th;
    }

    /* renamed from: if, reason: not valid java name */
    public static List<Throwable> m29715if(Throwable th) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.offer(th);
        while (!arrayDeque.isEmpty()) {
            Throwable th2 = (Throwable) arrayDeque.removeFirst();
            if (th2 instanceof io.reactivex.exceptions.Cdo) {
                List<Throwable> exceptions = ((io.reactivex.exceptions.Cdo) th2).getExceptions();
                for (int size = exceptions.size() - 1; size >= 0; size--) {
                    arrayDeque.offerFirst(exceptions.get(size));
                }
            } else {
                arrayList.add(th2);
            }
        }
        return arrayList;
    }

    /* renamed from: new, reason: not valid java name */
    public static <E extends Throwable> Exception m29716new(Throwable th) throws Throwable {
        if (th instanceof Exception) {
            return (Exception) th;
        }
        throw th;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m29717try(long j, TimeUnit timeUnit) {
        return "The source did not signal an event for " + j + Cclass.f28652do + timeUnit.toString().toLowerCase() + " and has been terminated.";
    }
}
