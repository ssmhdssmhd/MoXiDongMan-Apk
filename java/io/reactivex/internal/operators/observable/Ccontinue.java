package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.observable.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue<T, U> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T> f26474do;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<U> f26475if;

    /* renamed from: io.reactivex.internal.operators.observable.continue$do, reason: invalid class name */
    public final class Cdo implements Observer<U> {

        /* renamed from: do, reason: not valid java name */
        public final tw1 f26476do;

        /* renamed from: for, reason: not valid java name */
        public boolean f26477for;

        /* renamed from: if, reason: not valid java name */
        public final Observer<? super T> f26478if;

        /* renamed from: io.reactivex.internal.operators.observable.continue$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0316do implements Observer<T> {
            public C0316do() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                Cdo.this.f26478if.onComplete();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Cdo.this.f26478if.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(T t) {
                Cdo.this.f26478if.onNext(t);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                Cdo.this.f26476do.update(disposable);
            }
        }

        public Cdo(tw1 tw1Var, Observer<? super T> observer) {
            this.f26476do = tw1Var;
            this.f26478if = observer;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26477for) {
                return;
            }
            this.f26477for = true;
            Ccontinue.this.f26474do.subscribe(new C0316do());
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26477for) {
                jp1.l(th);
            } else {
                this.f26477for = true;
                this.f26478if.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            onComplete();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26476do.update(disposable);
        }
    }

    public Ccontinue(ObservableSource<? extends T> observableSource, ObservableSource<U> observableSource2) {
        this.f26474do = observableSource;
        this.f26475if = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        tw1 tw1Var = new tw1();
        observer.onSubscribe(tw1Var);
        this.f26475if.subscribe(new Cdo(tw1Var, observer));
    }
}
