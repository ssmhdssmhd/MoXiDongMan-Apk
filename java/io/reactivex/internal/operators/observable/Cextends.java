package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToObservable;

/* renamed from: io.reactivex.internal.operators.observable.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends<T> extends jz1<Long> implements FuseToObservable<Long> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26523do;

    /* renamed from: io.reactivex.internal.operators.observable.extends$do, reason: invalid class name */
    public static final class Cdo implements Observer<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Long> f26524do;

        /* renamed from: for, reason: not valid java name */
        public long f26525for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26526if;

        public Cdo(SingleObserver<? super Long> singleObserver) {
            this.f26524do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26526if.dispose();
            this.f26526if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26526if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26526if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26524do.onSuccess(Long.valueOf(this.f26525for));
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26526if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26524do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f26525for++;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26526if, disposable)) {
                this.f26526if = disposable;
                this.f26524do.onSubscribe(this);
            }
        }
    }

    public Cextends(ObservableSource<T> observableSource) {
        this.f26523do = observableSource;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<Long> fuseToObservable() {
        return jp1.i(new Cdefault(this.f26523do));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Long> singleObserver) {
        this.f26523do.subscribe(new Cdo(singleObserver));
    }
}
