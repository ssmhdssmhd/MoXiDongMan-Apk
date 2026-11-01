package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToObservable;

/* loaded from: classes3.dex */
public final class s<T> extends np implements FuseToObservable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26855do;

    /* renamed from: io.reactivex.internal.operators.observable.s$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f26856do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26857if;

        public Cdo(CompletableObserver completableObserver) {
            this.f26856do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26857if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26857if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26856do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26856do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f26857if = disposable;
            this.f26856do.onSubscribe(this);
        }
    }

    public s(ObservableSource<T> observableSource) {
        this.f26855do = observableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f26855do.subscribe(new Cdo(completableObserver));
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<T> fuseToObservable() {
        return jp1.i(new r(this.f26855do));
    }
}
