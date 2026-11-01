package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class i<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<? extends T> f26165if;

    /* renamed from: io.reactivex.internal.operators.maybe.i$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2223459372976438024L;
        public final MaybeObserver<? super T> downstream;
        public final MaybeSource<? extends T> other;

        /* renamed from: io.reactivex.internal.operators.maybe.i$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0295do<T> implements MaybeObserver<T> {

            /* renamed from: do, reason: not valid java name */
            public final MaybeObserver<? super T> f26166do;

            /* renamed from: if, reason: not valid java name */
            public final AtomicReference<Disposable> f26167if;

            public C0295do(MaybeObserver<? super T> maybeObserver, AtomicReference<Disposable> atomicReference) {
                this.f26166do = maybeObserver;
                this.f26167if = atomicReference;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f26166do.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f26166do.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this.f26167if, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f26166do.onSuccess(t);
            }
        }

        public Cdo(MaybeObserver<? super T> maybeObserver, MaybeSource<? extends T> maybeSource) {
            this.downstream = maybeObserver;
            this.other = maybeSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            Disposable disposable = get();
            if (disposable == io.reactivex.internal.disposables.Cdo.DISPOSED || !compareAndSet(disposable, null)) {
                return;
            }
            this.other.subscribe(new C0295do(this.downstream, this));
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    public i(MaybeSource<T> maybeSource, MaybeSource<? extends T> maybeSource2) {
        super(maybeSource);
        this.f26165if = maybeSource2;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26165if));
    }
}
