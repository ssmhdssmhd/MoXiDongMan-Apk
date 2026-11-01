package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class g0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<? extends T> f26557if;

    /* renamed from: io.reactivex.internal.operators.observable.g0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable {
        public static final int OTHER_STATE_CONSUMED_OR_EMPTY = 2;
        public static final int OTHER_STATE_HAS_VALUE = 1;
        private static final long serialVersionUID = -4592979584110982903L;
        public volatile boolean disposed;
        public final Observer<? super T> downstream;
        public volatile boolean mainDone;
        public volatile int otherState;
        public volatile SimplePlainQueue<T> queue;
        public T singleItem;
        public final AtomicReference<Disposable> mainDisposable = new AtomicReference<>();
        public final C0322do<T> otherObserver = new C0322do<>(this);
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.observable.g0$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0322do<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;
            public final Cdo<T> parent;

            public C0322do(Cdo<T> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.parent.otherSuccess(t);
            }
        }

        public Cdo(Observer<? super T> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            io.reactivex.internal.disposables.Cdo.dispose(this.mainDisposable);
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            if (getAndIncrement() == 0) {
                this.queue = null;
                this.singleItem = null;
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            Observer<? super T> observer = this.downstream;
            int iAddAndGet = 1;
            while (!this.disposed) {
                if (this.error.get() != null) {
                    this.singleItem = null;
                    this.queue = null;
                    observer.onError(this.error.terminate());
                    return;
                }
                int i = this.otherState;
                if (i == 1) {
                    T t = this.singleItem;
                    this.singleItem = null;
                    this.otherState = 2;
                    observer.onNext(t);
                    i = 2;
                }
                boolean z = this.mainDone;
                SimplePlainQueue<T> simplePlainQueue = this.queue;
                R.bool boolVarPoll = simplePlainQueue != null ? simplePlainQueue.poll() : null;
                boolean z2 = boolVarPoll == null;
                if (z && z2 && i == 2) {
                    this.queue = null;
                    observer.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(boolVarPoll);
                }
            }
            this.singleItem = null;
            this.queue = null;
        }

        public SimplePlainQueue<T> getOrCreateQueue() {
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                return simplePlainQueue;
            }
            e12 e12Var = new e12(Cnew.bufferSize());
            this.queue = e12Var;
            return e12Var;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.mainDisposable.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.mainDone = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
                drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                this.downstream.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                getOrCreateQueue().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.mainDisposable, disposable);
        }

        public void otherError(Throwable th) {
            if (!this.error.addThrowable(th)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.mainDisposable);
                drain();
            }
        }

        public void otherSuccess(T t) {
            if (compareAndSet(0, 1)) {
                this.downstream.onNext(t);
                this.otherState = 2;
            } else {
                this.singleItem = t;
                this.otherState = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }
    }

    public g0(Cnew<T> cnew, SingleSource<? extends T> singleSource) {
        super(cnew);
        this.f26557if = singleSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        this.f26500do.subscribe(cdo);
        this.f26557if.subscribe(cdo.otherObserver);
    }
}
