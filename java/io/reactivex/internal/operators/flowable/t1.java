package io.reactivex.internal.operators.flowable;

import android.support.v4.e12;
import android.support.v4.r6;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class t1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final int f25911case;

    /* renamed from: else, reason: not valid java name */
    public final boolean f25912else;

    /* renamed from: for, reason: not valid java name */
    public final long f25913for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25914new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25915try;

    /* renamed from: io.reactivex.internal.operators.flowable.t1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5677354903406201275L;
        public volatile boolean cancelled;
        public final boolean delayError;
        public volatile boolean done;
        public final Subscriber<? super T> downstream;
        public Throwable error;
        public final e12<Object> queue;
        public final AtomicLong requested = new AtomicLong();
        public final Ctry scheduler;
        public final long time;
        public final TimeUnit unit;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
            this.downstream = subscriber;
            this.time = j;
            this.unit = timeUnit;
            this.scheduler = ctry;
            this.queue = new e12<>(i);
            this.delayError = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    subscriber.onError(th);
                } else {
                    subscriber.onComplete();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                subscriber.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            subscriber.onComplete();
            return true;
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.downstream;
            e12<Object> e12Var = this.queue;
            boolean z = this.delayError;
            TimeUnit timeUnit = this.unit;
            Ctry ctry = this.scheduler;
            long j = this.time;
            int iAddAndGet = 1;
            do {
                long j2 = this.requested.get();
                long j3 = 0;
                while (j3 != j2) {
                    boolean z2 = this.done;
                    Long l = (Long) e12Var.peek();
                    boolean z3 = l == null;
                    boolean z4 = (z3 || l.longValue() <= ctry.mo29783for(timeUnit) - j) ? z3 : true;
                    if (checkTerminated(z2, z4, subscriber, z)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    e12Var.poll();
                    subscriber.onNext(e12Var.poll());
                    j3++;
                }
                if (j3 != 0) {
                    r6.m6779try(this.requested, j3);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.queue.offer(Long.valueOf(this.scheduler.mo29783for(this.unit)), t);
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    public t1(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
        super(cfor);
        this.f25913for = j;
        this.f25914new = timeUnit;
        this.f25915try = ctry;
        this.f25911case = i;
        this.f25912else = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25913for, this.f25914new, this.f25915try, this.f25911case, this.f25912else));
    }
}
