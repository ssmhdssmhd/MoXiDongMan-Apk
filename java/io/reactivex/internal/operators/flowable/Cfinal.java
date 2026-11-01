package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.p10;
import android.support.v4.t80;
import android.support.v4.ti1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<B> f25639for;

    /* renamed from: new, reason: not valid java name */
    public final Callable<U> f25640new;

    /* renamed from: io.reactivex.internal.operators.flowable.final$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>, B> extends p10<B> {

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, U, B> f25641if;

        public Cdo(Cif<T, U, B> cif) {
            this.f25641if = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25641if.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25641if.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            this.f25641if.m29487case();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.final$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.Cif<T, U, U> implements FlowableSubscriber<T>, Subscription, Disposable {
        public final Callable<U> n;
        public final Publisher<B> o;
        public Subscription p;
        public Disposable q;
        public U r;

        public Cif(Subscriber<? super U> subscriber, Callable<U> callable, Publisher<B> publisher) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.n = callable;
            this.o = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.k) {
                return;
            }
            this.k = true;
            this.q.dispose();
            this.p.cancel();
            if (enter()) {
                this.j.clear();
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m29487case() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u2 = this.r;
                    if (u2 == null) {
                        return;
                    }
                    this.r = u;
                    m29704if(u2, false, this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                this.i.onError(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.k;
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
                try {
                    this.r = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The buffer supplied is null");
                    Cdo cdo = new Cdo(this);
                    this.q = cdo;
                    this.i.onSubscribe(this);
                    if (this.k) {
                        return;
                    }
                    subscription.request(Long.MAX_VALUE);
                    this.o.subscribe(cdo);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.k = true;
                    subscription.cancel();
                    io.reactivex.internal.subscriptions.Cdo.error(th, this.i);
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

    public Cfinal(io.reactivex.Cfor<T> cfor, Publisher<B> publisher, Callable<U> callable) {
        super(cfor);
        this.f25639for = publisher;
        this.f25640new = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        this.f25614if.m5(new Cif(new bx1(subscriber), this.f25640new, this.f25639for));
    }
}
