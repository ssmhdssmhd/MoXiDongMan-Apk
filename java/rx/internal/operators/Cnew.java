package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Subscription;

/* renamed from: rx.internal.operators.new, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cnew {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.internal.operators.new$do, reason: invalid class name */
    public static class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f35160do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35161for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35162if;

        public Cdo(CountDownLatch countDownLatch, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.f35160do = countDownLatch;
            this.f35162if = atomicReference;
            this.f35161for = atomicReference2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35160do.countDown();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35162if.compareAndSet(null, th);
            this.f35160do.countDown();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35161for.set(t);
        }
    }

    private Cnew() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Future<T> m38638do(Observable<? extends T> observable) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        return new Cif(countDownLatch, observable.y3().Y3(new Cdo(countDownLatch, atomicReference2, atomicReference)), atomicReference2, atomicReference);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.internal.operators.new$if, reason: invalid class name */
    public static class Cif<T> implements Future<T> {

        /* renamed from: do, reason: not valid java name */
        private volatile boolean f35163do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Subscription f35164for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f35165if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35166new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35167try;

        public Cif(CountDownLatch countDownLatch, Subscription subscription, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.f35165if = countDownLatch;
            this.f35164for = subscription;
            this.f35166new = atomicReference;
            this.f35167try = atomicReference2;
        }

        /* renamed from: do, reason: not valid java name */
        private T m38639do() throws ExecutionException {
            Throwable th = (Throwable) this.f35166new.get();
            if (th != null) {
                throw new ExecutionException("Observable onError", th);
            }
            if (this.f35163do) {
                throw new CancellationException("Subscription unsubscribed");
            }
            return (T) this.f35167try.get();
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (this.f35165if.getCount() <= 0) {
                return false;
            }
            this.f35163do = true;
            this.f35164for.unsubscribe();
            this.f35165if.countDown();
            return true;
        }

        @Override // java.util.concurrent.Future
        public T get() throws ExecutionException, InterruptedException {
            this.f35165if.await();
            return m38639do();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f35163do;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f35165if.getCount() == 0;
        }

        @Override // java.util.concurrent.Future
        public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            if (this.f35165if.await(j, timeUnit)) {
                return m38639do();
            }
            throw new TimeoutException("Timed out after " + timeUnit.toMillis(j) + "ms waiting for underlying Observable.");
        }
    }
}
