package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.jp1;
import android.support.v4.r6;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cabstract<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25534for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25535new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25536try;

    /* renamed from: io.reactivex.internal.operators.flowable.abstract$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;
        public final long idx;
        public final AtomicBoolean once = new AtomicBoolean();
        public final Cif<T> parent;
        public final T value;

        public Cdo(T t, long j, Cif<T> cif) {
            this.value = t;
            this.idx = j;
            this.parent = cif;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        public void emit() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.emit(this.idx, this.value, this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            emit();
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.abstract$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -9102637559663639004L;
        public boolean done;
        public final Subscriber<? super T> downstream;
        public volatile long index;
        public final long timeout;
        public Disposable timer;
        public final TimeUnit unit;
        public Subscription upstream;
        public final Ctry.Cfor worker;

        public Cif(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            this.worker.dispose();
        }

        public void emit(long j, T t, Cdo<T> cdo) {
            if (j == this.index) {
                if (get() == 0) {
                    cancel();
                    this.downstream.onError(new a01("Could not deliver value due to lack of requests"));
                } else {
                    this.downstream.onNext(t);
                    r6.m6779try(this, 1L);
                    cdo.dispose();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Disposable disposable = this.timer;
            if (disposable != null) {
                disposable.dispose();
            }
            Cdo cdo = (Cdo) disposable;
            if (cdo != null) {
                cdo.emit();
            }
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            Disposable disposable = this.timer;
            if (disposable != null) {
                disposable.dispose();
            }
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            long j = this.index + 1;
            this.index = j;
            Disposable disposable = this.timer;
            if (disposable != null) {
                disposable.dispose();
            }
            Cdo cdo = new Cdo(t, j, this);
            this.timer = cdo;
            cdo.setResource(this.worker.mo29362for(cdo, this.timeout, this.unit));
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
                r6.m6775do(this, j);
            }
        }
    }

    public Cabstract(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry) {
        super(cfor);
        this.f25534for = j;
        this.f25535new = timeUnit;
        this.f25536try = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cif(new bx1(subscriber), this.f25534for, this.f25535new, this.f25536try.mo4229if()));
    }
}
