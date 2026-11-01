package io.reactivex.internal.operators.flowable;

import android.support.v4.h4;
import android.support.v4.si0;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class g0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final CompletableSource f25653for;

    /* renamed from: io.reactivex.internal.operators.flowable.g0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4592979584110982903L;
        public final Subscriber<? super T> downstream;
        public volatile boolean mainDone;
        public volatile boolean otherDone;
        public final AtomicReference<Subscription> mainSubscription = new AtomicReference<>();
        public final C0280do otherObserver = new C0280do(this);
        public final h4 error = new h4();
        public final AtomicLong requested = new AtomicLong();

        /* renamed from: io.reactivex.internal.operators.flowable.g0$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0280do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -2935427570954647017L;
            public final Cdo<?> parent;

            public C0280do(Cdo<?> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.otherComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(Subscriber<? super T> subscriber) {
            this.downstream = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Cfor.cancel(this.mainSubscription);
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.mainDone = true;
            if (this.otherDone) {
                si0.m7413if(this.downstream, this, this.error);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            si0.m7414new(this.downstream, th, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            si0.m7410case(this.downstream, t, this, this.error);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.deferredSetOnce(this.mainSubscription, this.requested, subscription);
        }

        public void otherComplete() {
            this.otherDone = true;
            if (this.mainDone) {
                si0.m7413if(this.downstream, this, this.error);
            }
        }

        public void otherError(Throwable th) {
            Cfor.cancel(this.mainSubscription);
            si0.m7414new(this.downstream, th, this, this.error);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            Cfor.deferredRequest(this.mainSubscription, this.requested, j);
        }
    }

    public g0(io.reactivex.Cfor<T> cfor, CompletableSource completableSource) {
        super(cfor);
        this.f25653for = completableSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber);
        subscriber.onSubscribe(cdo);
        this.f25614if.m5(cdo);
        this.f25653for.subscribe(cdo.otherObserver);
    }
}
