package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25454do;

    /* renamed from: io.reactivex.internal.operators.completable.this$do, reason: invalid class name */
    public static final class Cdo implements CompletableObserver, Disposable {

        /* renamed from: do, reason: not valid java name */
        public CompletableObserver f25455do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f25456if;

        public Cdo(CompletableObserver completableObserver) {
            this.f25455do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25455do = null;
            this.f25456if.dispose();
            this.f25456if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25456if.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f25456if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            CompletableObserver completableObserver = this.f25455do;
            if (completableObserver != null) {
                this.f25455do = null;
                completableObserver.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f25456if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            CompletableObserver completableObserver = this.f25455do;
            if (completableObserver != null) {
                this.f25455do = null;
                completableObserver.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f25456if, disposable)) {
                this.f25456if = disposable;
                this.f25455do.onSubscribe(this);
            }
        }
    }

    public Cthis(CompletableSource completableSource) {
        this.f25454do = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25454do.subscribe(new Cdo(completableObserver));
    }
}
