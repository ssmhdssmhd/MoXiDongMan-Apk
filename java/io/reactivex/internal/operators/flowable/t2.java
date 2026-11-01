package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.processors.Celse;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class t2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, io.reactivex.Cfor<T>> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25916case;

    /* renamed from: else, reason: not valid java name */
    public final long f25917else;

    /* renamed from: for, reason: not valid java name */
    public final long f25918for;

    /* renamed from: goto, reason: not valid java name */
    public final int f25919goto;

    /* renamed from: new, reason: not valid java name */
    public final long f25920new;

    /* renamed from: this, reason: not valid java name */
    public final boolean f25921this;

    /* renamed from: try, reason: not valid java name */
    public final TimeUnit f25922try;

    /* renamed from: io.reactivex.internal.operators.flowable.t2$do, reason: invalid class name */
    public static final class Cdo<T> extends io.reactivex.internal.subscribers.Cif<T, Object, io.reactivex.Cfor<T>> implements Subscription {
        public final long n;
        public final TimeUnit o;
        public final Ctry p;
        public final int q;
        public final boolean r;
        public final long s;
        public final Ctry.Cfor t;
        public long u;
        public long v;
        public Subscription w;
        public Celse<T> x;
        public volatile boolean y;
        public final tw1 z;

        /* renamed from: io.reactivex.internal.operators.flowable.t2$do$do, reason: invalid class name and collision with other inner class name */
        public static final class RunnableC0290do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final long f25923do;

            /* renamed from: if, reason: not valid java name */
            public final Cdo<?> f25924if;

            public RunnableC0290do(long j, Cdo<?> cdo) {
                this.f25923do = j;
                this.f25924if = cdo;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo<?> cdo = this.f25924if;
                if (cdo.k) {
                    cdo.y = true;
                } else {
                    cdo.j.offer(this);
                }
                if (cdo.enter()) {
                    cdo.m29511goto();
                }
            }
        }

        public Cdo(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, TimeUnit timeUnit, Ctry ctry, int i, long j2, boolean z) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.z = new tw1();
            this.n = j;
            this.o = timeUnit;
            this.p = ctry;
            this.q = i;
            this.s = j2;
            this.r = z;
            if (z) {
                this.t = ctry.mo4229if();
            } else {
                this.t = null;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.k = true;
        }

        /* renamed from: else, reason: not valid java name */
        public void m29510else() {
            this.z.dispose();
            Ctry.Cfor cfor = this.t;
            if (cfor != null) {
                cfor.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0066  */
        /* renamed from: goto, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m29511goto() {
            SimpleQueue simpleQueue = this.j;
            Subscriber<? super V> subscriber = this.i;
            Celse<T> celse = this.x;
            int iLeave = 1;
            while (!this.y) {
                boolean z = this.l;
                Object objPoll = simpleQueue.poll();
                boolean z2 = objPoll == null;
                boolean z3 = objPoll instanceof RunnableC0290do;
                if (z && (z2 || z3)) {
                    this.x = null;
                    simpleQueue.clear();
                    Throwable th = this.m;
                    if (th != null) {
                        ((Celse) celse).onError(th);
                    } else {
                        ((Celse) celse).onComplete();
                    }
                    m29510else();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else {
                    int i = iLeave;
                    if (z3) {
                        RunnableC0290do runnableC0290do = (RunnableC0290do) objPoll;
                        if (this.r) {
                            celse = celse;
                            if (this.v == runnableC0290do.f25923do) {
                                ((Celse) celse).onComplete();
                                this.u = 0L;
                                Celse<T> celseS7 = Celse.S7(this.q);
                                this.x = celseS7;
                                long jRequested = requested();
                                if (jRequested == 0) {
                                    this.x = null;
                                    this.j.clear();
                                    this.w.cancel();
                                    subscriber.onError(new a01("Could not deliver first window due to lack of requests."));
                                    m29510else();
                                    return;
                                }
                                subscriber.onNext(celseS7);
                                celse = celseS7;
                                if (jRequested != Long.MAX_VALUE) {
                                    produced(1L);
                                    celse = celseS7;
                                }
                            }
                        }
                    } else {
                        ((Celse) celse).onNext(Cbreak.getValue(objPoll));
                        long j = this.u + 1;
                        if (j >= this.s) {
                            this.v++;
                            this.u = 0L;
                            ((Celse) celse).onComplete();
                            long jRequested2 = requested();
                            if (jRequested2 == 0) {
                                this.x = null;
                                this.w.cancel();
                                this.i.onError(new a01("Could not deliver window due to lack of requests"));
                                m29510else();
                                return;
                            }
                            Celse<T> celseS72 = Celse.S7(this.q);
                            this.x = celseS72;
                            this.i.onNext(celseS72);
                            if (jRequested2 != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            if (this.r) {
                                this.z.get().dispose();
                                Ctry.Cfor cfor = this.t;
                                RunnableC0290do runnableC0290do2 = new RunnableC0290do(this.v, this);
                                long j2 = this.n;
                                this.z.replace(cfor.mo29701new(runnableC0290do2, j2, j2, this.o));
                            }
                            celse = celseS72;
                        } else {
                            this.u = j;
                            celse = celse;
                        }
                    }
                    iLeave = i;
                }
            }
            this.w.cancel();
            simpleQueue.clear();
            m29510else();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.l = true;
            if (enter()) {
                m29511goto();
            }
            this.i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.m = th;
            this.l = true;
            if (enter()) {
                m29511goto();
            }
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.y) {
                return;
            }
            if (m29702do()) {
                Celse<T> celse = this.x;
                celse.onNext(t);
                long j = this.u + 1;
                if (j >= this.s) {
                    this.v++;
                    this.u = 0L;
                    celse.onComplete();
                    long jRequested = requested();
                    if (jRequested == 0) {
                        this.x = null;
                        this.w.cancel();
                        this.i.onError(new a01("Could not deliver window due to lack of requests"));
                        m29510else();
                        return;
                    }
                    Celse<T> celseS7 = Celse.S7(this.q);
                    this.x = celseS7;
                    this.i.onNext(celseS7);
                    if (jRequested != Long.MAX_VALUE) {
                        produced(1L);
                    }
                    if (this.r) {
                        this.z.get().dispose();
                        Ctry.Cfor cfor = this.t;
                        RunnableC0290do runnableC0290do = new RunnableC0290do(this.v, this);
                        long j2 = this.n;
                        this.z.replace(cfor.mo29701new(runnableC0290do, j2, j2, this.o));
                    }
                } else {
                    this.u = j;
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
            m29511goto();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Disposable disposableMo29689case;
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.w, subscription)) {
                this.w = subscription;
                Subscriber<? super V> subscriber = this.i;
                subscriber.onSubscribe(this);
                if (this.k) {
                    return;
                }
                Celse<T> celseS7 = Celse.S7(this.q);
                this.x = celseS7;
                long jRequested = requested();
                if (jRequested == 0) {
                    this.k = true;
                    subscription.cancel();
                    subscriber.onError(new a01("Could not deliver initial window due to lack of requests."));
                    return;
                }
                subscriber.onNext(celseS7);
                if (jRequested != Long.MAX_VALUE) {
                    produced(1L);
                }
                RunnableC0290do runnableC0290do = new RunnableC0290do(this.v, this);
                if (this.r) {
                    Ctry.Cfor cfor = this.t;
                    long j = this.n;
                    disposableMo29689case = cfor.mo29701new(runnableC0290do, j, j, this.o);
                } else {
                    Ctry ctry = this.p;
                    long j2 = this.n;
                    disposableMo29689case = ctry.mo29689case(runnableC0290do, j2, j2, this.o);
                }
                if (this.z.replace(disposableMo29689case)) {
                    subscription.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.t2$for, reason: invalid class name */
    public static final class Cfor<T> extends io.reactivex.internal.subscribers.Cif<T, Object, io.reactivex.Cfor<T>> implements Subscription, Runnable {
        public final long n;
        public final long o;
        public final TimeUnit p;
        public final Ctry.Cfor q;
        public final int r;
        public final List<Celse<T>> s;
        public Subscription t;
        public volatile boolean u;

        /* renamed from: io.reactivex.internal.operators.flowable.t2$for$do, reason: invalid class name */
        public final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Celse<T> f25925do;

            public Cdo(Celse<T> celse) {
                this.f25925do = celse;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cfor.this.m29513try(this.f25925do);
            }
        }

        /* renamed from: io.reactivex.internal.operators.flowable.t2$for$if, reason: invalid class name */
        public static final class Cif<T> {

            /* renamed from: do, reason: not valid java name */
            public final Celse<T> f25927do;

            /* renamed from: if, reason: not valid java name */
            public final boolean f25928if;

            public Cif(Celse<T> celse, boolean z) {
                this.f25927do = celse;
                this.f25928if = z;
            }
        }

        public Cfor(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, long j2, TimeUnit timeUnit, Ctry.Cfor cfor, int i) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.n = j;
            this.o = j2;
            this.p = timeUnit;
            this.q = cfor;
            this.r = i;
            this.s = new LinkedList();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.k = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: case, reason: not valid java name */
        public void m29512case() {
            SimpleQueue simpleQueue = this.j;
            Subscriber<? super V> subscriber = this.i;
            List<Celse<T>> list = this.s;
            int iLeave = 1;
            while (!this.u) {
                boolean z = this.l;
                Object objPoll = simpleQueue.poll();
                boolean z2 = objPoll == null;
                boolean z3 = objPoll instanceof Cif;
                if (z && (z2 || z3)) {
                    simpleQueue.clear();
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
                    this.q.dispose();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (z3) {
                    Cif cif = (Cif) objPoll;
                    if (!cif.f25928if) {
                        list.remove(cif.f25927do);
                        cif.f25927do.onComplete();
                        if (list.isEmpty() && this.k) {
                            this.u = true;
                        }
                    } else if (!this.k) {
                        long jRequested = requested();
                        if (jRequested != 0) {
                            Celse<T> celseS7 = Celse.S7(this.r);
                            list.add(celseS7);
                            subscriber.onNext(celseS7);
                            if (jRequested != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            this.q.mo29362for(new Cdo(celseS7), this.n, this.p);
                        } else {
                            subscriber.onError(new a01("Can't emit window due to lack of requests"));
                        }
                    }
                } else {
                    Iterator<Celse<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().onNext(objPoll);
                    }
                }
            }
            this.t.cancel();
            simpleQueue.clear();
            list.clear();
            this.q.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.l = true;
            if (enter()) {
                m29512case();
            }
            this.i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.m = th;
            this.l = true;
            if (enter()) {
                m29512case();
            }
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (m29702do()) {
                Iterator<Celse<T>> it = this.s.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.j.offer(t);
                if (!enter()) {
                    return;
                }
            }
            m29512case();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.t, subscription)) {
                this.t = subscription;
                this.i.onSubscribe(this);
                if (this.k) {
                    return;
                }
                long jRequested = requested();
                if (jRequested == 0) {
                    subscription.cancel();
                    this.i.onError(new a01("Could not emit the first window due to lack of requests"));
                    return;
                }
                Celse<T> celseS7 = Celse.S7(this.r);
                this.s.add(celseS7);
                this.i.onNext(celseS7);
                if (jRequested != Long.MAX_VALUE) {
                    produced(1L);
                }
                this.q.mo29362for(new Cdo(celseS7), this.n, this.p);
                Ctry.Cfor cfor = this.q;
                long j = this.o;
                cfor.mo29701new(this, j, j, this.p);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m29705new(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif cif = new Cif(Celse.S7(this.r), true);
            if (!this.k) {
                this.j.offer(cif);
            }
            if (enter()) {
                m29512case();
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m29513try(Celse<T> celse) {
            this.j.offer(new Cif(celse, false));
            if (enter()) {
                m29512case();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.t2$if, reason: invalid class name */
    public static final class Cif<T> extends io.reactivex.internal.subscribers.Cif<T, Object, io.reactivex.Cfor<T>> implements FlowableSubscriber<T>, Subscription, Runnable {
        public static final Object v = new Object();
        public final long n;
        public final TimeUnit o;
        public final Ctry p;
        public final int q;
        public Subscription r;
        public Celse<T> s;
        public final tw1 t;
        public volatile boolean u;

        public Cif(Subscriber<? super io.reactivex.Cfor<T>> subscriber, long j, TimeUnit timeUnit, Ctry ctry, int i) {
            super(subscriber, new io.reactivex.internal.queue.Cdo());
            this.t = new tw1();
            this.n = j;
            this.o = timeUnit;
            this.p = ctry;
            this.q = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.k = true;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.l = true;
            if (enter()) {
                m29514try();
            }
            this.i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.m = th;
            this.l = true;
            if (enter()) {
                m29514try();
            }
            this.i.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.u) {
                return;
            }
            if (m29702do()) {
                this.s.onNext(t);
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.j.offer(Cbreak.next(t));
                if (!enter()) {
                    return;
                }
            }
            m29514try();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.r, subscription)) {
                this.r = subscription;
                this.s = Celse.S7(this.q);
                Subscriber<? super V> subscriber = this.i;
                subscriber.onSubscribe(this);
                long jRequested = requested();
                if (jRequested == 0) {
                    this.k = true;
                    subscription.cancel();
                    subscriber.onError(new a01("Could not deliver first window due to lack of requests."));
                    return;
                }
                subscriber.onNext(this.s);
                if (jRequested != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (this.k) {
                    return;
                }
                tw1 tw1Var = this.t;
                Ctry ctry = this.p;
                long j = this.n;
                if (tw1Var.replace(ctry.mo29689case(this, j, j, this.o))) {
                    subscription.request(Long.MAX_VALUE);
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
                this.u = true;
            }
            this.j.offer(v);
            if (enter()) {
                m29514try();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
        
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        
            r10.t.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        
            r10.s = null;
            r0.clear();
            r0 = r10.m;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        
            if (r0 == null) goto L11;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [io.reactivex.processors.else<T>] */
        /* renamed from: try, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m29514try() {
            SimpleQueue simpleQueue = this.j;
            Subscriber<? super V> subscriber = this.i;
            Celse<T> celse = this.s;
            int iLeave = 1;
            while (true) {
                boolean z = this.u;
                boolean z2 = this.l;
                Object objPoll = simpleQueue.poll();
                if (z2 && (objPoll == null || objPoll == v)) {
                    break;
                }
                if (objPoll == null) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (objPoll == v) {
                    celse.onComplete();
                    if (z) {
                        this.r.cancel();
                    } else {
                        celse = (Celse<T>) Celse.S7(this.q);
                        this.s = celse;
                        long jRequested = requested();
                        if (jRequested == 0) {
                            this.s = null;
                            this.j.clear();
                            this.r.cancel();
                            subscriber.onError(new a01("Could not deliver first window due to lack of requests."));
                            this.t.dispose();
                            return;
                        }
                        subscriber.onNext(celse);
                        if (jRequested != Long.MAX_VALUE) {
                            produced(1L);
                        }
                    }
                } else {
                    celse.onNext(Cbreak.getValue(objPoll));
                }
            }
        }
    }

    public t2(io.reactivex.Cfor<T> cfor, long j, long j2, TimeUnit timeUnit, Ctry ctry, long j3, int i, boolean z) {
        super(cfor);
        this.f25918for = j;
        this.f25920new = j2;
        this.f25922try = timeUnit;
        this.f25916case = ctry;
        this.f25917else = j3;
        this.f25919goto = i;
        this.f25921this = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super io.reactivex.Cfor<T>> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        long j = this.f25918for;
        long j2 = this.f25920new;
        if (j != j2) {
            this.f25614if.m5(new Cfor(bx1Var, j, j2, this.f25922try, this.f25916case.mo4229if(), this.f25919goto));
            return;
        }
        long j3 = this.f25917else;
        if (j3 == Long.MAX_VALUE) {
            this.f25614if.m5(new Cif(bx1Var, this.f25918for, this.f25922try, this.f25916case, this.f25919goto));
        } else {
            this.f25614if.m5(new Cdo(bx1Var, j, this.f25922try, this.f25916case, this.f25919goto, j3, this.f25921this));
        }
    }
}
