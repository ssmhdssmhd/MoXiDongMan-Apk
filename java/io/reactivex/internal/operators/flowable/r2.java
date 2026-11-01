package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.p10;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.processors.Celse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class r2<T, B, V> extends io.reactivex.internal.operators.flowable.Cdo<T, io.reactivex.Cfor<T>> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<B> f25837for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super B, ? extends Publisher<V>> f25838new;

    /* renamed from: try, reason: not valid java name */
    public final int f25839try;

    /* renamed from: io.reactivex.internal.operators.flowable.r2$do, reason: invalid class name */
    public static final class Cdo<T, V> extends p10<V> {

        /* renamed from: for, reason: not valid java name */
        public final Celse<T> f25840for;

        /* renamed from: if, reason: not valid java name */
        public final Cfor<T, ?, V> f25841if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25842new;

        public Cdo(Cfor<T, ?, V> cfor, Celse<T> celse) {
            this.f25841if = cfor;
            this.f25840for = celse;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25842new) {
                return;
            }
            this.f25842new = true;
            this.f25841if.m29502try(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25842new) {
                jp1.l(th);
            } else {
                this.f25842new = true;
                this.f25841if.m29500else(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(V v) {
            m5829do();
            onComplete();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.r2$for, reason: invalid class name */
    public static final class Cfor<T, B, V> extends io.reactivex.internal.subscribers.Cif<T, Object, io.reactivex.Cfor<T>> implements Subscription {
        public final Publisher<B> n;
        public final Function<? super B, ? extends Publisher<V>> o;
        public final int p;
        public final cq q;
        public Subscription r;
        public final AtomicReference<Disposable> s;
        public final List<Celse<T>> t;
        public final AtomicLong u;
        public final AtomicBoolean v;

        public Cfor(Subscriber<? super io.reactivex.Cfor<T>> subscriber, Publisher<B> publisher, Function<? super B, ? extends Publisher<V>> function, int i) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.s = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.u = atomicLong;
            this.v = new AtomicBoolean();
            this.n = publisher;
            this.o = function;
            this.p = i;
            this.q = new cq();
            this.t = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // io.reactivex.internal.subscribers.Cif, io.reactivex.internal.util.QueueDrain
        public boolean accept(Subscriber<? super io.reactivex.Cfor<T>> subscriber, Object obj) {
            return false;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.v.compareAndSet(false, true)) {
                io.reactivex.internal.disposables.Cdo.dispose(this.s);
                if (this.u.decrementAndGet() == 0) {
                    this.r.cancel();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: case, reason: not valid java name */
        public void m29499case() {
            SimpleQueue simpleQueue = this.j;
            Subscriber<? super V> subscriber = this.i;
            List<Celse<T>> list = this.t;
            int iLeave = 1;
            while (true) {
                boolean z = this.l;
                Object objPoll = simpleQueue.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    dispose();
                    Throwable th = this.m;
                    if (th != null) {
                        Iterator<Celse<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th);
                        }
                    } else {
                        Iterator<Celse<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onComplete();
                        }
                    }
                    list.clear();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (objPoll instanceof Cnew) {
                    Cnew cnew = (Cnew) objPoll;
                    Celse<T> celse = cnew.f25844do;
                    if (celse != null) {
                        if (list.remove(celse)) {
                            cnew.f25844do.onComplete();
                            if (this.u.decrementAndGet() == 0) {
                                dispose();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.v.get()) {
                        Celse<T> celseS7 = Celse.S7(this.p);
                        long jRequested = requested();
                        if (jRequested != 0) {
                            list.add(celseS7);
                            subscriber.onNext(celseS7);
                            if (jRequested != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            try {
                                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.o.apply(cnew.f25845if), "The publisher supplied is null");
                                Cdo cdo = new Cdo(this, celseS7);
                                if (this.q.add(cdo)) {
                                    this.u.getAndIncrement();
                                    publisher.subscribe(cdo);
                                }
                            } catch (Throwable th2) {
                                cancel();
                                subscriber.onError(th2);
                            }
                        } else {
                            cancel();
                            subscriber.onError(new a01("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    Iterator<Celse<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().onNext(Cbreak.getValue(objPoll));
                    }
                }
            }
        }

        public void dispose() {
            this.q.dispose();
            io.reactivex.internal.disposables.Cdo.dispose(this.s);
        }

        /* renamed from: else, reason: not valid java name */
        public void m29500else(Throwable th) {
            this.r.cancel();
            this.q.dispose();
            io.reactivex.internal.disposables.Cdo.dispose(this.s);
            this.i.onError(th);
        }

        /* renamed from: goto, reason: not valid java name */
        public void m29501goto(B b) {
            this.j.offer(new Cnew(null, b));
            if (enter()) {
                m29499case();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.l) {
                return;
            }
            this.l = true;
            if (enter()) {
                m29499case();
            }
            if (this.u.decrementAndGet() == 0) {
                this.q.dispose();
            }
            this.i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.l) {
                jp1.l(th);
                return;
            }
            this.m = th;
            this.l = true;
            if (enter()) {
                m29499case();
            }
            if (this.u.decrementAndGet() == 0) {
                this.q.dispose();
            }
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.l) {
                return;
            }
            if (m29702do()) {
                Iterator<Celse<T>> it = this.t.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.j.offer(Cbreak.next(t));
                if (!enter()) {
                    return;
                }
            }
            m29499case();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.r, subscription)) {
                this.r = subscription;
                this.i.onSubscribe(this);
                if (this.v.get()) {
                    return;
                }
                Cif cif = new Cif(this);
                if (this.s.compareAndSet(null, cif)) {
                    subscription.request(Long.MAX_VALUE);
                    this.n.subscribe(cif);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        /* renamed from: try, reason: not valid java name */
        public void m29502try(Cdo<T, V> cdo) {
            this.q.delete(cdo);
            this.j.offer(new Cnew(cdo.f25840for, null));
            if (enter()) {
                m29499case();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.r2$if, reason: invalid class name */
    public static final class Cif<T, B> extends p10<B> {

        /* renamed from: if, reason: not valid java name */
        public final Cfor<T, B, ?> f25843if;

        public Cif(Cfor<T, B, ?> cfor) {
            this.f25843if = cfor;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25843if.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25843if.m29500else(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            this.f25843if.m29501goto(b);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.r2$new, reason: invalid class name */
    public static final class Cnew<T, B> {

        /* renamed from: do, reason: not valid java name */
        public final Celse<T> f25844do;

        /* renamed from: if, reason: not valid java name */
        public final B f25845if;

        public Cnew(Celse<T> celse, B b) {
            this.f25844do = celse;
            this.f25845if = b;
        }
    }

    public r2(io.reactivex.Cfor<T> cfor, Publisher<B> publisher, Function<? super B, ? extends Publisher<V>> function, int i) {
        super(cfor);
        this.f25837for = publisher;
        this.f25838new = function;
        this.f25839try = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super io.reactivex.Cfor<T>> subscriber) {
        this.f25614if.m5(new Cfor(new bx1(subscriber), this.f25837for, this.f25838new, this.f25839try));
    }
}
