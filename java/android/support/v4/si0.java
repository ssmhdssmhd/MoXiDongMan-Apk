package android.support.v4;

import io.reactivex.Observer;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class si0 {
    private si0() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    public static <T> void m7410case(Subscriber<? super T> subscriber, T t, AtomicInteger atomicInteger, h4 h4Var) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            subscriber.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = h4Var.terminate();
                if (thTerminate != null) {
                    subscriber.onError(thTerminate);
                } else {
                    subscriber.onComplete();
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7411do(Observer<?> observer, AtomicInteger atomicInteger, h4 h4Var) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = h4Var.terminate();
            if (thTerminate != null) {
                observer.onError(thTerminate);
            } else {
                observer.onComplete();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7412for(Observer<?> observer, Throwable th, AtomicInteger atomicInteger, h4 h4Var) {
        if (!h4Var.addThrowable(th)) {
            jp1.l(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            observer.onError(h4Var.terminate());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7413if(Subscriber<?> subscriber, AtomicInteger atomicInteger, h4 h4Var) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = h4Var.terminate();
            if (thTerminate != null) {
                subscriber.onError(thTerminate);
            } else {
                subscriber.onComplete();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7414new(Subscriber<?> subscriber, Throwable th, AtomicInteger atomicInteger, h4 h4Var) {
        if (!h4Var.addThrowable(th)) {
            jp1.l(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            subscriber.onError(h4Var.terminate());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static <T> void m7415try(Observer<? super T> observer, T t, AtomicInteger atomicInteger, h4 h4Var) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            observer.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = h4Var.terminate();
                if (thTerminate != null) {
                    observer.onError(thTerminate);
                } else {
                    observer.onComplete();
                }
            }
        }
    }
}
