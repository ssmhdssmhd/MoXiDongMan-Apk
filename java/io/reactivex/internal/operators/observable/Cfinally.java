package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.mf;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableOnSubscribe<T> f26549do;

    /* renamed from: io.reactivex.internal.operators.observable.finally$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements ObservableEmitter<T>, Disposable {
        private static final long serialVersionUID = -3434801548987643227L;
        public final Observer<? super T> observer;

        public Cdo(Observer<? super T> observer) {
            this.observer = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.ObservableEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            try {
                this.observer.onComplete();
            } finally {
                dispose();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                if (isDisposed()) {
                    return;
                }
                this.observer.onNext(t);
            }
        }

        @Override // io.reactivex.ObservableEmitter
        public ObservableEmitter<T> serialize() {
            return new Cif(this);
        }

        @Override // io.reactivex.ObservableEmitter
        public void setCancellable(Cancellable cancellable) {
            setDisposable(new mf(cancellable));
        }

        @Override // io.reactivex.ObservableEmitter
        public void setDisposable(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.set(this, disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Cdo.class.getSimpleName(), super.toString());
        }

        @Override // io.reactivex.ObservableEmitter
        public boolean tryOnError(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.observer.onError(th);
                dispose();
                return true;
            } catch (Throwable th2) {
                dispose();
                throw th2;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.finally$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements ObservableEmitter<T> {
        private static final long serialVersionUID = 4883307006032401862L;
        public volatile boolean done;
        public final ObservableEmitter<T> emitter;
        public final h4 error = new h4();
        public final e12<T> queue = new e12<>(16);

        public Cif(ObservableEmitter<T> observableEmitter) {
            this.emitter = observableEmitter;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        public void drainLoop() {
            ObservableEmitter<T> observableEmitter = this.emitter;
            e12<T> e12Var = this.queue;
            h4 h4Var = this.error;
            int iAddAndGet = 1;
            while (!observableEmitter.isDisposed()) {
                if (h4Var.get() != null) {
                    e12Var.clear();
                    observableEmitter.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                T tPoll = e12Var.poll();
                boolean z2 = tPoll == null;
                if (z && z2) {
                    observableEmitter.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observableEmitter.onNext(tPoll);
                }
            }
            e12Var.clear();
        }

        @Override // io.reactivex.ObservableEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.emitter.isDisposed();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (this.emitter.isDisposed() || this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.emitter.isDisposed() || this.done) {
                return;
            }
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.emitter.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                e12<T> e12Var = this.queue;
                synchronized (e12Var) {
                    e12Var.offer(t);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.ObservableEmitter
        public ObservableEmitter<T> serialize() {
            return this;
        }

        @Override // io.reactivex.ObservableEmitter
        public void setCancellable(Cancellable cancellable) {
            this.emitter.setCancellable(cancellable);
        }

        @Override // io.reactivex.ObservableEmitter
        public void setDisposable(Disposable disposable) {
            this.emitter.setDisposable(disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.emitter.toString();
        }

        @Override // io.reactivex.ObservableEmitter
        public boolean tryOnError(Throwable th) {
            if (!this.emitter.isDisposed() && !this.done) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.error.addThrowable(th)) {
                    this.done = true;
                    drain();
                    return true;
                }
            }
            return false;
        }
    }

    public Cfinally(ObservableOnSubscribe<T> observableOnSubscribe) {
        this.f26549do = observableOnSubscribe;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        try {
            this.f26549do.subscribe(cdo);
        } catch (Throwable th) {
            t80.m7781if(th);
            cdo.onError(th);
        }
    }
}
