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
public final class v extends Cfor<Long> {

    /* renamed from: for, reason: not valid java name */
    public final long f25998for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f25999if;

    /* renamed from: new, reason: not valid java name */
    public final long f26000new;

    /* renamed from: try, reason: not valid java name */
    public final TimeUnit f26001try;

    /* renamed from: io.reactivex.internal.operators.flowable.v$do, reason: invalid class name */
    public static final class Cdo extends AtomicLong implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        public long count;
        public final Subscriber<? super Long> downstream;
        public final AtomicReference<Disposable> resource = new AtomicReference<>();

        public Cdo(Subscriber<? super Long> subscriber) {
            this.downstream = subscriber;
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
            if (this.resource.get() != io.reactivex.internal.disposables.Cdo.DISPOSED) {
                if (get() != 0) {
                    Subscriber<? super Long> subscriber = this.downstream;
                    long j = this.count;
                    this.count = j + 1;
                    subscriber.onNext(Long.valueOf(j));
                    r6.m6779try(this, 1L);
                    return;
                }
                this.downstream.onError(new a01("Can't deliver value " + this.count + " due to lack of requests"));
                io.reactivex.internal.disposables.Cdo.dispose(this.resource);
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.resource, disposable);
        }
    }

    public v(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        this.f25998for = j;
        this.f26000new = j2;
        this.f26001try = timeUnit;
        this.f25999if = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Long> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        Ctry ctry = this.f25999if;
        if (!(ctry instanceof Csuper)) {
            cdo.setResource(ctry.mo29689case(cdo, this.f25998for, this.f26000new, this.f26001try));
            return;
        }
        Ctry.Cfor cforMo4229if = ctry.mo4229if();
        cdo.setResource(cforMo4229if);
        cforMo4229if.mo29701new(cdo, this.f25998for, this.f26000new, this.f26001try);
    }
}
