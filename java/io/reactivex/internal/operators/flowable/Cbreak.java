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

/* renamed from: io.reactivex.internal.operators.flowable.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<T> extends jz1<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25542do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f25543if;

    /* renamed from: io.reactivex.internal.operators.flowable.break$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f25544do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25545for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f25546if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25547new;

        public Cdo(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f25544do = singleObserver;
            this.f25546if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25545for.cancel();
            this.f25545for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25545for == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25547new) {
                return;
            }
            this.f25547new = true;
            this.f25545for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25544do.onSuccess(Boolean.FALSE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25547new) {
                jp1.l(th);
                return;
            }
            this.f25547new = true;
            this.f25545for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25544do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25547new) {
                return;
            }
            try {
                if (this.f25546if.test(t)) {
                    this.f25547new = true;
                    this.f25545for.cancel();
                    this.f25545for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
                    this.f25544do.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25545for.cancel();
                this.f25545for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25545for, subscription)) {
                this.f25545for = subscription;
                this.f25544do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cbreak(Cfor<T> cfor, Predicate<? super T> predicate) {
        this.f25542do = cfor;
        this.f25543if = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<Boolean> fuseToFlowable() {
        return jp1.h(new Cthis(this.f25542do, this.f25543if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f25542do.m5(new Cdo(singleObserver, this.f25543if));
    }
}
