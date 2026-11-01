package io.reactivex.internal.operators.observable;

import android.support.v4.tw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class p1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends T> f26792if;

    /* renamed from: io.reactivex.internal.operators.observable.p1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26793do;

        /* renamed from: if, reason: not valid java name */
        public final ObservableSource<? extends T> f26795if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26796new = true;

        /* renamed from: for, reason: not valid java name */
        public final tw1 f26794for = new tw1();

        public Cdo(Observer<? super T> observer, ObservableSource<? extends T> observableSource) {
            this.f26793do = observer;
            this.f26795if = observableSource;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f26796new) {
                this.f26793do.onComplete();
            } else {
                this.f26796new = false;
                this.f26795if.subscribe(this);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26793do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26796new) {
                this.f26796new = false;
            }
            this.f26793do.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26794for.update(disposable);
        }
    }

    public p1(ObservableSource<T> observableSource, ObservableSource<? extends T> observableSource2) {
        super(observableSource);
        this.f26792if = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer, this.f26792if);
        observer.onSubscribe(cdo.f26794for);
        this.f26500do.subscribe(cdo);
    }
}
