package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class q<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.observable.q$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26829do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26830if;

        public Cdo(Observer<? super T> observer) {
            this.f26829do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26830if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26830if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26829do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26829do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26829do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26830if, disposable)) {
                this.f26830if = disposable;
                this.f26829do.onSubscribe(this);
            }
        }
    }

    public q(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
