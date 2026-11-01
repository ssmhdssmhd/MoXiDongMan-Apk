package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class d<T> extends jz1<T> implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25598do;

    /* renamed from: for, reason: not valid java name */
    public final T f25599for;

    /* renamed from: if, reason: not valid java name */
    public final long f25600if;

    /* renamed from: io.reactivex.internal.operators.flowable.d$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public boolean f25601case;

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f25602do;

        /* renamed from: for, reason: not valid java name */
        public final T f25603for;

        /* renamed from: if, reason: not valid java name */
        public final long f25604if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f25605new;

        /* renamed from: try, reason: not valid java name */
        public long f25606try;

        public Cdo(SingleObserver<? super T> singleObserver, long j, T t) {
            this.f25602do = singleObserver;
            this.f25604if = j;
            this.f25603for = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25605new.cancel();
            this.f25605new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25605new == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25605new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (this.f25601case) {
                return;
            }
            this.f25601case = true;
            T t = this.f25603for;
            if (t != null) {
                this.f25602do.onSuccess(t);
            } else {
                this.f25602do.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25601case) {
                jp1.l(th);
                return;
            }
            this.f25601case = true;
            this.f25605new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25602do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25601case) {
                return;
            }
            long j = this.f25606try;
            if (j != this.f25604if) {
                this.f25606try = j + 1;
                return;
            }
            this.f25601case = true;
            this.f25605new.cancel();
            this.f25605new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25602do.onSuccess(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25605new, subscription)) {
                this.f25605new = subscription;
                this.f25602do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public d(Cfor<T> cfor, long j, T t) {
        this.f25598do = cfor;
        this.f25600if = j;
        this.f25599for = t;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new b(this.f25598do, this.f25600if, this.f25599for, true));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f25598do.m5(new Cdo(singleObserver, this.f25600if, this.f25599for));
    }
}
