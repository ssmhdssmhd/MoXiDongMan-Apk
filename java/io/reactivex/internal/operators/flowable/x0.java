package io.reactivex.internal.operators.flowable;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class x0<T> extends fy0<T> implements HasUpstreamPublisher<T>, FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f26040do;

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<T, T, T> f26041if;

    /* renamed from: io.reactivex.internal.operators.flowable.x0$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26042do;

        /* renamed from: for, reason: not valid java name */
        public T f26043for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<T, T, T> f26044if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f26045new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26046try;

        public Cdo(MaybeObserver<? super T> maybeObserver, BiFunction<T, T, T> biFunction) {
            this.f26042do = maybeObserver;
            this.f26044if = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26045new.cancel();
            this.f26046try = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26046try;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f26046try) {
                return;
            }
            this.f26046try = true;
            T t = this.f26043for;
            if (t != null) {
                this.f26042do.onSuccess(t);
            } else {
                this.f26042do.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f26046try) {
                jp1.l(th);
            } else {
                this.f26046try = true;
                this.f26042do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f26046try) {
                return;
            }
            T t2 = this.f26043for;
            if (t2 == null) {
                this.f26043for = t;
                return;
            }
            try {
                this.f26043for = (T) Cif.m29468else(this.f26044if.apply(t2, t), "The reducer returned a null value");
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26045new.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f26045new, subscription)) {
                this.f26045new = subscription;
                this.f26042do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public x0(Cfor<T> cfor, BiFunction<T, T, T> biFunction) {
        this.f26040do = cfor;
        this.f26041if = biFunction;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new w0(this.f26040do, this.f26041if));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f26040do;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26040do.m5(new Cdo(maybeObserver, this.f26041if));
    }
}
