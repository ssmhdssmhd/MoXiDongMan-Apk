package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.maybe.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctransient<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.maybe.transient$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26248do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26249if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26248do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26249if.dispose();
            this.f26249if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26249if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26249if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26248do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26249if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26248do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26249if, disposable)) {
                this.f26249if = disposable;
                this.f26248do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26249if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26248do.onComplete();
        }
    }

    public Ctransient(MaybeSource<T> maybeSource) {
        super(maybeSource);
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver));
    }
}
