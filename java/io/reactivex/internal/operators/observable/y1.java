package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.zw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class y1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f27007for;

    /* renamed from: if, reason: not valid java name */
    public final long f27008if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f27009new;

    /* renamed from: io.reactivex.internal.operators.observable.y1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 786994795061867455L;
        public boolean done;
        public final Observer<? super T> downstream;
        public volatile boolean gate;
        public final long timeout;
        public final TimeUnit unit;
        public Disposable upstream;
        public final Ctry.Cfor worker;

        public Cdo(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.downstream = observer;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            this.worker.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.worker.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.gate || this.done) {
                return;
            }
            this.gate = true;
            this.downstream.onNext(t);
            Disposable disposable = get();
            if (disposable != null) {
                disposable.dispose();
            }
            io.reactivex.internal.disposables.Cdo.replace(this, this.worker.mo29362for(this, this.timeout, this.unit));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.gate = false;
        }
    }

    public y1(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Ctry ctry) {
        super(observableSource);
        this.f27008if = j;
        this.f27007for = timeUnit;
        this.f27009new = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(new zw1(observer), this.f27008if, this.f27007for, this.f27009new.mo4229if()));
    }
}
