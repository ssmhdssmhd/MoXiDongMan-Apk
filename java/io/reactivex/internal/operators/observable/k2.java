package io.reactivex.internal.operators.observable;

import android.support.v4.tw1;
import android.support.v4.zw1;
import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.subjects.Cthis;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class k2<T> extends io.reactivex.internal.operators.observable.Cdo<T, Cnew<T>> {

    /* renamed from: case, reason: not valid java name */
    public final long f26668case;

    /* renamed from: else, reason: not valid java name */
    public final int f26669else;

    /* renamed from: for, reason: not valid java name */
    public final long f26670for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f26671goto;

    /* renamed from: if, reason: not valid java name */
    public final long f26672if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f26673new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f26674try;

    /* renamed from: io.reactivex.internal.operators.observable.k2$do, reason: invalid class name */
    public static final class Cdo<T> extends io.reactivex.internal.observers.Ctry<T, Object, Cnew<T>> implements Disposable {
        public final int a;
        public final boolean b;
        public final long c;
        public final Ctry.Cfor d;
        public long e;
        public long f;
        public Disposable g;
        public Cthis<T> h;
        public volatile boolean i;

        /* renamed from: implements, reason: not valid java name */
        public final long f26675implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final TimeUnit f26676instanceof;
        public final tw1 j;

        /* renamed from: synchronized, reason: not valid java name */
        public final Ctry f26677synchronized;

        /* renamed from: io.reactivex.internal.operators.observable.k2$do$do, reason: invalid class name and collision with other inner class name */
        public static final class RunnableC0325do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final long f26678do;

            /* renamed from: if, reason: not valid java name */
            public final Cdo<?> f26679if;

            public RunnableC0325do(long j, Cdo<?> cdo) {
                this.f26678do = j;
                this.f26679if = cdo;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo<?> cdo = this.f26679if;
                if (cdo.f25357interface) {
                    cdo.i = true;
                } else {
                    cdo.f25361volatile.offer(this);
                }
                if (cdo.enter()) {
                    cdo.m29591else();
                }
            }
        }

        public Cdo(Observer<? super Cnew<T>> observer, long j, TimeUnit timeUnit, Ctry ctry, int i, long j2, boolean z) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.j = new tw1();
            this.f26675implements = j;
            this.f26676instanceof = timeUnit;
            this.f26677synchronized = ctry;
            this.a = i;
            this.c = j2;
            this.b = z;
            if (z) {
                this.d = ctry.mo4229if();
            } else {
                this.d = null;
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m29590case() {
            io.reactivex.internal.disposables.Cdo.dispose(this.j);
            Ctry.Cfor cfor = this.d;
            if (cfor != null) {
                cfor.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25357interface = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [io.reactivex.subjects.this<T>] */
        /* renamed from: else, reason: not valid java name */
        public void m29591else() {
            io.reactivex.internal.queue.Cdo cdo = (io.reactivex.internal.queue.Cdo) this.f25361volatile;
            Observer<? super V> observer = this.f25359strictfp;
            Cthis<T> cthis = this.h;
            int iLeave = 1;
            while (!this.i) {
                boolean z = this.f25358protected;
                Object objPoll = cdo.poll();
                boolean z2 = objPoll == null;
                boolean z3 = objPoll instanceof RunnableC0325do;
                if (z && (z2 || z3)) {
                    this.h = null;
                    cdo.clear();
                    Throwable th = this.f25360transient;
                    if (th != null) {
                        cthis.onError(th);
                    } else {
                        cthis.onComplete();
                    }
                    m29590case();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (z3) {
                    RunnableC0325do runnableC0325do = (RunnableC0325do) objPoll;
                    if (!this.b || this.f == runnableC0325do.f26678do) {
                        cthis.onComplete();
                        this.e = 0L;
                        cthis = (Cthis<T>) Cthis.m29831else(this.a);
                        this.h = cthis;
                        observer.onNext(cthis);
                    }
                } else {
                    cthis.onNext(Cbreak.getValue(objPoll));
                    long j = this.e + 1;
                    if (j >= this.c) {
                        this.f++;
                        this.e = 0L;
                        cthis.onComplete();
                        cthis = (Cthis<T>) Cthis.m29831else(this.a);
                        this.h = cthis;
                        this.f25359strictfp.onNext(cthis);
                        if (this.b) {
                            Disposable disposable = this.j.get();
                            disposable.dispose();
                            Ctry.Cfor cfor = this.d;
                            RunnableC0325do runnableC0325do2 = new RunnableC0325do(this.f, this);
                            long j2 = this.f26675implements;
                            Disposable disposableMo29701new = cfor.mo29701new(runnableC0325do2, j2, j2, this.f26676instanceof);
                            if (!this.j.compareAndSet(disposable, disposableMo29701new)) {
                                disposableMo29701new.dispose();
                            }
                        }
                    } else {
                        this.e = j;
                    }
                }
            }
            this.g.dispose();
            cdo.clear();
            m29590case();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f25358protected = true;
            if (enter()) {
                m29591else();
            }
            this.f25359strictfp.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25360transient = th;
            this.f25358protected = true;
            if (enter()) {
                m29591else();
            }
            this.f25359strictfp.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.i) {
                return;
            }
            if (m29475do()) {
                Cthis<T> cthis = this.h;
                cthis.onNext(t);
                long j = this.e + 1;
                if (j >= this.c) {
                    this.f++;
                    this.e = 0L;
                    cthis.onComplete();
                    Cthis<T> cthisM29831else = Cthis.m29831else(this.a);
                    this.h = cthisM29831else;
                    this.f25359strictfp.onNext(cthisM29831else);
                    if (this.b) {
                        this.j.get().dispose();
                        Ctry.Cfor cfor = this.d;
                        RunnableC0325do runnableC0325do = new RunnableC0325do(this.f, this);
                        long j2 = this.f26675implements;
                        io.reactivex.internal.disposables.Cdo.replace(this.j, cfor.mo29701new(runnableC0325do, j2, j2, this.f26676instanceof));
                    }
                } else {
                    this.e = j;
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.f25361volatile.offer(Cbreak.next(t));
                if (!enter()) {
                    return;
                }
            }
            m29591else();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Disposable disposableMo29689case;
            if (io.reactivex.internal.disposables.Cdo.validate(this.g, disposable)) {
                this.g = disposable;
                Observer<? super V> observer = this.f25359strictfp;
                observer.onSubscribe(this);
                if (this.f25357interface) {
                    return;
                }
                Cthis<T> cthisM29831else = Cthis.m29831else(this.a);
                this.h = cthisM29831else;
                observer.onNext(cthisM29831else);
                RunnableC0325do runnableC0325do = new RunnableC0325do(this.f, this);
                if (this.b) {
                    Ctry.Cfor cfor = this.d;
                    long j = this.f26675implements;
                    disposableMo29689case = cfor.mo29701new(runnableC0325do, j, j, this.f26676instanceof);
                } else {
                    Ctry ctry = this.f26677synchronized;
                    long j2 = this.f26675implements;
                    disposableMo29689case = ctry.mo29689case(runnableC0325do, j2, j2, this.f26676instanceof);
                }
                this.j.replace(disposableMo29689case);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.k2$for, reason: invalid class name */
    public static final class Cfor<T> extends io.reactivex.internal.observers.Ctry<T, Object, Cnew<T>> implements Disposable, Runnable {
        public final Ctry.Cfor a;
        public final int b;
        public final List<Cthis<T>> c;
        public Disposable d;
        public volatile boolean e;

        /* renamed from: implements, reason: not valid java name */
        public final long f26680implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final long f26681instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final TimeUnit f26682synchronized;

        /* renamed from: io.reactivex.internal.operators.observable.k2$for$do, reason: invalid class name */
        public final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Cthis<T> f26683do;

            public Cdo(Cthis<T> cthis) {
                this.f26683do = cthis;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cfor.this.m29592new(this.f26683do);
            }
        }

        /* renamed from: io.reactivex.internal.operators.observable.k2$for$if, reason: invalid class name */
        public static final class Cif<T> {

            /* renamed from: do, reason: not valid java name */
            public final Cthis<T> f26685do;

            /* renamed from: if, reason: not valid java name */
            public final boolean f26686if;

            public Cif(Cthis<T> cthis, boolean z) {
                this.f26685do = cthis;
                this.f26686if = z;
            }
        }

        public Cfor(Observer<? super Cnew<T>> observer, long j, long j2, TimeUnit timeUnit, Ctry.Cfor cfor, int i) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.f26680implements = j;
            this.f26681instanceof = j2;
            this.f26682synchronized = timeUnit;
            this.a = cfor;
            this.b = i;
            this.c = new LinkedList();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25357interface = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        /* renamed from: new, reason: not valid java name */
        public void m29592new(Cthis<T> cthis) {
            this.f25361volatile.offer(new Cif(cthis, false));
            if (enter()) {
                m29593try();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f25358protected = true;
            if (enter()) {
                m29593try();
            }
            this.f25359strictfp.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25360transient = th;
            this.f25358protected = true;
            if (enter()) {
                m29593try();
            }
            this.f25359strictfp.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (m29475do()) {
                Iterator<Cthis<T>> it = this.c.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.f25361volatile.offer(t);
                if (!enter()) {
                    return;
                }
            }
            m29593try();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.d, disposable)) {
                this.d = disposable;
                this.f25359strictfp.onSubscribe(this);
                if (this.f25357interface) {
                    return;
                }
                Cthis<T> cthisM29831else = Cthis.m29831else(this.b);
                this.c.add(cthisM29831else);
                this.f25359strictfp.onNext(cthisM29831else);
                this.a.mo29362for(new Cdo(cthisM29831else), this.f26680implements, this.f26682synchronized);
                Ctry.Cfor cfor = this.a;
                long j = this.f26681instanceof;
                cfor.mo29701new(this, j, j, this.f26682synchronized);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif cif = new Cif(Cthis.m29831else(this.b), true);
            if (!this.f25357interface) {
                this.f25361volatile.offer(cif);
            }
            if (enter()) {
                m29593try();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: try, reason: not valid java name */
        public void m29593try() {
            io.reactivex.internal.queue.Cdo cdo = (io.reactivex.internal.queue.Cdo) this.f25361volatile;
            Observer<? super V> observer = this.f25359strictfp;
            List<Cthis<T>> list = this.c;
            int iLeave = 1;
            while (!this.e) {
                boolean z = this.f25358protected;
                Object objPoll = cdo.poll();
                boolean z2 = objPoll == null;
                boolean z3 = objPoll instanceof Cif;
                if (z && (z2 || z3)) {
                    cdo.clear();
                    Throwable th = this.f25360transient;
                    if (th != null) {
                        Iterator<Cthis<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onError(th);
                        }
                    } else {
                        Iterator<Cthis<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onComplete();
                        }
                    }
                    list.clear();
                    this.a.dispose();
                    return;
                }
                if (z2) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (z3) {
                    Cif cif = (Cif) objPoll;
                    if (!cif.f26686if) {
                        list.remove(cif.f26685do);
                        cif.f26685do.onComplete();
                        if (list.isEmpty() && this.f25357interface) {
                            this.e = true;
                        }
                    } else if (!this.f25357interface) {
                        Cthis<T> cthisM29831else = Cthis.m29831else(this.b);
                        list.add(cthisM29831else);
                        observer.onNext(cthisM29831else);
                        this.a.mo29362for(new Cdo(cthisM29831else), this.f26680implements, this.f26682synchronized);
                    }
                } else {
                    Iterator<Cthis<T>> it3 = list.iterator();
                    while (it3.hasNext()) {
                        it3.next().onNext(objPoll);
                    }
                }
            }
            this.d.dispose();
            cdo.clear();
            list.clear();
            this.a.dispose();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.k2$if, reason: invalid class name */
    public static final class Cif<T> extends io.reactivex.internal.observers.Ctry<T, Object, Cnew<T>> implements Observer<T>, Disposable, Runnable {
        public static final Object f = new Object();
        public final int a;
        public Disposable b;
        public Cthis<T> c;
        public final tw1 d;
        public volatile boolean e;

        /* renamed from: implements, reason: not valid java name */
        public final long f26687implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final TimeUnit f26688instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final Ctry f26689synchronized;

        public Cif(Observer<? super Cnew<T>> observer, long j, TimeUnit timeUnit, Ctry ctry, int i) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.d = new tw1();
            this.f26687implements = j;
            this.f26688instanceof = timeUnit;
            this.f26689synchronized = ctry;
            this.a = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25357interface = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
        
            r2.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
        
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        
            r7.d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        
            r7.c = null;
            r0.clear();
            r0 = r7.f25360transient;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        
            if (r0 == null) goto L11;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [io.reactivex.subjects.this<T>] */
        /* renamed from: new, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m29594new() {
            io.reactivex.internal.queue.Cdo cdo = (io.reactivex.internal.queue.Cdo) this.f25361volatile;
            Observer<? super V> observer = this.f25359strictfp;
            Cthis<T> cthis = this.c;
            int iLeave = 1;
            while (true) {
                boolean z = this.e;
                boolean z2 = this.f25358protected;
                Object objPoll = cdo.poll();
                if (z2 && (objPoll == null || objPoll == f)) {
                    break;
                }
                if (objPoll == null) {
                    iLeave = leave(-iLeave);
                    if (iLeave == 0) {
                        return;
                    }
                } else if (objPoll == f) {
                    cthis.onComplete();
                    if (z) {
                        this.b.dispose();
                    } else {
                        cthis = (Cthis<T>) Cthis.m29831else(this.a);
                        this.c = cthis;
                        observer.onNext(cthis);
                    }
                } else {
                    cthis.onNext(Cbreak.getValue(objPoll));
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f25358protected = true;
            if (enter()) {
                m29594new();
            }
            this.f25359strictfp.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25360transient = th;
            this.f25358protected = true;
            if (enter()) {
                m29594new();
            }
            this.f25359strictfp.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.e) {
                return;
            }
            if (m29475do()) {
                this.c.onNext(t);
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.f25361volatile.offer(Cbreak.next(t));
                if (!enter()) {
                    return;
                }
            }
            m29594new();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.b, disposable)) {
                this.b = disposable;
                this.c = Cthis.m29831else(this.a);
                Observer<? super V> observer = this.f25359strictfp;
                observer.onSubscribe(this);
                observer.onNext(this.c);
                if (this.f25357interface) {
                    return;
                }
                Ctry ctry = this.f26689synchronized;
                long j = this.f26687implements;
                this.d.replace(ctry.mo29689case(this, j, j, this.f26688instanceof));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25357interface) {
                this.e = true;
            }
            this.f25361volatile.offer(f);
            if (enter()) {
                m29594new();
            }
        }
    }

    public k2(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Ctry ctry, long j3, int i, boolean z) {
        super(observableSource);
        this.f26672if = j;
        this.f26670for = j2;
        this.f26673new = timeUnit;
        this.f26674try = ctry;
        this.f26668case = j3;
        this.f26669else = i;
        this.f26671goto = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Cnew<T>> observer) {
        zw1 zw1Var = new zw1(observer);
        long j = this.f26672if;
        long j2 = this.f26670for;
        if (j != j2) {
            this.f26500do.subscribe(new Cfor(zw1Var, j, j2, this.f26673new, this.f26674try.mo4229if(), this.f26669else));
            return;
        }
        long j3 = this.f26668case;
        if (j3 == Long.MAX_VALUE) {
            this.f26500do.subscribe(new Cif(zw1Var, this.f26672if, this.f26673new, this.f26674try, this.f26669else));
        } else {
            this.f26500do.subscribe(new Cdo(zw1Var, j, this.f26673new, this.f26674try, this.f26669else, j3, this.f26671goto));
        }
    }
}
