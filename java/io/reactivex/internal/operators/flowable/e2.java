package io.reactivex.internal.operators.flowable;

import android.support.v4.h4;
import android.support.v4.si0;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class e2<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<? extends U> f25621for;

    /* renamed from: io.reactivex.internal.operators.flowable.e2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4945480365982832967L;
        public final Subscriber<? super T> downstream;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final Cdo<T>.C0278do other = new C0278do();
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.flowable.e2$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0278do extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -3592821756711087922L;

            public C0278do() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                Cfor.cancel(Cdo.this.upstream);
                Cdo cdo = Cdo.this;
                si0.m7413if(cdo.downstream, cdo, cdo.error);
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                Cfor.cancel(Cdo.this.upstream);
                Cdo cdo = Cdo.this;
                si0.m7414new(cdo.downstream, th, cdo, cdo.error);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                Cfor.cancel(this);
                onComplete();
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
            si0.m7410case(this.downstream, t, this, this.error);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            Cfor.deferredRequest(this.upstream, this.requested, j);
        }
    }

    public e2(io.reactivex.Cfor<T> cfor, Publisher<? extends U> publisher) {
        super(cfor);
        this.f25621for = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        this.f25621for.subscribe(cdo.other);
        this.f25614if.m5(cdo);
    }
}
