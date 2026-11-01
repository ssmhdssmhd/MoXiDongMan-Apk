package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;

/* loaded from: classes3.dex */
public final class i0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f26582for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends ObservableSource<? extends T>> f26583if;

    /* renamed from: io.reactivex.internal.operators.observable.i0$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T> {

        /* renamed from: case, reason: not valid java name */
        public boolean f26584case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26585do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f26586for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super Throwable, ? extends ObservableSource<? extends T>> f26587if;

        /* renamed from: new, reason: not valid java name */
        public final tw1 f26588new = new tw1();

        /* renamed from: try, reason: not valid java name */
        public boolean f26589try;

        public Cdo(Observer<? super T> observer, Function<? super Throwable, ? extends ObservableSource<? extends T>> function, boolean z) {
            this.f26585do = observer;
            this.f26587if = function;
            this.f26586for = z;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26584case) {
                return;
            }
            this.f26584case = true;
            this.f26589try = true;
            this.f26585do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26589try) {
                if (this.f26584case) {
                    jp1.l(th);
                    return;
                } else {
                    this.f26585do.onError(th);
                    return;
                }
            }
            this.f26589try = true;
            if (this.f26586for && !(th instanceof Exception)) {
                this.f26585do.onError(th);
                return;
            }
            try {
                ObservableSource<? extends T> observableSourceApply = this.f26587if.apply(th);
                if (observableSourceApply != null) {
                    observableSourceApply.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th);
                this.f26585do.onError(nullPointerException);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f26585do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26584case) {
                return;
            }
            this.f26585do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26588new.replace(disposable);
        }
    }

    public i0(ObservableSource<T> observableSource, Function<? super Throwable, ? extends ObservableSource<? extends T>> function, boolean z) {
        super(observableSource);
        this.f26583if = function;
        this.f26582for = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer, this.f26583if, this.f26582for);
        observer.onSubscribe(cdo.f26588new);
        this.f26500do.subscribe(cdo);
    }
}
