package io.reactivex.internal.operators.maybe;

import android.support.v4.jz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class s<T> extends jz1<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26223do;

    /* renamed from: if, reason: not valid java name */
    public final T f26224if;

    /* renamed from: io.reactivex.internal.operators.maybe.s$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f26225do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26226for;

        /* renamed from: if, reason: not valid java name */
        public final T f26227if;

        public Cdo(SingleObserver<? super T> singleObserver, T t) {
            this.f26225do = singleObserver;
            this.f26227if = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26226for.dispose();
            this.f26226for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26226for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26226for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            T t = this.f26227if;
            if (t != null) {
                this.f26225do.onSuccess(t);
            } else {
                this.f26225do.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26226for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26225do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26226for, disposable)) {
                this.f26226for = disposable;
                this.f26225do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26226for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26225do.onSuccess(t);
        }
    }

    public s(MaybeSource<T> maybeSource, T t) {
        this.f26223do = maybeSource;
        this.f26224if = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f26223do.subscribe(new Cdo(singleObserver, this.f26224if));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26223do;
    }
}
