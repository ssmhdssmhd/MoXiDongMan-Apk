package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25457do;

    /* renamed from: io.reactivex.internal.operators.completable.throw$do, reason: invalid class name */
    public static final class Cdo implements CompletableObserver, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25458do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f25459if;

        public Cdo(CompletableObserver completableObserver) {
            this.f25458do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25459if.dispose();
            this.f25459if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25459if.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f25458do.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f25458do.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f25459if, disposable)) {
                this.f25459if = disposable;
                this.f25458do.onSubscribe(this);
            }
        }
    }

    public Cthrow(CompletableSource completableSource) {
        this.f25457do = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25457do.subscribe(new Cdo(completableObserver));
    }
}
