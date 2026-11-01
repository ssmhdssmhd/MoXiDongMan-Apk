package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.t80;
import android.support.v4.ti1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25867case;

    /* renamed from: else, reason: not valid java name */
    public final Callable<U> f25868else;

    /* renamed from: for, reason: not valid java name */
    public final long f25869for;

    /* renamed from: goto, reason: not valid java name */
    public final int f25870goto;

    /* renamed from: new, reason: not valid java name */
    public final long f25871new;

    /* renamed from: this, reason: not valid java name */
    public final boolean f25872this;

    /* renamed from: try, reason: not valid java name */
    public final TimeUnit f25873try;

    /* renamed from: io.reactivex.internal.operators.flowable.super$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.Cif<T, U, U> implements Subscription, Runnable, Disposable {
        public final Callable<U> n;
        public final long o;
        public final TimeUnit p;
        public final int q;
        public final boolean r;
        public final Ctry.Cfor s;
        public U t;
        public Disposable u;
        public Subscription v;
        public long w;
        public long x;

        public Cdo(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Ctry.Cfor cfor) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.n = callable;
            this.o = j;
            this.p = timeUnit;
            this.q = i;
            this.r = z;
            this.s = cfor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.k) {
                return;
            }
            this.k = true;
            dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            synchronized (this) {
                this.t = null;
            }
            this.v.cancel();
            this.s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.s.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.t;
                this.t = null;
            }
            if (u != null) {
                this.j.offer(u);
                this.l = true;
                if (enter()) {
                    ti1.m7959try(this.j, this.i, false, this, this);
                }
                this.s.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            synchronized (this) {
                this.t = null;
            }
            this.i.onError(th);
            this.s.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.t;
                if (u == null) {
                    return;
                }
                u.add(t);
                if (u.size() < this.q) {
                    return;
                }
                this.t = null;
                this.w++;
                if (this.r) {
                    this.u.dispose();
                }
                m29703for(u, false, this);
                try {
                    U u2 = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                    synchronized (this) {
                        this.t = u2;
                        this.x++;
                    }
                    if (this.r) {
                        Ctry.Cfor cfor = this.s;
                        long j = this.o;
                        this.u = cfor.mo29701new(this, j, j, this.p);
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    this.i.onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.v, subscription)) {
                this.v = subscription;
                try {
                    this.t = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                    this.i.onSubscribe(this);
                    Ctry.Cfor cfor = this.s;
                    long j = this.o;
                    this.u = cfor.mo29701new(this, j, j, this.p);
                    subscription.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.s.dispose();
                    subscription.cancel();
                    io.reactivex.internal.subscriptions.Cdo.error(th, this.i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u2 = this.t;
                    if (u2 != null && this.w == this.x) {
                        this.t = u;
                        m29703for(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                this.i.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.subscribers.Cif, io.reactivex.internal.util.QueueDrain
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.super$for, reason: invalid class name */
    public static final class Cfor<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.Cif<T, U, U> implements Subscription, Runnable {
        public final Callable<U> n;
        public final long o;
        public final long p;
        public final TimeUnit q;
        public final Ctry.Cfor r;
        public final List<U> s;
        public Subscription t;

        /* renamed from: io.reactivex.internal.operators.flowable.super$for$do, reason: invalid class name */
        public final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final U f25874do;

            public Cdo(U u) {
                this.f25874do = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (Cfor.this) {
                    Cfor.this.s.remove(this.f25874do);
                }
                Cfor cfor = Cfor.this;
                cfor.m29703for(this.f25874do, false, cfor.r);
            }
        }

        public Cfor(Subscriber<? super U> subscriber, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Ctry.Cfor cfor) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.n = callable;
            this.o = j;
            this.p = j2;
            this.q = timeUnit;
            this.r = cfor;
            this.s = new LinkedList();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.k = true;
            this.t.cancel();
            this.r.dispose();
            m29505else();
        }

        /* renamed from: else, reason: not valid java name */
        public void m29505else() {
            synchronized (this) {
                this.s.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.s);
                this.s.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.j.offer((Collection) it.next());
            }
            this.l = true;
            if (enter()) {
                ti1.m7959try(this.j, this.i, false, this.r, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.l = true;
            this.r.dispose();
            m29505else();
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                Iterator<U> it = this.s.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.t, subscription)) {
                this.t = subscription;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                    this.s.add(collection);
                    this.i.onSubscribe(this);
                    subscription.request(Long.MAX_VALUE);
                    Ctry.Cfor cfor = this.r;
                    long j = this.p;
                    cfor.mo29701new(this, j, j, this.q);
                    this.r.mo29362for(new Cdo(collection), this.o, this.q);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.r.dispose();
                    subscription.cancel();
                    io.reactivex.internal.subscriptions.Cdo.error(th, this.i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.k) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                synchronized (this) {
                    if (this.k) {
                        return;
                    }
                    this.s.add(collection);
                    this.r.mo29362for(new Cdo(collection), this.o, this.q);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                this.i.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.subscribers.Cif, io.reactivex.internal.util.QueueDrain
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.super$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.Cif<T, U, U> implements Subscription, Runnable, Disposable {
        public final Callable<U> n;
        public final long o;
        public final TimeUnit p;
        public final Ctry q;
        public Subscription r;
        public U s;
        public final AtomicReference<Disposable> t;

        public Cif(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, Ctry ctry) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.t = new AtomicReference<>();
            this.n = callable;
            this.o = j;
            this.p = timeUnit;
            this.q = ctry;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.k = true;
            this.r.cancel();
            io.reactivex.internal.disposables.Cdo.dispose(this.t);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.t.get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.t);
            synchronized (this) {
                U u = this.s;
                if (u == null) {
                    return;
                }
                this.s = null;
                this.j.offer(u);
                this.l = true;
                if (enter()) {
                    ti1.m7959try(this.j, this.i, false, null, this);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.t);
            synchronized (this) {
                this.s = null;
            }
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.s;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.r, subscription)) {
                this.r = subscription;
                try {
                    this.s = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                    this.i.onSubscribe(this);
                    if (this.k) {
                        return;
                    }
                    subscription.request(Long.MAX_VALUE);
                    Ctry ctry = this.q;
                    long j = this.o;
                    Disposable disposableMo29689case = ctry.mo29689case(this, j, j, this.p);
                    if (this.t.compareAndSet(null, disposableMo29689case)) {
                        return;
                    }
                    disposableMo29689case.dispose();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    io.reactivex.internal.subscriptions.Cdo.error(th, this.i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.n.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u2 = this.s;
                    if (u2 == null) {
                        return;
                    }
                    this.s = u;
                    m29704if(u2, false, this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                this.i.onError(th);
            }
        }

        @Override // io.reactivex.internal.subscribers.Cif, io.reactivex.internal.util.QueueDrain
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> subscriber, U u) {
            this.i.onNext(u);
            return true;
        }
    }

    public Csuper(io.reactivex.Cfor<T> cfor, long j, long j2, TimeUnit timeUnit, Ctry ctry, Callable<U> callable, int i, boolean z) {
        super(cfor);
        this.f25869for = j;
        this.f25871new = j2;
        this.f25873try = timeUnit;
        this.f25867case = ctry;
        this.f25868else = callable;
        this.f25870goto = i;
        this.f25872this = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        if (this.f25869for == this.f25871new && this.f25870goto == Integer.MAX_VALUE) {
            this.f25614if.m5(new Cif(new bx1(subscriber), this.f25868else, this.f25869for, this.f25873try, this.f25867case));
            return;
        }
        Ctry.Cfor cforMo4229if = this.f25867case.mo4229if();
        if (this.f25869for == this.f25871new) {
            this.f25614if.m5(new Cdo(new bx1(subscriber), this.f25868else, this.f25869for, this.f25873try, this.f25870goto, this.f25872this, cforMo4229if));
        } else {
            this.f25614if.m5(new Cfor(new bx1(subscriber), this.f25868else, this.f25869for, this.f25871new, this.f25873try, cforMo4229if));
        }
    }
}
