package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.mf;
import android.support.v4.t80;
import io.reactivex.MaybeEmitter;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeOnSubscribe<T> f26244do;

    /* renamed from: io.reactivex.internal.operators.maybe.this$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeEmitter<T>, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;
        public final MaybeObserver<? super T> downstream;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.MaybeEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeEmitter
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

        @Override // io.reactivex.MaybeEmitter
        public void onError(Throwable th) {
            if (tryOnError(th)) {
                return;
            }
            jp1.l(th);
        }

        @Override // io.reactivex.MaybeEmitter
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

        @Override // io.reactivex.MaybeEmitter
        public void setCancellable(Cancellable cancellable) {
            setDisposable(new mf(cancellable));
        }

        @Override // io.reactivex.MaybeEmitter
        public void setDisposable(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.set(this, disposable);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Cdo.class.getSimpleName(), super.toString());
        }

        @Override // io.reactivex.MaybeEmitter
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

    public Cthis(MaybeOnSubscribe<T> maybeOnSubscribe) {
        this.f26244do = maybeOnSubscribe;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo cdo = new Cdo(maybeObserver);
        maybeObserver.onSubscribe(cdo);
        try {
            this.f26244do.subscribe(cdo);
        } catch (Throwable th) {
            t80.m7781if(th);
            cdo.onError(th);
        }
    }
}
