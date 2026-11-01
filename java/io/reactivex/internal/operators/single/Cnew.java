package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.mf;
import android.support.v4.t80;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleOnSubscribe<T> f27210do;

    /* renamed from: io.reactivex.internal.operators.single.new$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleEmitter<T>, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;
        public final SingleObserver<? super T> downstream;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.downstream = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.SingleEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleEmitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.SingleEmitter
        public void onSuccess(T t) {
            Disposable andSet;
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || (andSet = getAndSet(cdo)) == cdo) {
                return;
            }
            try {
                if (t == null) {
                    this.downstream.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.downstream.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        @Override // io.reactivex.SingleEmitter
        public void setCancellable(Cancellable cancellable) {
            setDisposable(new mf(cancellable));
        }

        @Override // io.reactivex.SingleEmitter
        public void setDisposable(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.set(this, disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Cdo.class.getSimpleName(), super.toString());
        }

        @Override // io.reactivex.SingleEmitter
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

    public Cnew(SingleOnSubscribe<T> singleOnSubscribe) {
        this.f27210do = singleOnSubscribe;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Cdo cdo = new Cdo(singleObserver);
        singleObserver.onSubscribe(cdo);
        try {
            this.f27210do.subscribe(cdo);
        } catch (Throwable th) {
            t80.m7781if(th);
            cdo.onError(th);
        }
    }
}
