package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObservableTimeoutTimed<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26359for;

    /* renamed from: if, reason: not valid java name */
    public final long f26360if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26361new;

    /* renamed from: try, reason: not valid java name */
    public final ObservableSource<? extends T> f26362try;

    public interface TimeoutSupport {
        void onTimeout(long j);
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeoutTimed$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26363do;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Disposable> f26364if;

        public Cdo(Observer<? super T> observer, AtomicReference<Disposable> atomicReference) {
            this.f26363do = observer;
            this.f26364if = atomicReference;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26363do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26363do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26363do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f26364if, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeoutTimed$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public final Observer<? super T> downstream;
        public final long timeout;
        public final TimeUnit unit;
        public final Ctry.Cfor worker;
        public final tw1 task = new tw1();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cfor(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.downstream = observer;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            this.worker.dispose();
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
                this.worker.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t);
                    startTimeout(j2);
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
                this.downstream.onError(new TimeoutException(Ccase.m29717try(this.timeout, this.unit)));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.mo29362for(new Cnew(j, this), this.timeout, this.unit));
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeoutTimed$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public final Observer<? super T> downstream;
        public ObservableSource<? extends T> fallback;
        public final long timeout;
        public final TimeUnit unit;
        public final Ctry.Cfor worker;
        public final tw1 task = new tw1();
        public final AtomicLong index = new AtomicLong();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cif(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
            this.fallback = observableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.worker.dispose();
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
                this.worker.dispose();
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
            this.worker.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.index.compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t);
                    startTimeout(j2);
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
                observableSource.subscribe(new Cdo(this.downstream, this));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.mo29362for(new Cnew(j, this), this.timeout, this.unit));
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableTimeoutTimed$new, reason: invalid class name */
    public static final class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final TimeoutSupport f26365do;

        /* renamed from: if, reason: not valid java name */
        public final long f26366if;

        public Cnew(long j, TimeoutSupport timeoutSupport) {
            this.f26366if = j;
            this.f26365do = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f26365do.onTimeout(this.f26366if);
        }
    }

    public ObservableTimeoutTimed(io.reactivex.Cnew<T> cnew, long j, TimeUnit timeUnit, Ctry ctry, ObservableSource<? extends T> observableSource) {
        super(cnew);
        this.f26360if = j;
        this.f26359for = timeUnit;
        this.f26361new = ctry;
        this.f26362try = observableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        if (this.f26362try == null) {
            Cfor cfor = new Cfor(observer, this.f26360if, this.f26359for, this.f26361new.mo4229if());
            observer.onSubscribe(cfor);
            cfor.startTimeout(0L);
            this.f26500do.subscribe(cfor);
            return;
        }
        Cif cif = new Cif(observer, this.f26360if, this.f26359for, this.f26361new.mo4229if(), this.f26362try);
        observer.onSubscribe(cif);
        cif.startTimeout(0L);
        this.f26500do.subscribe(cif);
    }
}
