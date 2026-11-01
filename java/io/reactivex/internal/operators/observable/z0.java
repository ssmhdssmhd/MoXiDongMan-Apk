package io.reactivex.internal.operators.observable;

import android.support.v4.zw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class z0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f27016for;

    /* renamed from: if, reason: not valid java name */
    public final long f27017if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f27018new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f27019try;

    /* renamed from: io.reactivex.internal.operators.observable.z0$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T> {
        private static final long serialVersionUID = -7139995637533111443L;
        public final AtomicInteger wip;

        public Cdo(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry ctry) {
            super(observer, j, timeUnit, ctry);
            this.wip = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.observable.z0.Cfor
        public void complete() {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.downstream.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wip.incrementAndGet() == 2) {
                emit();
                if (this.wip.decrementAndGet() == 0) {
                    this.downstream.onComplete();
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.z0$for, reason: invalid class name */
    public static abstract class Cfor<T> extends AtomicReference<T> implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;
        public final Observer<? super T> downstream;
        public final long period;
        public final Ctry scheduler;
        public final AtomicReference<Disposable> timer = new AtomicReference<>();
        public final TimeUnit unit;
        public Disposable upstream;

        public Cfor(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry ctry) {
            this.downstream = observer;
            this.period = j;
            this.unit = timeUnit;
            this.scheduler = ctry;
        }

        public void cancelTimer() {
            io.reactivex.internal.disposables.Cdo.dispose(this.timer);
        }

        public abstract void complete();

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancelTimer();
            this.upstream.dispose();
        }

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.downstream.onNext(andSet);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            cancelTimer();
            complete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            cancelTimer();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
                Ctry ctry = this.scheduler;
                long j = this.period;
                io.reactivex.internal.disposables.Cdo.replace(this.timer, ctry.mo29689case(this, j, j, this.unit));
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.z0$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        public Cif(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry ctry) {
            super(observer, j, timeUnit, ctry);
        }

        @Override // io.reactivex.internal.operators.observable.z0.Cfor
        public void complete() {
            this.downstream.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            emit();
        }
    }

    public z0(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(observableSource);
        this.f27017if = j;
        this.f27016for = timeUnit;
        this.f27018new = ctry;
        this.f27019try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        zw1 zw1Var = new zw1(observer);
        if (this.f27019try) {
            this.f26500do.subscribe(new Cdo(zw1Var, this.f27017if, this.f27016for, this.f27018new));
        } else {
            this.f26500do.subscribe(new Cif(zw1Var, this.f27017if, this.f27016for, this.f27018new));
        }
    }
}
