package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class r<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.observable.r$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26841do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26842if;

        public Cdo(Observer<? super T> observer) {
            this.f26841do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26842if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26842if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26841do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26841do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26842if = disposable;
            this.f26841do.onSubscribe(this);
        }
    }

    public r(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
