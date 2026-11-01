package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class q0<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26831do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f26832for;

    /* renamed from: if, reason: not valid java name */
    public final R f26833if;

    /* renamed from: io.reactivex.internal.operators.observable.q0$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super R> f26834do;

        /* renamed from: for, reason: not valid java name */
        public R f26835for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<R, ? super T, R> f26836if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26837new;

        public Cdo(SingleObserver<? super R> singleObserver, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f26834do = singleObserver;
            this.f26835for = r;
            this.f26836if = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26837new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26837new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            R r = this.f26835for;
            if (r != null) {
                this.f26835for = null;
                this.f26834do.onSuccess(r);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26835for == null) {
                jp1.l(th);
            } else {
                this.f26835for = null;
                this.f26834do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            R r = this.f26835for;
            if (r != null) {
                try {
                    this.f26835for = (R) Cif.m29468else(this.f26836if.apply(r, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f26837new.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26837new, disposable)) {
                this.f26837new = disposable;
                this.f26834do.onSubscribe(this);
            }
        }
    }

    public q0(ObservableSource<T> observableSource, R r, BiFunction<R, ? super T, R> biFunction) {
        this.f26831do = observableSource;
        this.f26833if = r;
        this.f26832for = biFunction;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        this.f26831do.subscribe(new Cdo(singleObserver, this.f26832for, this.f26833if));
    }
}
