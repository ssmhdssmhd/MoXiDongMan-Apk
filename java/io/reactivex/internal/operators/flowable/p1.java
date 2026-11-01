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
public final class p1<T> extends fy0<T> implements FuseToFlowable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25782do;

    /* renamed from: io.reactivex.internal.operators.flowable.p1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f25783do;

        /* renamed from: for, reason: not valid java name */
        public boolean f25784for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25785if;

        /* renamed from: new, reason: not valid java name */
        public T f25786new;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f25783do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25785if.cancel();
            this.f25785if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25785if == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25784for) {
                return;
            }
            this.f25784for = true;
            this.f25785if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            T t = this.f25786new;
            this.f25786new = null;
            if (t == null) {
                this.f25783do.onComplete();
            } else {
                this.f25783do.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25784for) {
                jp1.l(th);
                return;
            }
            this.f25784for = true;
            this.f25785if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25783do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25784for) {
                return;
            }
            if (this.f25786new == null) {
                this.f25786new = t;
                return;
            }
            this.f25784for = true;
            this.f25785if.cancel();
            this.f25785if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25783do.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25785if, subscription)) {
                this.f25785if = subscription;
                this.f25783do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public p1(Cfor<T> cfor) {
        this.f25782do = cfor;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<T> fuseToFlowable() {
        return jp1.h(new o1(this.f25782do, null, false));
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f25782do.m5(new Cdo(maybeObserver));
    }
}
