package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class m<T, U> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final MaybeSource<? extends T> f26192for;

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<U> f26193if;

    /* renamed from: io.reactivex.internal.operators.maybe.m$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 8663801314800248617L;
        public final MaybeObserver<? super T> downstream;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.m$for, reason: invalid class name */
    public static final class Cfor<T, U> extends AtomicReference<Disposable> implements MaybeObserver<Object> {
        private static final long serialVersionUID = 8663801314800248617L;
        public final Cif<T, U> parent;

        public Cfor(Cif<T, U> cif) {
            this.parent = cif;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.parent.otherComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.parent.otherComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.m$if, reason: invalid class name */
    public static final class Cif<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -5955289211445418871L;
        public final MaybeObserver<? super T> downstream;
        public final MaybeSource<? extends T> fallback;
        public final Cfor<T, U> other = new Cfor<>(this);
        public final Cdo<T> otherObserver;

        public Cif(MaybeObserver<? super T> maybeObserver, MaybeSource<? extends T> maybeSource) {
            this.downstream = maybeObserver;
            this.fallback = maybeSource;
            this.otherObserver = maybeSource != null ? new Cdo<>(maybeObserver) : null;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            Cdo<T> cdo = this.otherObserver;
            if (cdo != null) {
                io.reactivex.internal.disposables.Cdo.dispose(cdo);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onSuccess(t);
            }
        }

        public void otherComplete() {
            if (io.reactivex.internal.disposables.Cdo.dispose(this)) {
                MaybeSource<? extends T> maybeSource = this.fallback;
                if (maybeSource == null) {
                    this.downstream.onError(new TimeoutException());
                } else {
                    maybeSource.subscribe(this.otherObserver);
                }
            }
        }

        public void otherError(Throwable th) {
            if (io.reactivex.internal.disposables.Cdo.dispose(this)) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }
    }

    public m(MaybeSource<T> maybeSource, MaybeSource<U> maybeSource2, MaybeSource<? extends T> maybeSource3) {
        super(maybeSource);
        this.f26193if = maybeSource2;
        this.f26192for = maybeSource3;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cif cif = new Cif(maybeObserver, this.f26192for);
        maybeObserver.onSubscribe(cif);
        this.f26193if.subscribe(cif.other);
        this.f26120do.subscribe(cif);
    }
}
