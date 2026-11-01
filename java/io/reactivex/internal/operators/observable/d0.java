package io.reactivex.internal.operators.observable;

import android.support.v4.t41;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class d0<T> extends io.reactivex.internal.operators.observable.Cdo<T, t41<T>> {

    /* renamed from: io.reactivex.internal.operators.observable.d0$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super t41<T>> f26483do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26484if;

        public Cdo(Observer<? super t41<T>> observer) {
            this.f26483do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26484if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26484if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26483do.onNext(t41.m7720do());
            this.f26483do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26483do.onNext(t41.m7722if(th));
            this.f26483do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26483do.onNext(t41.m7721for(t));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26484if, disposable)) {
                this.f26484if = disposable;
                this.f26483do.onSubscribe(this);
            }
        }
    }

    public d0(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super t41<T>> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
