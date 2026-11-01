package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.maybe.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprotected<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.maybe.protected$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26210do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26211if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26210do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26211if.dispose();
            this.f26211if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26211if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26210do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26210do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26211if, disposable)) {
                this.f26211if = disposable;
                this.f26210do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26210do.onSuccess(t);
        }
    }

    public Cprotected(MaybeSource<T> maybeSource) {
        super(maybeSource);
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver));
    }
}
