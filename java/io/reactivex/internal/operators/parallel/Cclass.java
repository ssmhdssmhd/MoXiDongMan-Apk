package io.reactivex.internal.operators.parallel;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.ub1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass<T> extends ub1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<? extends T> f27032do;

    /* renamed from: for, reason: not valid java name */
    public final int f27033for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f27034if;

    /* renamed from: io.reactivex.internal.operators.parallel.class$do, reason: invalid class name */
    public static abstract class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;
        public volatile boolean cancelled;
        public int consumed;
        public volatile boolean done;
        public Throwable error;
        public final int limit;
        public final int prefetch;
        public final b12<T> queue;
        public final AtomicLong requested = new AtomicLong();
        public Subscription upstream;
        public final Ctry.Cfor worker;

        public Cdo(int i, b12<T> b12Var, Ctry.Cfor cfor) {
            this.prefetch = i;
            this.queue = b12Var;
            this.limit = i - (i >> 2);
            this.worker = cfor;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.queue.offer(t)) {
                schedule();
            } else {
                this.upstream.cancel();
                onError(new a01("Queue is full?!"));
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                schedule();
            }
        }

        public final void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.mo29677if(this);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.class$for, reason: invalid class name */
    public static final class Cfor<T> extends Cdo<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        public final ConditionalSubscriber<? super T> downstream;

        public Cfor(ConditionalSubscriber<? super T> conditionalSubscriber, int i, b12<T> b12Var, Ctry.Cfor cfor) {
            super(i, b12Var, cfor);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            Throwable th;
            int i2 = this.consumed;
            b12<T> b12Var = this.queue;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            int i3 = this.limit;
            int i4 = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.cancelled) {
                        b12Var.clear();
                        return;
                    }
                    boolean z = this.done;
                    if (z && (th = this.error) != null) {
                        b12Var.clear();
                        conditionalSubscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                    T tPoll = b12Var.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        conditionalSubscriber.onComplete();
                        this.worker.dispose();
                        return;
                    } else {
                        if (z2) {
                            break;
                        }
                        if (conditionalSubscriber.tryOnNext(tPoll)) {
                            j2++;
                        }
                        i2++;
                        if (i2 == i3) {
                            i = i4;
                            this.upstream.request(i2);
                            i2 = 0;
                        } else {
                            i = i4;
                        }
                        i4 = i;
                    }
                }
                int i5 = i4;
                if (j2 == j) {
                    if (this.cancelled) {
                        b12Var.clear();
                        return;
                    }
                    if (this.done) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            b12Var.clear();
                            conditionalSubscriber.onError(th2);
                            this.worker.dispose();
                            return;
                        } else if (b12Var.isEmpty()) {
                            conditionalSubscriber.onComplete();
                            this.worker.dispose();
                            return;
                        }
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int iAddAndGet = get();
                if (iAddAndGet == i5) {
                    this.consumed = i2;
                    iAddAndGet = addAndGet(-i5);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
                i4 = iAddAndGet;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.class$if, reason: invalid class name */
    public final class Cif implements SchedulerMultiWorkerSupport.WorkerCallback {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T>[] f27035do;

        /* renamed from: if, reason: not valid java name */
        public final Subscriber<T>[] f27037if;

        public Cif(Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2) {
            this.f27035do = subscriberArr;
            this.f27037if = subscriberArr2;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport.WorkerCallback
        public void onWorker(int i, Ctry.Cfor cfor) {
            Cclass.this.h(i, this.f27035do, this.f27037if, cfor);
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.class$new, reason: invalid class name */
    public static final class Cnew<T> extends Cdo<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        public final Subscriber<? super T> downstream;

        public Cnew(Subscriber<? super T> subscriber, int i, b12<T> b12Var, Ctry.Cfor cfor) {
            super(i, b12Var, cfor);
            this.downstream = subscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.prefetch);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            Throwable th;
            int i2 = this.consumed;
            b12<T> b12Var = this.queue;
            Subscriber<? super T> subscriber = this.downstream;
            int i3 = this.limit;
            int i4 = 1;
            while (true) {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.cancelled) {
                        b12Var.clear();
                        return;
                    }
                    boolean z = this.done;
                    if (z && (th = this.error) != null) {
                        b12Var.clear();
                        subscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                    T tPoll = b12Var.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        subscriber.onComplete();
                        this.worker.dispose();
                        return;
                    } else {
                        if (z2) {
                            break;
                        }
                        subscriber.onNext(tPoll);
                        j2++;
                        i2++;
                        if (i2 == i3) {
                            i = i4;
                            this.upstream.request(i2);
                            i2 = 0;
                        } else {
                            i = i4;
                        }
                        i4 = i;
                    }
                }
                int i5 = i4;
                if (j2 == j) {
                    if (this.cancelled) {
                        b12Var.clear();
                        return;
                    }
                    if (this.done) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            b12Var.clear();
                            subscriber.onError(th2);
                            this.worker.dispose();
                            return;
                        } else if (b12Var.isEmpty()) {
                            subscriber.onComplete();
                            this.worker.dispose();
                            return;
                        }
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                int iAddAndGet = get();
                if (iAddAndGet == i5) {
                    this.consumed = i2;
                    iAddAndGet = addAndGet(-i5);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
                i4 = iAddAndGet;
            }
        }
    }

    public Cclass(ub1<? extends T> ub1Var, Ctry ctry, int i) {
        this.f27032do = ub1Var;
        this.f27034if = ctry;
        this.f27033for = i;
    }

    public void h(int i, Subscriber<? super T>[] subscriberArr, Subscriber<T>[] subscriberArr2, Ctry.Cfor cfor) {
        Subscriber<? super T> subscriber = subscriberArr[i];
        b12 b12Var = new b12(this.f27033for);
        if (subscriber instanceof ConditionalSubscriber) {
            subscriberArr2[i] = new Cfor((ConditionalSubscriber) subscriber, this.f27033for, b12Var, cfor);
        } else {
            subscriberArr2[i] = new Cnew(subscriber, this.f27033for, b12Var, cfor);
        }
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27032do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<T>[] subscriberArr2 = new Subscriber[length];
            Object obj = this.f27034if;
            if (obj instanceof SchedulerMultiWorkerSupport) {
                ((SchedulerMultiWorkerSupport) obj).createWorkers(length, new Cif(subscriberArr, subscriberArr2));
            } else {
                for (int i = 0; i < length; i++) {
                    h(i, subscriberArr, subscriberArr2, this.f27034if.mo4229if());
                }
            }
            this.f27032do.subscribe(subscriberArr2);
        }
    }
}
