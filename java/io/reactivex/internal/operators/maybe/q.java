package io.reactivex.internal.operators.maybe;

import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import io.reactivex.internal.observers.Cif;

/* loaded from: classes3.dex */
public final class q<T> extends Cnew<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26216do;

    /* renamed from: io.reactivex.internal.operators.maybe.q$do, reason: invalid class name */
    public static final class Cdo<T> extends Cif<T> implements MaybeObserver<T> {
        private static final long serialVersionUID = 7603343402964826922L;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer) {
            super(observer);
        }

        @Override // io.reactivex.internal.observers.Cif, io.reactivex.disposables.Disposable
        public void dispose() {
            super.dispose();
            this.upstream.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            error(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public q(MaybeSource<T> maybeSource) {
        this.f26216do = maybeSource;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> MaybeObserver<T> m29550do(Observer<? super T> observer) {
        return new Cdo(observer);
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26216do;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26216do.subscribe(m29550do(observer));
    }
}
