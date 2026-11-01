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
public final class c2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25559case;

    /* renamed from: else, reason: not valid java name */
    public final int f25560else;

    /* renamed from: for, reason: not valid java name */
    public final long f25561for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f25562goto;

    /* renamed from: new, reason: not valid java name */
    public final long f25563new;

    /* renamed from: try, reason: not valid java name */
    public final TimeUnit f25564try;

    /* renamed from: io.reactivex.internal.operators.flowable.c2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5677354903406201275L;
        public volatile boolean cancelled;
        public final long count;
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

        public Cdo(Subscriber<? super T> subscriber, long j, long j2, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
            this.downstream = subscriber;
            this.count = j;
            this.time = j2;
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

        public boolean checkTerminated(boolean z, Subscriber<? super T> subscriber, boolean z2) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (z2) {
                if (!z) {
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
            if (!z) {
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
            int iAddAndGet = 1;
            do {
                if (this.done) {
                    if (checkTerminated(e12Var.isEmpty(), subscriber, z)) {
                        return;
                    }
                    long j = this.requested.get();
                    long j2 = 0;
                    while (true) {
                        if (checkTerminated(e12Var.peek() == null, subscriber, z)) {
                            return;
                        }
                        if (j != j2) {
                            e12Var.poll();
                            subscriber.onNext(e12Var.poll());
                            j2++;
                        } else if (j2 != 0) {
                            r6.m6779try(this.requested, j2);
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            trim(this.scheduler.mo29783for(this.unit), this.queue);
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.delayError) {
                trim(this.scheduler.mo29783for(this.unit), this.queue);
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            e12<Object> e12Var = this.queue;
            long jMo29783for = this.scheduler.mo29783for(this.unit);
            e12Var.offer(Long.valueOf(jMo29783for), t);
            trim(jMo29783for, e12Var);
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

        public void trim(long j, e12<Object> e12Var) {
            long j2 = this.time;
            long j3 = this.count;
            boolean z = j3 == Long.MAX_VALUE;
            while (!e12Var.isEmpty()) {
                if (((Long) e12Var.peek()).longValue() >= j - j2 && (z || (e12Var.m1601const() >> 1) <= j3)) {
                    return;
                }
                e12Var.poll();
                e12Var.poll();
            }
        }
    }

    public c2(io.reactivex.Cfor<T> cfor, long j, long j2, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
        super(cfor);
        this.f25561for = j;
        this.f25563new = j2;
        this.f25564try = timeUnit;
        this.f25559case = ctry;
        this.f25560else = i;
        this.f25562goto = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25561for, this.f25563new, this.f25564try, this.f25559case, this.f25560else, this.f25562goto));
    }
}
