package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class d1<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<R> f26485for;

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f26486if;

    /* renamed from: io.reactivex.internal.operators.observable.d1$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super R> f26487do;

        /* renamed from: for, reason: not valid java name */
        public R f26488for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<R, ? super T, R> f26489if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26490new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26491try;

        public Cdo(Observer<? super R> observer, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f26487do = observer;
            this.f26489if = biFunction;
            this.f26488for = r;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26490new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26490new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26491try) {
                return;
            }
            this.f26491try = true;
            this.f26487do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26491try) {
                jp1.l(th);
            } else {
                this.f26491try = true;
                this.f26487do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26491try) {
                return;
            }
            try {
                R r = (R) Cif.m29468else(this.f26489if.apply(this.f26488for, t), "The accumulator returned a null value");
                this.f26488for = r;
                this.f26487do.onNext(r);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26490new.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26490new, disposable)) {
                this.f26490new = disposable;
                this.f26487do.onSubscribe(this);
                this.f26487do.onNext(this.f26488for);
            }
        }
    }

    public d1(ObservableSource<T> observableSource, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        super(observableSource);
        this.f26486if = biFunction;
        this.f26485for = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        try {
            this.f26500do.subscribe(new Cdo(observer, this.f26486if, Cif.m29468else(this.f26485for.call(), "The seed supplied is null")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
