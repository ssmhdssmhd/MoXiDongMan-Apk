package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.FuseToFlowable;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T> extends jz1<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25622do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f25623if;

    /* renamed from: io.reactivex.internal.operators.flowable.else$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f25624do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25625for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f25626if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25627new;

        public Cdo(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f25624do = singleObserver;
            this.f25626if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25625for.cancel();
            this.f25625for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25625for == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25627new) {
                return;
            }
            this.f25627new = true;
            this.f25625for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25624do.onSuccess(Boolean.TRUE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25627new) {
                jp1.l(th);
                return;
            }
            this.f25627new = true;
            this.f25625for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25624do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25627new) {
                return;
            }
            try {
                if (this.f25626if.test(t)) {
                    return;
                }
                this.f25627new = true;
                this.f25625for.cancel();
                this.f25625for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
                this.f25624do.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25625for.cancel();
                this.f25625for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25625for, subscription)) {
                this.f25625for = subscription;
                this.f25624do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Celse(Cfor<T> cfor, Predicate<? super T> predicate) {
        this.f25622do = cfor;
        this.f25623if = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<Boolean> fuseToFlowable() {
        return jp1.h(new Ccase(this.f25622do, this.f25623if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f25622do.m5(new Cdo(singleObserver, this.f25623if));
    }
}
