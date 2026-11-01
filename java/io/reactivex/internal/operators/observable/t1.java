package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class t1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.observable.t1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26922do;

        /* renamed from: for, reason: not valid java name */
        public T f26923for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26924if;

        public Cdo(Observer<? super T> observer) {
            this.f26922do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26923for = null;
            this.f26924if.dispose();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29642do() {
            T t = this.f26923for;
            if (t != null) {
                this.f26923for = null;
                this.f26922do.onNext(t);
            }
            this.f26922do.onComplete();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26924if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            m29642do();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26923for = null;
            this.f26922do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26923for = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26924if, disposable)) {
                this.f26924if = disposable;
                this.f26922do.onSubscribe(this);
            }
        }
    }

    public t1(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer));
    }
}
