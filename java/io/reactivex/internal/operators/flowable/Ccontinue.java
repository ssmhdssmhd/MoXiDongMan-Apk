package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import io.reactivex.Cfor;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccontinue<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f25583case;

    /* renamed from: for, reason: not valid java name */
    public final long f25584for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25585new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25586try;

    /* renamed from: io.reactivex.internal.operators.flowable.continue$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: case, reason: not valid java name */
        public Subscription f25587case;

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25588do;

        /* renamed from: for, reason: not valid java name */
        public final TimeUnit f25589for;

        /* renamed from: if, reason: not valid java name */
        public final long f25590if;

        /* renamed from: new, reason: not valid java name */
        public final Ctry.Cfor f25591new;

        /* renamed from: try, reason: not valid java name */
        public final boolean f25592try;

        /* renamed from: io.reactivex.internal.operators.flowable.continue$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0277do implements Runnable {
            public RunnableC0277do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cdo.this.f25588do.onComplete();
                } finally {
                    Cdo.this.f25591new.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.internal.operators.flowable.continue$do$for, reason: invalid class name */
        public final class Cfor implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final T f25594do;

            public Cfor(T t) {
                this.f25594do = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.f25588do.onNext(this.f25594do);
            }
        }

        /* renamed from: io.reactivex.internal.operators.flowable.continue$do$if, reason: invalid class name */
        public final class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Throwable f25596do;

            public Cif(Throwable th) {
                this.f25596do = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cdo.this.f25588do.onError(this.f25596do);
                } finally {
                    Cdo.this.f25591new.dispose();
                }
            }
        }

        public Cdo(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor, boolean z) {
            this.f25588do = subscriber;
            this.f25590if = j;
            this.f25589for = timeUnit;
            this.f25591new = cfor;
            this.f25592try = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25587case.cancel();
            this.f25591new.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25591new.mo29362for(new RunnableC0277do(), this.f25590if, this.f25589for);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25591new.mo29362for(new Cif(th), this.f25592try ? this.f25590if : 0L, this.f25589for);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25591new.mo29362for(new Cfor(t), this.f25590if, this.f25589for);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25587case, subscription)) {
                this.f25587case = subscription;
                this.f25588do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25587case.request(j);
        }
    }

    public Ccontinue(Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(cfor);
        this.f25584for = j;
        this.f25585new = timeUnit;
        this.f25586try = ctry;
        this.f25583case = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(this.f25583case ? subscriber : new bx1(subscriber), this.f25584for, this.f25585new, this.f25586try.mo4229if(), this.f25583case));
    }
}
