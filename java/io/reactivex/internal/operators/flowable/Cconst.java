package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.t80;
import android.support.v4.ti1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<? extends Publisher<B>> f25579for;

    /* renamed from: new, reason: not valid java name */
    public final Callable<U> f25580new;

    /* renamed from: io.reactivex.internal.operators.flowable.const$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>, B> extends p10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f25581for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, U, B> f25582if;

        public Cdo(Cif<T, U, B> cif) {
            this.f25582if = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25581for) {
                return;
            }
            this.f25581for = true;
            this.f25582if.m29485else();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25581for) {
                jp1.l(th);
            } else {
                this.f25581for = true;
                this.f25582if.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (this.f25581for) {
                return;
            }
            this.f25581for = true;
            m5829do();
            this.f25582if.m29485else();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.const$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.Cif<T, U, U> implements FlowableSubscriber<T>, Subscription, Disposable {
        public final Callable<U> n;
        public final Callable<? extends Publisher<B>> o;
        public Subscription p;
        public final AtomicReference<Disposable> q;
        public U r;

        public Cif(Subscriber<? super U> subscriber, Callable<U> callable, Callable<? extends Publisher<B>> callable2) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.q = new AtomicReference<>();
            this.n = callable;
            this.o = callable2;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.k) {
                return;
            }
            this.k = true;
            this.p.cancel();
            m29484case();
            if (enter()) {
                this.j.clear();
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m29484case() {
            io.reactivex.internal.disposables.Cdo.dispose(this.q);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.p.cancel();
            m29484case();
        }

        /* renamed from: else, reason: not valid java name */
        public void m29485else() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The buffer supplied is null");
                try {
                    Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.o.call(), "The boundary publisher supplied is null");
                    Cdo cdo = new Cdo(this);
                    if (io.reactivex.internal.disposables.Cdo.replace(this.q, cdo)) {
                        synchronized (this) {
                            U u2 = this.r;
                            if (u2 == null) {
                                return;
                            }
                            this.r = u;
                            publisher.subscribe(cdo);
                            m29704if(u2, false, this);
                        }
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.k = true;
                    this.p.cancel();
                    this.i.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                cancel();
                this.i.onError(th2);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.q.get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            synchronized (this) {
                U u = this.r;
                if (u == null) {
                    return;
                }
                this.r = null;
                this.j.offer(u);
                this.l = true;
                if (enter()) {
                    ti1.m7959try(this.j, this.i, false, this, this);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            cancel();
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.r;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.p, subscription)) {
                this.p = subscription;
                Subscriber<? super V> subscriber = this.i;
                try {
                    this.r = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The buffer supplied is null");
                    try {
                        Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.o.call(), "The boundary publisher supplied is null");
                        Cdo cdo = new Cdo(this);
                        this.q.set(cdo);
                        subscriber.onSubscribe(this);
                        if (this.k) {
                            return;
                        }
                        subscription.request(Long.MAX_VALUE);
                        publisher.subscribe(cdo);
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.k = true;
                        subscription.cancel();
                        io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    this.k = true;
                    subscription.cancel();
                    io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        @Override // io.reactivex.internal.subscribers.Cif, io.reactivex.internal.util.QueueDrain
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> subscriber, U u) {
            this.i.onNext(u);
            return true;
        }
    }

    public Cconst(io.reactivex.Cfor<T> cfor, Callable<? extends Publisher<B>> callable, Callable<U> callable2) {
        super(cfor);
        this.f25579for = callable;
        this.f25580new = callable2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        this.f25614if.m5(new Cif(new bx1(subscriber), this.f25580new, this.f25579for));
    }
}
