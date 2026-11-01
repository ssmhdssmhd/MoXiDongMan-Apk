package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.Collection;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class c2<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: if, reason: not valid java name */
    public final Callable<U> f26446if;

    /* renamed from: io.reactivex.internal.operators.observable.c2$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super U> f26447do;

        /* renamed from: for, reason: not valid java name */
        public U f26448for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26449if;

        public Cdo(Observer<? super U> observer, U u) {
            this.f26447do = observer;
            this.f26448for = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26449if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26449if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f26448for;
            this.f26448for = null;
            this.f26447do.onNext(u);
            this.f26447do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26448for = null;
            this.f26447do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26448for.add(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26449if, disposable)) {
                this.f26449if = disposable;
                this.f26447do.onSubscribe(this);
            }
        }
    }

    public c2(ObservableSource<T> observableSource, int i) {
        super(observableSource);
        this.f26446if = io.reactivex.internal.functions.Cdo.m29415case(i);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        try {
            this.f26500do.subscribe(new Cdo(observer, (Collection) Cif.m29468else(this.f26446if.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }

    public c2(ObservableSource<T> observableSource, Callable<U> callable) {
        super(observableSource);
        this.f26446if = callable;
    }
}
