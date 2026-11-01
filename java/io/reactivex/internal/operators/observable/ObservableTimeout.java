package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObservableTimeout<T, U, V> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<V>> f26356for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<U> f26357if;

    /* renamed from: new, reason: not valid java name */
    public final ObservableSource<? extends T> f26358new;

    public interface TimeoutSelectorSupport extends ObservableTimeoutTimed.TimeoutSupport {
        void onTimeoutError(long j, Throwable th);
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeout$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 8708641127342403073L;
        public final long idx;
        public final TimeoutSelectorSupport parent;

        public Cdo(long j, TimeoutSelectorSupport timeoutSelectorSupport) {
            this.idx = j;
            this.parent = timeoutSelectorSupport;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Object obj = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (obj != cdo) {
                lazySet(cdo);
                this.parent.onTimeout(this.idx);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Object obj = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (obj == cdo) {
                jp1.l(th);
            } else {
                lazySet(cdo);
                this.parent.onTimeoutError(this.idx, th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            Disposable disposable = (Disposable) get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable != cdo) {
                disposable.dispose();
                lazySet(cdo);
                this.parent.onTimeout(this.idx);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeout$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public final Observer<? super T> downstream;
        public final Function<? super T, ? extends ObservableSource<?>> itemTimeoutIndicator;
        public final tw1 task = new tw1();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cfor(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<?>> function) {
            this.downstream = observer;
            this.itemTimeoutIndicator = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            this.task.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
            } else {
                this.task.dispose();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    Disposable disposable = this.task.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.downstream.onNext(t);
                    try {
                        ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.itemTimeoutIndicator.apply(t), "The itemTimeoutIndicator returned a null ObservableSource.");
                        Cdo cdo = new Cdo(j2, this);
                        if (this.task.replace(cdo)) {
                            observableSource.subscribe(cdo);
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.upstream.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.downstream.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                this.downstream.onError(new TimeoutException());
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        public void onTimeoutError(long j, Throwable th) {
            if (!compareAndSet(j, Long.MAX_VALUE)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                this.downstream.onError(th);
            }
        }

        public void startFirstTimeout(ObservableSource<?> observableSource) {
            if (observableSource != null) {
                Cdo cdo = new Cdo(0L, this);
                if (this.task.replace(cdo)) {
                    observableSource.subscribe(cdo);
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeout$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = -7508389464265974549L;
        public final Observer<? super T> downstream;
        public ObservableSource<? extends T> fallback;
        public final Function<? super T, ? extends ObservableSource<?>> itemTimeoutIndicator;
        public final tw1 task = new tw1();
        public final AtomicLong index = new AtomicLong();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cif(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<?>> function, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.itemTimeoutIndicator = function;
            this.fallback = observableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.task.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.task.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.task.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.index.compareAndSet(j, j2)) {
                    Disposable disposable = this.task.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.downstream.onNext(t);
                    try {
                        ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.itemTimeoutIndicator.apply(t), "The itemTimeoutIndicator returned a null ObservableSource.");
                        Cdo cdo = new Cdo(j2, this);
                        if (this.task.replace(cdo)) {
                            observableSource.subscribe(cdo);
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.upstream.get().dispose();
                        this.index.getAndSet(Long.MAX_VALUE);
                        this.downstream.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
                ObservableSource<? extends T> observableSource = this.fallback;
                this.fallback = null;
                observableSource.subscribe(new ObservableTimeoutTimed.Cdo(this.downstream, this));
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        public void onTimeoutError(long j, Throwable th) {
            if (!this.index.compareAndSet(j, Long.MAX_VALUE)) {
                jp1.l(th);
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                this.downstream.onError(th);
            }
        }

        public void startFirstTimeout(ObservableSource<?> observableSource) {
            if (observableSource != null) {
                Cdo cdo = new Cdo(0L, this);
                if (this.task.replace(cdo)) {
                    observableSource.subscribe(cdo);
                }
            }
        }
    }

    public ObservableTimeout(Cnew<T> cnew, ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        super(cnew);
        this.f26357if = observableSource;
        this.f26356for = function;
        this.f26358new = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        if (this.f26358new == null) {
            Cfor cfor = new Cfor(observer, this.f26356for);
            observer.onSubscribe(cfor);
            cfor.startFirstTimeout(this.f26357if);
            this.f26500do.subscribe(cfor);
            return;
        }
        Cif cif = new Cif(observer, this.f26356for, this.f26358new);
        observer.onSubscribe(cif);
        cif.startFirstTimeout(this.f26357if);
        this.f26500do.subscribe(cif);
    }
}
