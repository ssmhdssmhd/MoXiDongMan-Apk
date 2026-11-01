package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamCompletableSource;

/* renamed from: io.reactivex.internal.operators.maybe.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp<T> extends fy0<T> implements HasUpstreamCompletableSource {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f26232do;

    /* renamed from: io.reactivex.internal.operators.maybe.strictfp$do, reason: invalid class name */
    public static final class Cdo<T> implements CompletableObserver, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26233do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26234if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26233do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26234if.dispose();
            this.f26234if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26234if.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26234if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26233do.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f26234if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26233do.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26234if, disposable)) {
                this.f26234if = disposable;
                this.f26233do.onSubscribe(this);
            }
        }
    }

    public Cstrictfp(CompletableSource completableSource) {
        this.f26232do = completableSource;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamCompletableSource
    public CompletableSource source() {
        return this.f26232do;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26232do.subscribe(new Cdo(maybeObserver));
    }
}
