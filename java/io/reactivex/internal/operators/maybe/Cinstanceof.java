package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.maybe.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinstanceof<T> extends io.reactivex.internal.operators.maybe.Cdo<T, Boolean> {

    /* renamed from: io.reactivex.internal.operators.maybe.instanceof$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super Boolean> f26181do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26182if;

        public Cdo(MaybeObserver<? super Boolean> maybeObserver) {
            this.f26181do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26182if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26182if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26181do.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26181do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26182if, disposable)) {
                this.f26182if = disposable;
                this.f26181do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26181do.onSuccess(Boolean.FALSE);
        }
    }

    public Cinstanceof(MaybeSource<T> maybeSource) {
        super(maybeSource);
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super Boolean> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver));
    }
}
