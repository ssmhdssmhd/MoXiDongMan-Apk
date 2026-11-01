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
public final class q1<T> extends jz1<T> implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25813do;

    /* renamed from: if, reason: not valid java name */
    public final T f25814if;

    /* renamed from: io.reactivex.internal.operators.flowable.q1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f25815do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25816for;

        /* renamed from: if, reason: not valid java name */
        public final T f25817if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25818new;

        /* renamed from: try, reason: not valid java name */
        public T f25819try;

        public Cdo(SingleObserver<? super T> singleObserver, T t) {
            this.f25815do = singleObserver;
            this.f25817if = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25816for.cancel();
            this.f25816for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25816for == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25818new) {
                return;
            }
            this.f25818new = true;
            this.f25816for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            T t = this.f25819try;
            this.f25819try = null;
            if (t == null) {
                t = this.f25817if;
            }
            if (t != null) {
                this.f25815do.onSuccess(t);
            } else {
                this.f25815do.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25818new) {
                jp1.l(th);
                return;
            }
            this.f25818new = true;
            this.f25816for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25815do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25818new) {
                return;
            }
            if (this.f25819try == null) {
                this.f25819try = t;
                return;
            }
            this.f25818new = true;
            this.f25816for.cancel();
            this.f25816for = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25815do.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25816for, subscription)) {
                this.f25816for = subscription;
                this.f25815do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public q1(Cfor<T> cfor, T t) {
        this.f25813do = cfor;
        this.f25814if = t;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new o1(this.f25813do, this.f25814if, true));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f25813do.m5(new Cdo(singleObserver, this.f25814if));
    }
}
