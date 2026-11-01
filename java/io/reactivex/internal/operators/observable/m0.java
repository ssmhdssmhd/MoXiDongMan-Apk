package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.Ctry;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class m0<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Cnew<T>, ? extends ObservableSource<R>> f26709if;

    /* renamed from: io.reactivex.internal.operators.observable.m0$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Ctry<T> f26710do;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Disposable> f26711if;

        public Cdo(Ctry<T> ctry, AtomicReference<Disposable> atomicReference) {
            this.f26710do = ctry;
            this.f26711if = atomicReference;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26710do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26710do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26710do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.f26711if, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.m0$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicReference<Disposable> implements Observer<R>, Disposable {
        private static final long serialVersionUID = 854110278590336484L;
        public final Observer<? super R> downstream;
        public Disposable upstream;

        public Cif(Observer<? super R> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public m0(ObservableSource<T> observableSource, Function<? super Cnew<T>, ? extends ObservableSource<R>> function) {
        super(observableSource);
        this.f26709if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        Ctry ctryM29840else = Ctry.m29840else();
        try {
            ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26709if.apply(ctryM29840else), "The selector returned a null ObservableSource");
            Cif cif = new Cif(observer);
            observableSource.subscribe(cif);
            this.f26500do.subscribe(new Cdo(ctryM29840else, cif));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
