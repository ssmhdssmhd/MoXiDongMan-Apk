package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.mf;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableOnSubscribe f25393do;

    /* renamed from: io.reactivex.internal.operators.completable.else$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableEmitter, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;
        public final CompletableObserver downstream;

        public Cdo(CompletableObserver completableObserver) {
            this.downstream = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.CompletableEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableEmitter
        public void onComplete() {
            Disposable andSet;
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || (andSet = getAndSet(cdo)) == cdo) {
                return;
            }
            try {
                this.downstream.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.CompletableEmitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.CompletableEmitter
        public void setCancellable(Cancellable cancellable) {
            setDisposable(new mf(cancellable));
        }

        @Override // io.reactivex.CompletableEmitter
        public void setDisposable(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.set(this, disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Cdo.class.getSimpleName(), super.toString());
        }

        @Override // io.reactivex.CompletableEmitter
        public boolean tryOnError(Throwable th) {
            Disposable andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || (andSet = getAndSet(cdo)) == cdo) {
                return false;
            }
            try {
                this.downstream.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    public Celse(CompletableOnSubscribe completableOnSubscribe) {
        this.f25393do = completableOnSubscribe;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver);
        completableObserver.onSubscribe(cdo);
        try {
            this.f25393do.subscribe(cdo);
        } catch (Throwable th) {
            t80.m7781if(th);
            cdo.onError(th);
        }
    }
}
