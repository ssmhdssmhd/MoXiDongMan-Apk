package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToMaybe;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;

/* renamed from: io.reactivex.internal.operators.maybe.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csynchronized<T> extends jz1<Boolean> implements HasUpstreamMaybeSource<T>, FuseToMaybe<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26241do;

    /* renamed from: io.reactivex.internal.operators.maybe.synchronized$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f26242do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26243if;

        public Cdo(SingleObserver<? super Boolean> singleObserver) {
            this.f26242do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26243if.dispose();
            this.f26243if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26243if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26243if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26242do.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26243if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26242do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26243if, disposable)) {
                this.f26243if = disposable;
                this.f26242do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26243if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26242do.onSuccess(Boolean.FALSE);
        }
    }

    public Csynchronized(MaybeSource<T> maybeSource) {
        this.f26241do = maybeSource;
    }

    @Override // io.reactivex.internal.fuseable.FuseToMaybe
    public fy0<Boolean> fuseToMaybe() {
        return jp1.e(new Cinstanceof(this.f26241do));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f26241do.subscribe(new Cdo(singleObserver));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26241do;
    }
}
