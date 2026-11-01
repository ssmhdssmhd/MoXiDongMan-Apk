package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class l2<T, U, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final ObservableSource<? extends U> f26698for;

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<? super T, ? super U, ? extends R> f26699if;

    /* renamed from: io.reactivex.internal.operators.observable.l2$do, reason: invalid class name */
    public static final class Cdo<T, U, R> extends AtomicReference<U> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -312246233408980075L;
        public final BiFunction<? super T, ? super U, ? extends R> combiner;
        public final Observer<? super R> downstream;
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();
        public final AtomicReference<Disposable> other = new AtomicReference<>();

        public Cdo(Observer<? super R> observer, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.downstream = observer;
            this.combiner = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            U u = get();
            if (u != null) {
                try {
                    this.downstream.onNext(io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply(t, u), "The combiner returned a null value"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    dispose();
                    this.downstream.onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        public void otherError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            this.downstream.onError(th);
        }

        public boolean setOther(Disposable disposable) {
            return io.reactivex.internal.disposables.Cdo.setOnce(this.other, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.l2$if, reason: invalid class name */
    public final class Cif implements Observer<U> {

        /* renamed from: do, reason: not valid java name */
        private final Cdo<T, U, R> f26700do;

        public Cif(Cdo<T, U, R> cdo) {
            this.f26700do = cdo;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26700do.otherError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            this.f26700do.lazySet(u);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26700do.setOther(disposable);
        }
    }

    public l2(ObservableSource<T> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, ObservableSource<? extends U> observableSource2) {
        super(observableSource);
        this.f26699if = biFunction;
        this.f26698for = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        zw1 zw1Var = new zw1(observer);
        Cdo cdo = new Cdo(zw1Var, this.f26699if);
        zw1Var.onSubscribe(cdo);
        this.f26698for.subscribe(new Cif(cdo));
        this.f26500do.subscribe(cdo);
    }
}
