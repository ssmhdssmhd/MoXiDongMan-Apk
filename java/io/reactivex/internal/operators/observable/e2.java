package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class e2<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26515if;

    /* renamed from: io.reactivex.internal.operators.observable.e2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1015244841293359600L;
        public final Observer<? super T> downstream;
        public final Ctry scheduler;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.observable.e2$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0318do implements Runnable {
            public RunnableC0318do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.upstream.dispose();
            }
        }

        public Cdo(Observer<? super T> observer, Ctry ctry) {
            this.downstream = observer;
            this.scheduler = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.scheduler.mo29697new(new RunnableC0318do());
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (get()) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public e2(ObservableSource<T> observableSource, Ctry ctry) {
        super(observableSource);
        this.f26515if = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26515if));
    }
}
