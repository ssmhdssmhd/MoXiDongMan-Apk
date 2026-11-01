package io.reactivex.internal.operators.flowable;

import android.support.v4.r6;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class w1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26025for;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26026new;

    /* renamed from: io.reactivex.internal.operators.flowable.w1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Thread> implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 8094547886072529208L;
        public final Subscriber<? super T> downstream;
        public final boolean nonScheduledRequests;
        public Publisher<T> source;
        public final Ctry.Cfor worker;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        /* renamed from: io.reactivex.internal.operators.flowable.w1$do$do, reason: invalid class name and collision with other inner class name */
        public static final class RunnableC0292do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final Subscription f26027do;

            /* renamed from: if, reason: not valid java name */
            public final long f26028if;

            public RunnableC0292do(Subscription subscription, long j) {
                this.f26027do = subscription;
                this.f26028if = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f26027do.request(this.f26028if);
            }
        }

        public Cdo(Subscriber<? super T> subscriber, Ctry.Cfor cfor, Publisher<T> publisher, boolean z) {
            this.downstream = subscriber;
            this.worker = cfor;
            this.source = publisher;
            this.nonScheduledRequests = !z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Cfor.cancel(this.upstream);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.setOnce(this.upstream, subscription)) {
                long andSet = this.requested.getAndSet(0L);
                if (andSet != 0) {
                    requestUpstream(andSet, subscription);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                Subscription subscription = this.upstream.get();
                if (subscription != null) {
                    requestUpstream(j, subscription);
                    return;
                }
                r6.m6775do(this.requested, j);
                Subscription subscription2 = this.upstream.get();
                if (subscription2 != null) {
                    long andSet = this.requested.getAndSet(0L);
                    if (andSet != 0) {
                        requestUpstream(andSet, subscription2);
                    }
                }
            }
        }

        public void requestUpstream(long j, Subscription subscription) {
            if (this.nonScheduledRequests || Thread.currentThread() == get()) {
                subscription.request(j);
            } else {
                this.worker.mo29677if(new RunnableC0292do(subscription, j));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            Publisher<T> publisher = this.source;
            this.source = null;
            publisher.subscribe(this);
        }
    }

    public w1(io.reactivex.Cfor<T> cfor, Ctry ctry, boolean z) {
        super(cfor);
        this.f26025for = ctry;
        this.f26026new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Ctry.Cfor cforMo4229if = this.f26025for.mo4229if();
        Cdo cdo = new Cdo(subscriber, cforMo4229if, this.f25614if, this.f26026new);
        subscriber.onSubscribe(cdo);
        cforMo4229if.mo29677if(cdo);
    }
}
