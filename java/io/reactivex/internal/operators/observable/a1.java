package io.reactivex.internal.operators.observable;

import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class a1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f26378for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<?> f26379if;

    /* renamed from: io.reactivex.internal.operators.observable.a1$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T> {
        private static final long serialVersionUID = -3029755663834015785L;
        public volatile boolean done;
        public final AtomicInteger wip;

        public Cdo(Observer<? super T> observer, ObservableSource<?> observableSource) {
            super(observer, observableSource);
            this.wip = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.observable.a1.Cfor
        public void completion() {
            this.done = true;
            if (this.wip.getAndIncrement() == 0) {
                emit();
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.a1.Cfor
        public void run() {
            if (this.wip.getAndIncrement() == 0) {
                do {
                    boolean z = this.done;
                    emit();
                    if (z) {
                        this.downstream.onComplete();
                        return;
                    }
                } while (this.wip.decrementAndGet() != 0);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.a1$for, reason: invalid class name */
    public static abstract class Cfor<T> extends AtomicReference<T> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -3517602651313910099L;
        public final Observer<? super T> downstream;
        public final AtomicReference<Disposable> other = new AtomicReference<>();
        public final ObservableSource<?> sampler;
        public Disposable upstream;

        public Cfor(Observer<? super T> observer, ObservableSource<?> observableSource) {
            this.downstream = observer;
            this.sampler = observableSource;
        }

        public void complete() {
            this.upstream.dispose();
            completion();
        }

        public abstract void completion();

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            this.upstream.dispose();
        }

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.downstream.onNext(andSet);
            }
        }

        public void error(Throwable th) {
            this.upstream.dispose();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.other.get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            completion();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
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
                if (this.other.get() == null) {
                    this.sampler.subscribe(new Cnew(this));
                }
            }
        }

        public abstract void run();

        public boolean setOther(Disposable disposable) {
            return io.reactivex.internal.disposables.Cdo.setOnce(this.other, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.a1$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        public Cif(Observer<? super T> observer, ObservableSource<?> observableSource) {
            super(observer, observableSource);
        }

        @Override // io.reactivex.internal.operators.observable.a1.Cfor
        public void completion() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.a1.Cfor
        public void run() {
            emit();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.a1$new, reason: invalid class name */
    public static final class Cnew<T> implements Observer<Object> {

        /* renamed from: do, reason: not valid java name */
        public final Cfor<T> f26380do;

        public Cnew(Cfor<T> cfor) {
            this.f26380do = cfor;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26380do.complete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26380do.error(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f26380do.run();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26380do.setOther(disposable);
        }
    }

    public a1(ObservableSource<T> observableSource, ObservableSource<?> observableSource2, boolean z) {
        super(observableSource);
        this.f26379if = observableSource2;
        this.f26378for = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        zw1 zw1Var = new zw1(observer);
        if (this.f26378for) {
            this.f26500do.subscribe(new Cdo(zw1Var, this.f26379if));
        } else {
            this.f26500do.subscribe(new Cif(zw1Var, this.f26379if));
        }
    }
}
