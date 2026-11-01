package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;

/* loaded from: classes3.dex */
public final class j0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends T> f26639if;

    /* renamed from: io.reactivex.internal.operators.observable.j0$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26640do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26641for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super Throwable, ? extends T> f26642if;

        public Cdo(Observer<? super T> observer, Function<? super Throwable, ? extends T> function) {
            this.f26640do = observer;
            this.f26642if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26641for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26641for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26640do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                T tApply = this.f26642if.apply(th);
                if (tApply != null) {
                    this.f26640do.onNext(tApply);
                    this.f26640do.onComplete();
                } else {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.f26640do.onError(nullPointerException);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f26640do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26640do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26641for, disposable)) {
                this.f26641for = disposable;
                this.f26640do.onSubscribe(this);
            }
        }
    }

    public j0(ObservableSource<T> observableSource, Function<? super Throwable, ? extends T> function) {
        super(observableSource);
        this.f26639if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26639if));
    }
}
