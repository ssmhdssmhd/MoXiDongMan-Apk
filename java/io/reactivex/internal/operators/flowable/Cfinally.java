package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally<T> extends jz1<Long> implements FuseToFlowable<Long> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25642do;

    /* renamed from: io.reactivex.internal.operators.flowable.finally$do, reason: invalid class name */
    public static final class Cdo implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Long> f25643do;

        /* renamed from: for, reason: not valid java name */
        public long f25644for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25645if;

        public Cdo(SingleObserver<? super Long> singleObserver) {
            this.f25643do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25645if.cancel();
            this.f25645if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25645if == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25645if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25643do.onSuccess(Long.valueOf(this.f25644for));
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25645if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25643do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f25644for++;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25645if, subscription)) {
                this.f25645if = subscription;
                this.f25643do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cfinally(Cfor<T> cfor) {
        this.f25642do = cfor;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<Long> fuseToFlowable() {
        return jp1.h(new Cextends(this.f25642do));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Long> singleObserver) {
        this.f25642do.m5(new Cdo(singleObserver));
    }
}
