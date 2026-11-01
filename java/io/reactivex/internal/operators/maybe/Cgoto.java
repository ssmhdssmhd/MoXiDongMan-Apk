package io.reactivex.internal.operators.maybe;

import android.support.v4.jz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;

/* renamed from: io.reactivex.internal.operators.maybe.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T> extends jz1<Long> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26159do;

    /* renamed from: io.reactivex.internal.operators.maybe.goto$do, reason: invalid class name */
    public static final class Cdo implements MaybeObserver<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Long> f26160do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26161if;

        public Cdo(SingleObserver<? super Long> singleObserver) {
            this.f26160do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26161if.dispose();
            this.f26161if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26161if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26161if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26160do.onSuccess(0L);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26161if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26160do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26161if, disposable)) {
                this.f26161if = disposable;
                this.f26160do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.f26161if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26160do.onSuccess(1L);
        }
    }

    public Cgoto(MaybeSource<T> maybeSource) {
        this.f26159do = maybeSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Long> singleObserver) {
        this.f26159do.subscribe(new Cdo(singleObserver));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26159do;
    }
}
