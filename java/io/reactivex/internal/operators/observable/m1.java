package io.reactivex.internal.operators.observable;

import android.support.v4.m3;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class m1<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<U> f26712if;

    /* renamed from: io.reactivex.internal.operators.observable.m1$do, reason: invalid class name */
    public final class Cdo implements Observer<U> {

        /* renamed from: do, reason: not valid java name */
        public final m3 f26713do;

        /* renamed from: for, reason: not valid java name */
        public final zw1<T> f26714for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T> f26715if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26716new;

        public Cdo(m3 m3Var, Cif<T> cif, zw1<T> zw1Var) {
            this.f26713do = m3Var;
            this.f26715if = cif;
            this.f26714for = zw1Var;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26715if.f26721new = true;
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26713do.dispose();
            this.f26714for.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            this.f26716new.dispose();
            this.f26715if.f26721new = true;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26716new, disposable)) {
                this.f26716new = disposable;
                this.f26713do.setResource(1, disposable);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.m1$if, reason: invalid class name */
    public static final class Cif<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26718do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26719for;

        /* renamed from: if, reason: not valid java name */
        public final m3 f26720if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f26721new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26722try;

        public Cif(Observer<? super T> observer, m3 m3Var) {
            this.f26718do = observer;
            this.f26720if = m3Var;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26720if.dispose();
            this.f26718do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26720if.dispose();
            this.f26718do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26722try) {
                this.f26718do.onNext(t);
            } else if (this.f26721new) {
                this.f26722try = true;
                this.f26718do.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26719for, disposable)) {
                this.f26719for = disposable;
                this.f26720if.setResource(0, disposable);
            }
        }
    }

    public m1(ObservableSource<T> observableSource, ObservableSource<U> observableSource2) {
        super(observableSource);
        this.f26712if = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        zw1 zw1Var = new zw1(observer);
        m3 m3Var = new m3(2);
        zw1Var.onSubscribe(m3Var);
        Cif cif = new Cif(zw1Var, m3Var);
        this.f26712if.subscribe(new Cdo(m3Var, cif, zw1Var));
        this.f26500do.subscribe(cif);
    }
}
