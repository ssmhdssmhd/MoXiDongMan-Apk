package io.reactivex.internal.operators.flowable;

import android.support.v4.fy0;
import android.support.v4.jp1;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class c<T> extends fy0<T> implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25548do;

    /* renamed from: if, reason: not valid java name */
    public final long f25549if;

    /* renamed from: io.reactivex.internal.operators.flowable.c$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f25550do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25551for;

        /* renamed from: if, reason: not valid java name */
        public final long f25552if;

        /* renamed from: new, reason: not valid java name */
        public long f25553new;

        /* renamed from: try, reason: not valid java name */
        public boolean f25554try;

        public Cdo(MaybeObserver<? super T> maybeObserver, long j) {
            this.f25550do = maybeObserver;
            this.f25552if = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25551for.cancel();
            this.f25551for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25551for == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25551for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            if (this.f25554try) {
                return;
            }
            this.f25554try = true;
            this.f25550do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25554try) {
                jp1.l(th);
                return;
            }
            this.f25554try = true;
            this.f25551for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25550do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25554try) {
                return;
            }
            long j = this.f25553new;
            if (j != this.f25552if) {
                this.f25553new = j + 1;
                return;
            }
            this.f25554try = true;
            this.f25551for.cancel();
            this.f25551for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25550do.onSuccess(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25551for, subscription)) {
                this.f25551for = subscription;
                this.f25550do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public c(Cfor<T> cfor, long j) {
        this.f25548do = cfor;
        this.f25549if = j;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new b(this.f25548do, this.f25549if, null, false));
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f25548do.m5(new Cdo(maybeObserver, this.f25549if));
    }
}
