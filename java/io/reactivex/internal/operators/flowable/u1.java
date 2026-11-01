package io.reactivex.internal.operators.flowable;

import android.support.v4.h4;
import android.support.v4.si0;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class u1<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<U> f25993for;

    /* renamed from: io.reactivex.internal.operators.flowable.u1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = -6270983465606289181L;
        public final Subscriber<? super T> downstream;
        public volatile boolean gate;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();
        public final Cdo<T>.C0291do other = new C0291do();
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.flowable.u1$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0291do extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -5592042965931999169L;

            public C0291do() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                Cdo.this.gate = true;
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                Cfor.cancel(Cdo.this.upstream);
                Cdo cdo = Cdo.this;
                si0.m7414new(cdo.downstream, th, cdo, cdo.error);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                Cdo.this.gate = true;
                get().cancel();
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                Cfor.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        public Cdo(Subscriber<? super T> subscriber) {
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Cfor.cancel(this.upstream);
            Cfor.cancel(this.other);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Cfor.cancel(this.other);
            si0.m7413if(this.downstream, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Cfor.cancel(this.other);
            si0.m7414new(this.downstream, th, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.get().request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            Cfor.deferredRequest(this.upstream, this.requested, j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (!this.gate) {
                return false;
            }
            si0.m7410case(this.downstream, t, this, this.error);
            return true;
        }
    }

    public u1(io.reactivex.Cfor<T> cfor, Publisher<U> publisher) {
        super(cfor);
        this.f25993for = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        this.f25993for.subscribe(cdo.other);
        this.f25614if.m5(cdo);
    }
}
