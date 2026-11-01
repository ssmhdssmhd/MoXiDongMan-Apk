package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.r6;
import io.reactivex.Cfor;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.Csuper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class w extends Cfor<Long> {

    /* renamed from: case, reason: not valid java name */
    public final long f26018case;

    /* renamed from: else, reason: not valid java name */
    public final TimeUnit f26019else;

    /* renamed from: for, reason: not valid java name */
    public final long f26020for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26021if;

    /* renamed from: new, reason: not valid java name */
    public final long f26022new;

    /* renamed from: try, reason: not valid java name */
    public final long f26023try;

    /* renamed from: io.reactivex.internal.operators.flowable.w$do, reason: invalid class name */
    public static final class Cdo extends AtomicLong implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        public long count;
        public final Subscriber<? super Long> downstream;
        public final long end;
        public final AtomicReference<Disposable> resource = new AtomicReference<>();

        public Cdo(Subscriber<? super Long> subscriber, long j, long j2) {
            this.downstream = subscriber;
            this.count = j;
            this.end = j2;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.disposables.Cdo.dispose(this.resource);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Disposable disposable = this.resource.get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable != cdo) {
                long j = get();
                if (j == 0) {
                    this.downstream.onError(new a01("Can't deliver value " + this.count + " due to lack of requests"));
                    io.reactivex.internal.disposables.Cdo.dispose(this.resource);
                    return;
                }
                long j2 = this.count;
                this.downstream.onNext(Long.valueOf(j2));
                if (j2 == this.end) {
                    if (this.resource.get() != cdo) {
                        this.downstream.onComplete();
                    }
                    io.reactivex.internal.disposables.Cdo.dispose(this.resource);
                } else {
                    this.count = j2 + 1;
                    if (j != Long.MAX_VALUE) {
                        decrementAndGet();
                    }
                }
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.resource, disposable);
        }
    }

    public w(long j, long j2, long j3, long j4, TimeUnit timeUnit, Ctry ctry) {
        this.f26023try = j3;
        this.f26018case = j4;
        this.f26019else = timeUnit;
        this.f26021if = ctry;
        this.f26020for = j;
        this.f26022new = j2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Long> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f26020for, this.f26022new);
        subscriber.onSubscribe(cdo);
        Ctry ctry = this.f26021if;
        if (!(ctry instanceof Csuper)) {
            cdo.setResource(ctry.mo29689case(cdo, this.f26023try, this.f26018case, this.f26019else));
            return;
        }
        Ctry.Cfor cforMo4229if = ctry.mo4229if();
        cdo.setResource(cforMo4229if);
        cforMo4229if.mo29701new(cdo, this.f26023try, this.f26018case, this.f26019else);
    }
}
