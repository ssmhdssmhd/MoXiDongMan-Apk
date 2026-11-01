package com.uber.autodispose;

import android.support.v4.a51;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.uber.autodispose.public, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cpublic {

    /* renamed from: do, reason: not valid java name */
    private static final Throwable f20795do = new Cdo();

    /* renamed from: com.uber.autodispose.public$do, reason: invalid class name */
    public static final class Cdo extends Throwable {
        public Cdo() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    private Cpublic() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m24640do(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        do {
            th2 = atomicReference.get();
            if (th2 == f20795do) {
                return false;
            }
        } while (!atomicReference.compareAndSet(th2, th2 == null ? th : new io.reactivex.exceptions.Cdo(th2, th)));
        return true;
    }

    @a51
    /* renamed from: if, reason: not valid java name */
    public static Throwable m24641if(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = f20795do;
        return th != th2 ? atomicReference.getAndSet(th2) : th;
    }
}
