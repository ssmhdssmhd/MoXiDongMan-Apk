package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Cnew;

/* renamed from: io.reactivex.internal.operators.observable.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cvolatile<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.observable.volatile$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public Observer<? super T> f26975do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26976if;

        public Cdo(Observer<? super T> observer) {
            this.f26975do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f26976if;
            this.f26976if = Cnew.INSTANCE;
            this.f26975do = Cnew.asObserver();
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26976if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Observer<? super T> observer = this.f26975do;
            this.f26976if = Cnew.INSTANCE;
            this.f26975do = Cnew.asObserver();
            observer.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Observer<? super T> observer = this.f26975do;
            this.f26976if = Cnew.INSTANCE;
            this.f26975do = Cnew.asObserver();
            observer.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26975do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26976if, disposable)) {
                this.f26976if = disposable;
                this.f26975do.onSubscribe(this);
            }
        }
    }

    public Cvolatile(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
