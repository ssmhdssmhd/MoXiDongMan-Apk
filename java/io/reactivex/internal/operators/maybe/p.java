package io.reactivex.internal.operators.maybe;

import android.support.v4.ez;
import io.reactivex.Cfor;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class p<T> extends Cfor<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<T> f26203if;

    /* renamed from: io.reactivex.internal.operators.maybe.p$do, reason: invalid class name */
    public static final class Cdo<T> extends ez<T> implements MaybeObserver<T> {
        private static final long serialVersionUID = 7603343402964826922L;
        public Disposable upstream;

        public Cdo(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
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

    public p(MaybeSource<T> maybeSource) {
        this.f26203if = maybeSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f26203if.subscribe(new Cdo(subscriber));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26203if;
    }
}
