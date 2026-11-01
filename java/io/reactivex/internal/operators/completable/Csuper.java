package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f25448do;

    /* renamed from: io.reactivex.internal.operators.completable.super$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25449do;

        public Cdo(CompletableObserver completableObserver) {
            this.f25449do = completableObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f25449do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f25449do.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f25449do.onComplete();
        }
    }

    public Csuper(SingleSource<T> singleSource) {
        this.f25448do = singleSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25448do.subscribe(new Cdo(completableObserver));
    }
}
