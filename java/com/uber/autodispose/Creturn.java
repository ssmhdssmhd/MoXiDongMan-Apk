package com.uber.autodispose;

import android.support.v4.jp1;
import io.reactivex.Observer;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;

/* renamed from: com.uber.autodispose.return, reason: invalid class name */
/* loaded from: classes2.dex */
final class Creturn {
    private Creturn() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    public static <T> boolean m24642case(Subscriber<? super T> subscriber, T t, AtomicInteger atomicInteger, Cdo cdo) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            subscriber.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = cdo.terminate();
                if (thTerminate != null) {
                    subscriber.onError(thTerminate);
                } else {
                    subscriber.onComplete();
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m24643do(Observer<?> observer, AtomicInteger atomicInteger, Cdo cdo) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = cdo.terminate();
            if (thTerminate != null) {
                observer.onError(thTerminate);
            } else {
                observer.onComplete();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m24644for(Observer<?> observer, Throwable th, AtomicInteger atomicInteger, Cdo cdo) {
        if (!cdo.addThrowable(th)) {
            jp1.l(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            observer.onError(cdo.terminate());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m24645if(Subscriber<?> subscriber, AtomicInteger atomicInteger, Cdo cdo) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = cdo.terminate();
            if (thTerminate != null) {
                subscriber.onError(thTerminate);
            } else {
                subscriber.onComplete();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m24646new(Subscriber<?> subscriber, Throwable th, AtomicInteger atomicInteger, Cdo cdo) {
        if (!cdo.addThrowable(th)) {
            jp1.l(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            subscriber.onError(cdo.terminate());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static <T> boolean m24647try(Observer<? super T> observer, T t, AtomicInteger atomicInteger, Cdo cdo) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            observer.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = cdo.terminate();
                if (thTerminate != null) {
                    observer.onError(thTerminate);
                } else {
                    observer.onComplete();
                }
                return true;
            }
        }
        return false;
    }
}
