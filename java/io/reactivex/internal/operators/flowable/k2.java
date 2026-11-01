package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import io.reactivex.Cfor;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class k2 extends Cfor<Long> {

    /* renamed from: for, reason: not valid java name */
    public final long f25732for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f25733if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25734new;

    /* renamed from: io.reactivex.internal.operators.flowable.k2$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        public final Subscriber<? super Long> downstream;
        public volatile boolean requested;

        public Cdo(Subscriber<? super Long> subscriber) {
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                this.requested = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() != io.reactivex.internal.disposables.Cdo.DISPOSED) {
                if (!this.requested) {
                    lazySet(Cif.INSTANCE);
                    this.downstream.onError(new a01("Can't deliver value due to lack of requests"));
                } else {
                    this.downstream.onNext(0L);
                    lazySet(Cif.INSTANCE);
                    this.downstream.onComplete();
                }
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.trySet(this, disposable);
        }
    }

    public k2(long j, TimeUnit timeUnit, Ctry ctry) {
        this.f25732for = j;
        this.f25734new = timeUnit;
        this.f25733if = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Long> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        cdo.setResource(this.f25733if.mo29361try(cdo, this.f25732for, this.f25734new));
    }
}
