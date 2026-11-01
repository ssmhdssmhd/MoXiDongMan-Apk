package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f25378do;

    /* renamed from: io.reactivex.internal.operators.completable.const$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25379do;

        public Cdo(CompletableObserver completableObserver) {
            this.f25379do = completableObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f25379do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25379do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f25379do.onSubscribe(disposable);
        }
    }

    public Cconst(ObservableSource<T> observableSource) {
        this.f25378do = observableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25378do.subscribe(new Cdo(completableObserver));
    }
}
