package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.r6;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class i1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f25681case;

    /* renamed from: for, reason: not valid java name */
    public final long f25682for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25683new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25684try;

    /* renamed from: io.reactivex.internal.operators.flowable.i1$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T> {
        private static final long serialVersionUID = -7139995637533111443L;
        public final AtomicInteger wip;

        public Cdo(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry ctry) {
            super(subscriber, j, timeUnit, ctry);
            this.wip = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.flowable.i1.Cfor
        public void complete() {
            emit();
            if (this.wip.decrementAndGet() == 0) {
                this.downstream.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wip.incrementAndGet() == 2) {
                emit();
                if (this.wip.decrementAndGet() == 0) {
                    this.downstream.onComplete();
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.i1$for, reason: invalid class name */
    public static abstract class Cfor<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;
        public final Subscriber<? super T> downstream;
        public final long period;
        public final Ctry scheduler;
        public final TimeUnit unit;
        public Subscription upstream;
        public final AtomicLong requested = new AtomicLong();
        public final tw1 timer = new tw1();

        public Cfor(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry ctry) {
            this.downstream = subscriber;
            this.period = j;
            this.unit = timeUnit;
            this.scheduler = ctry;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            cancelTimer();
            this.upstream.cancel();
        }

        public void cancelTimer() {
            io.reactivex.internal.disposables.Cdo.dispose(this.timer);
        }

        public abstract void complete();

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(andSet);
                    r6.m6779try(this.requested, 1L);
                } else {
                    cancel();
                    this.downstream.onError(new a01("Couldn't emit value due to lack of requests!"));
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            cancelTimer();
            complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            cancelTimer();
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                tw1 tw1Var = this.timer;
                Ctry ctry = this.scheduler;
                long j = this.period;
                tw1Var.replace(ctry.mo29689case(this, j, j, this.unit));
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.i1$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        public Cif(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry ctry) {
            super(subscriber, j, timeUnit, ctry);
        }

        @Override // io.reactivex.internal.operators.flowable.i1.Cfor
        public void complete() {
            this.downstream.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            emit();
        }
    }

    public i1(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(cfor);
        this.f25682for = j;
        this.f25683new = timeUnit;
        this.f25684try = ctry;
        this.f25681case = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        if (this.f25681case) {
            this.f25614if.m5(new Cdo(bx1Var, this.f25682for, this.f25683new, this.f25684try));
        } else {
            this.f25614if.m5(new Cif(bx1Var, this.f25682for, this.f25683new, this.f25684try));
        }
    }
}
