package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class k<T, U> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<U> f26190if;

    /* renamed from: io.reactivex.internal.operators.maybe.k$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2187421758664251153L;
        public final MaybeObserver<? super T> downstream;
        public final C0297do<U> other = new C0297do<>(this);

        /* renamed from: io.reactivex.internal.operators.maybe.k$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0297do<U> extends AtomicReference<Disposable> implements MaybeObserver<U> {
            private static final long serialVersionUID = -1266041316834525931L;
            public final Cdo<?, U> parent;

            public C0297do(Cdo<?, U> cdo) {
                this.parent = cdo;
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

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            io.reactivex.internal.disposables.Cdo.dispose(this.other);
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
                this.downstream.onComplete();
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

    public k(MaybeSource<T> maybeSource, MaybeSource<U> maybeSource2) {
        super(maybeSource);
        this.f26190if = maybeSource2;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo cdo = new Cdo(maybeObserver);
        maybeObserver.onSubscribe(cdo);
        this.f26190if.subscribe(cdo.other);
        this.f26120do.subscribe(cdo);
    }
}
