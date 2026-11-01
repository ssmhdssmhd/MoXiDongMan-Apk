package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class c0<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, ObservableSource<? extends R>> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Throwable, ? extends ObservableSource<? extends R>> f26432for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends R>> f26433if;

    /* renamed from: new, reason: not valid java name */
    public final Callable<? extends ObservableSource<? extends R>> f26434new;

    /* renamed from: io.reactivex.internal.operators.observable.c0$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super ObservableSource<? extends R>> f26435do;

        /* renamed from: for, reason: not valid java name */
        public final Function<? super Throwable, ? extends ObservableSource<? extends R>> f26436for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends ObservableSource<? extends R>> f26437if;

        /* renamed from: new, reason: not valid java name */
        public final Callable<? extends ObservableSource<? extends R>> f26438new;

        /* renamed from: try, reason: not valid java name */
        public Disposable f26439try;

        public Cdo(Observer<? super ObservableSource<? extends R>> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable) {
            this.f26435do = observer;
            this.f26437if = function;
            this.f26436for = function2;
            this.f26438new = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26439try.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26439try.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            try {
                this.f26435do.onNext((ObservableSource) Cif.m29468else(this.f26438new.call(), "The onComplete ObservableSource returned is null"));
                this.f26435do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26435do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                this.f26435do.onNext((ObservableSource) Cif.m29468else(this.f26436for.apply(th), "The onError ObservableSource returned is null"));
                this.f26435do.onComplete();
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f26435do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                this.f26435do.onNext((ObservableSource) Cif.m29468else(this.f26437if.apply(t), "The onNext ObservableSource returned is null"));
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26435do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26439try, disposable)) {
                this.f26439try = disposable;
                this.f26435do.onSubscribe(this);
            }
        }
    }

    public c0(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable) {
        super(observableSource);
        this.f26433if = function;
        this.f26432for = function2;
        this.f26434new = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super ObservableSource<? extends R>> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26433if, this.f26432for, this.f26434new));
    }
}
