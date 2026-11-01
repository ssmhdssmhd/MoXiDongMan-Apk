package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.observable.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault<T> extends io.reactivex.internal.operators.observable.Cdo<T, Long> {

    /* renamed from: io.reactivex.internal.operators.observable.default$do, reason: invalid class name */
    public static final class Cdo implements Observer<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super Long> f26497do;

        /* renamed from: for, reason: not valid java name */
        public long f26498for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26499if;

        public Cdo(Observer<? super Long> observer) {
            this.f26497do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26499if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26499if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26497do.onNext(Long.valueOf(this.f26498for));
            this.f26497do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26497do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f26498for++;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26499if, disposable)) {
                this.f26499if = disposable;
                this.f26497do.onSubscribe(this);
            }
        }
    }

    public Cdefault(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Long> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
