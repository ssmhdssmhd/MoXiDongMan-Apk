package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.Cfor;
import io.reactivex.CompletableObserver;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class t<T> extends np implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25889do;

    /* renamed from: io.reactivex.internal.operators.flowable.t$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25890do;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25891if;

        public Cdo(CompletableObserver completableObserver) {
            this.f25890do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25891if.cancel();
            this.f25891if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25891if == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25891if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25890do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25891if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25890do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25891if, subscription)) {
                this.f25891if = subscription;
                this.f25890do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public t(Cfor<T> cfor) {
        this.f25889do = cfor;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25889do.m5(new Cdo(completableObserver));
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new s(this.f25889do));
    }
}
