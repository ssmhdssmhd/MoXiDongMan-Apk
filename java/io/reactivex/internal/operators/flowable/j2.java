package io.reactivex.internal.operators.flowable;

import android.support.v4.e72;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class j2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, e72<T>> {

    /* renamed from: for, reason: not valid java name */
    public final Ctry f25713for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25714new;

    /* renamed from: io.reactivex.internal.operators.flowable.j2$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super e72<T>> f25715do;

        /* renamed from: for, reason: not valid java name */
        public final Ctry f25716for;

        /* renamed from: if, reason: not valid java name */
        public final TimeUnit f25717if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f25718new;

        /* renamed from: try, reason: not valid java name */
        public long f25719try;

        public Cdo(Subscriber<? super e72<T>> subscriber, TimeUnit timeUnit, Ctry ctry) {
            this.f25715do = subscriber;
            this.f25716for = ctry;
            this.f25717if = timeUnit;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25718new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25715do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25715do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long jMo29783for = this.f25716for.mo29783for(this.f25717if);
            long j = this.f25719try;
            this.f25719try = jMo29783for;
            this.f25715do.onNext(new e72(t, jMo29783for - j, this.f25717if));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25718new, subscription)) {
                this.f25719try = this.f25716for.mo29783for(this.f25717if);
                this.f25718new = subscription;
                this.f25715do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25718new.request(j);
        }
    }

    public j2(io.reactivex.Cfor<T> cfor, TimeUnit timeUnit, Ctry ctry) {
        super(cfor);
        this.f25713for = ctry;
        this.f25714new = timeUnit;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super e72<T>> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25714new, this.f25713for));
    }
}
