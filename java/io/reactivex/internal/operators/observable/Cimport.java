package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToObservable;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.observable.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<T, U> extends jz1<U> implements FuseToObservable<U> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26612do;

    /* renamed from: for, reason: not valid java name */
    public final BiConsumer<? super U, ? super T> f26613for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends U> f26614if;

    /* renamed from: io.reactivex.internal.operators.observable.import$do, reason: invalid class name */
    public static final class Cdo<T, U> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super U> f26615do;

        /* renamed from: for, reason: not valid java name */
        public final U f26616for;

        /* renamed from: if, reason: not valid java name */
        public final BiConsumer<? super U, ? super T> f26617if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26618new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26619try;

        public Cdo(SingleObserver<? super U> singleObserver, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f26615do = singleObserver;
            this.f26617if = biConsumer;
            this.f26616for = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26618new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26618new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26619try) {
                return;
            }
            this.f26619try = true;
            this.f26615do.onSuccess(this.f26616for);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26619try) {
                jp1.l(th);
            } else {
                this.f26619try = true;
                this.f26615do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26619try) {
                return;
            }
            try {
                this.f26617if.accept(this.f26616for, t);
            } catch (Throwable th) {
                this.f26618new.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26618new, disposable)) {
                this.f26618new = disposable;
                this.f26615do.onSubscribe(this);
            }
        }
    }

    public Cimport(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        this.f26612do = observableSource;
        this.f26614if = callable;
        this.f26613for = biConsumer;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<U> fuseToObservable() {
        return jp1.i(new Cwhile(this.f26612do, this.f26614if, this.f26613for));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super U> singleObserver) {
        try {
            this.f26612do.subscribe(new Cdo(singleObserver, Cif.m29468else(this.f26614if.call(), "The initialSupplier returned a null value"), this.f26613for));
        } catch (Throwable th) {
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
