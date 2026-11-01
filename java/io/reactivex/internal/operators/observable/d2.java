package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToObservable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class d2<T, U extends Collection<? super T>> extends jz1<U> implements FuseToObservable<U> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26492do;

    /* renamed from: if, reason: not valid java name */
    public final Callable<U> f26493if;

    /* renamed from: io.reactivex.internal.operators.observable.d2$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super U> f26494do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26495for;

        /* renamed from: if, reason: not valid java name */
        public U f26496if;

        public Cdo(SingleObserver<? super U> singleObserver, U u) {
            this.f26494do = singleObserver;
            this.f26496if = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26495for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26495for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f26496if;
            this.f26496if = null;
            this.f26494do.onSuccess(u);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26496if = null;
            this.f26494do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26496if.add(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26495for, disposable)) {
                this.f26495for = disposable;
                this.f26494do.onSubscribe(this);
            }
        }
    }

    public d2(ObservableSource<T> observableSource, int i) {
        this.f26492do = observableSource;
        this.f26493if = io.reactivex.internal.functions.Cdo.m29415case(i);
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<U> fuseToObservable() {
        return jp1.i(new c2(this.f26492do, this.f26493if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super U> singleObserver) {
        try {
            this.f26492do.subscribe(new Cdo(singleObserver, (Collection) Cif.m29468else(this.f26493if.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }

    public d2(ObservableSource<T> observableSource, Callable<U> callable) {
        this.f26492do = observableSource;
        this.f26493if = callable;
    }
}
