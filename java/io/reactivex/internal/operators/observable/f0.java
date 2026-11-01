package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class f0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<? extends T> f26529if;

    /* renamed from: io.reactivex.internal.operators.observable.f0$do, reason: invalid class name */
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
        public final C0320do<T> otherObserver = new C0320do<>(this);
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.observable.f0$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0320do<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;
            public final Cdo<T> parent;

            public C0320do(Cdo<T> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.otherComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
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

        public void otherComplete() {
            this.otherState = 2;
            drain();
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

    public f0(Cnew<T> cnew, MaybeSource<? extends T> maybeSource) {
        super(cnew);
        this.f26529if = maybeSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        this.f26500do.subscribe(cdo);
        this.f26529if.subscribe(cdo.otherObserver);
    }
}
