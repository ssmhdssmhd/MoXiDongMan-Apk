package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class FlowableTimeoutTimed<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final Publisher<? extends T> f25510case;

    /* renamed from: for, reason: not valid java name */
    public final long f25511for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25512new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25513try;

    public interface TimeoutSupport {
        void onTimeout(long j);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeoutTimed$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T> {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25514do;

        /* renamed from: if, reason: not valid java name */
        public final io.reactivex.internal.subscriptions.Cif f25515if;

        public Cdo(Subscriber<? super T> subscriber, io.reactivex.internal.subscriptions.Cif cif) {
            this.f25514do = subscriber;
            this.f25515if = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25514do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25514do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25514do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f25515if.setSubscription(subscription);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeoutTimed$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public final Subscriber<? super T> downstream;
        public final long timeout;
        public final TimeUnit unit;
        public final Ctry.Cfor worker;
        public final tw1 task = new tw1();
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public Cfor(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.downstream.onNext(t);
                    startTimeout(j2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                this.downstream.onError(new TimeoutException(Ccase.m29717try(this.timeout, this.unit)));
                this.worker.dispose();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.upstream, this.requested, j);
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.mo29362for(new Cnew(j, this), this.timeout, this.unit));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeoutTimed$if, reason: invalid class name */
    public static final class Cif<T> extends io.reactivex.internal.subscriptions.Cif implements FlowableSubscriber<T>, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;
        public long consumed;
        public final Subscriber<? super T> downstream;
        public Publisher<? extends T> fallback;
        public final AtomicLong index;
        public final tw1 task;
        public final long timeout;
        public final TimeUnit unit;
        public final AtomicReference<Subscription> upstream;
        public final Ctry.Cfor worker;

        public Cif(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor, Publisher<? extends T> publisher) {
            super(true);
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
            this.fallback = publisher;
            this.task = new tw1();
            this.upstream = new AtomicReference<>();
            this.index = new AtomicLong();
        }

        @Override // io.reactivex.internal.subscriptions.Cif, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.task.dispose();
                this.downstream.onComplete();
                this.worker.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.index.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                jp1.l(th);
                return;
            }
            this.task.dispose();
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.index.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.index.compareAndSet(j, j2)) {
                    this.task.get().dispose();
                    this.consumed++;
                    this.downstream.onNext(t);
                    startTimeout(j2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.setOnce(this.upstream, subscription)) {
                setSubscription(subscription);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableTimeoutTimed.TimeoutSupport
        public void onTimeout(long j) {
            if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                long j2 = this.consumed;
                if (j2 != 0) {
                    produced(j2);
                }
                Publisher<? extends T> publisher = this.fallback;
                this.fallback = null;
                publisher.subscribe(new Cdo(this.downstream, this));
                this.worker.dispose();
            }
        }

        public void startTimeout(long j) {
            this.task.replace(this.worker.mo29362for(new Cnew(j, this), this.timeout, this.unit));
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableTimeoutTimed$new, reason: invalid class name */
    public static final class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final TimeoutSupport f25516do;

        /* renamed from: if, reason: not valid java name */
        public final long f25517if;

        public Cnew(long j, TimeoutSupport timeoutSupport) {
            this.f25517if = j;
            this.f25516do = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25516do.onTimeout(this.f25517if);
        }
    }

    public FlowableTimeoutTimed(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry, Publisher<? extends T> publisher) {
        super(cfor);
        this.f25511for = j;
        this.f25512new = timeUnit;
        this.f25513try = ctry;
        this.f25510case = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (this.f25510case == null) {
            Cfor cfor = new Cfor(subscriber, this.f25511for, this.f25512new, this.f25513try.mo4229if());
            subscriber.onSubscribe(cfor);
            cfor.startTimeout(0L);
            this.f25614if.m5(cfor);
            return;
        }
        Cif cif = new Cif(subscriber, this.f25511for, this.f25512new, this.f25513try.mo4229if(), this.f25510case);
        subscriber.onSubscribe(cif);
        cif.startTimeout(0L);
        this.f25614if.m5(cif);
    }
}
