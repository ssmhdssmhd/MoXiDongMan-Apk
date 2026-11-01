package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Single;
import rx.Subscription;
import rx.functions.Func1;
import rx.internal.util.atomic.Cfor;
import rx.internal.util.unsafe.Cfinal;
import rx.internal.util.unsafe.Cimplements;

/* renamed from: rx.internal.operators.interface, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cinterface<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34958do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f34959for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Single<? extends R>> f34960if;

    /* renamed from: new, reason: not valid java name */
    public final int f34961new;

    /* renamed from: rx.internal.operators.interface$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y22<T> {

        /* renamed from: catch, reason: not valid java name */
        public volatile boolean f34964catch;

        /* renamed from: class, reason: not valid java name */
        public volatile boolean f34965class;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f34966do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f34968for;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Single<? extends R>> f34970if;

        /* renamed from: new, reason: not valid java name */
        public final int f34971new;

        /* renamed from: this, reason: not valid java name */
        public final Queue<Object> f34972this;

        /* renamed from: try, reason: not valid java name */
        public final AtomicInteger f34973try = new AtomicInteger();

        /* renamed from: goto, reason: not valid java name */
        public final AtomicReference<Throwable> f34969goto = new AtomicReference<>();

        /* renamed from: break, reason: not valid java name */
        public final Cdo<T, R>.Cif f34962break = new Cif();

        /* renamed from: else, reason: not valid java name */
        public final dq f34967else = new dq();

        /* renamed from: case, reason: not valid java name */
        public final AtomicInteger f34963case = new AtomicInteger();

        /* renamed from: rx.internal.operators.interface$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0529do extends b02<R> {
            public C0529do() {
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(R r) {
                Cdo.this.m38571for(this, r);
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                Cdo.this.m38572if(this, th);
            }
        }

        /* renamed from: rx.internal.operators.interface$do$if, reason: invalid class name */
        public final class Cif extends AtomicLong implements Producer, Subscription {
            private static final long serialVersionUID = -887187595446742742L;

            public Cif() {
            }

            @Override // rx.Subscription
            public boolean isUnsubscribed() {
                return Cdo.this.f34965class;
            }

            public void produced(long j) {
                u6.m8261this(this, j);
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j > 0) {
                    u6.m8259if(this, j);
                    Cdo.this.m38570do();
                }
            }

            @Override // rx.Subscription
            public void unsubscribe() {
                Cdo.this.f34965class = true;
                Cdo.this.unsubscribe();
                if (Cdo.this.f34973try.getAndIncrement() == 0) {
                    Cdo.this.f34972this.clear();
                }
            }
        }

        public Cdo(y22<? super R> y22Var, Func1<? super T, ? extends Single<? extends R>> func1, boolean z, int i) {
            this.f34966do = y22Var;
            this.f34970if = func1;
            this.f34968for = z;
            this.f34971new = i;
            if (Cimplements.m38984case()) {
                this.f34972this = new Cfinal();
            } else {
                this.f34972this = new Cfor();
            }
            request(i != Integer.MAX_VALUE ? i : Long.MAX_VALUE);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38570do() {
            if (this.f34973try.getAndIncrement() != 0) {
                return;
            }
            y22<? super R> y22Var = this.f34966do;
            Queue<Object> queue = this.f34972this;
            boolean z = this.f34968for;
            AtomicInteger atomicInteger = this.f34963case;
            int iAddAndGet = 1;
            do {
                long j = this.f34962break.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.f34965class) {
                        queue.clear();
                        return;
                    }
                    boolean z2 = this.f34964catch;
                    if (!z && z2 && this.f34969goto.get() != null) {
                        queue.clear();
                        y22Var.onError(rx.internal.util.Cdo.terminate(this.f34969goto));
                        return;
                    }
                    Object objPoll = queue.poll();
                    boolean z3 = objPoll == null;
                    if (z2 && atomicInteger.get() == 0 && z3) {
                        if (this.f34969goto.get() != null) {
                            y22Var.onError(rx.internal.util.Cdo.terminate(this.f34969goto));
                            return;
                        } else {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    y22Var.onNext((Object) Creturn.m38691try(objPoll));
                    j2++;
                }
                if (j2 == j) {
                    if (this.f34965class) {
                        queue.clear();
                        return;
                    }
                    if (this.f34964catch) {
                        if (z) {
                            if (atomicInteger.get() == 0 && queue.isEmpty()) {
                                if (this.f34969goto.get() != null) {
                                    y22Var.onError(rx.internal.util.Cdo.terminate(this.f34969goto));
                                    return;
                                } else {
                                    y22Var.onCompleted();
                                    return;
                                }
                            }
                        } else if (this.f34969goto.get() != null) {
                            queue.clear();
                            y22Var.onError(rx.internal.util.Cdo.terminate(this.f34969goto));
                            return;
                        } else if (atomicInteger.get() == 0 && queue.isEmpty()) {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    this.f34962break.produced(j2);
                    if (!this.f34964catch && this.f34971new != Integer.MAX_VALUE) {
                        request(j2);
                    }
                }
                iAddAndGet = this.f34973try.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        /* renamed from: for, reason: not valid java name */
        public void m38571for(Cdo<T, R>.C0529do c0529do, R r) {
            this.f34972this.offer(Creturn.m38682break(r));
            this.f34967else.m1492try(c0529do);
            this.f34963case.decrementAndGet();
            m38570do();
        }

        /* renamed from: if, reason: not valid java name */
        public void m38572if(Cdo<T, R>.C0529do c0529do, Throwable th) {
            if (this.f34968for) {
                rx.internal.util.Cdo.addThrowable(this.f34969goto, th);
                this.f34967else.m1492try(c0529do);
                if (!this.f34964catch && this.f34971new != Integer.MAX_VALUE) {
                    request(1L);
                }
            } else {
                this.f34967else.unsubscribe();
                unsubscribe();
                if (!this.f34969goto.compareAndSet(null, th)) {
                    rx.plugins.Cif.m39151protected(th);
                    return;
                }
                this.f34964catch = true;
            }
            this.f34963case.decrementAndGet();
            m38570do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34964catch = true;
            m38570do();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34968for) {
                rx.internal.util.Cdo.addThrowable(this.f34969goto, th);
            } else {
                this.f34967else.unsubscribe();
                if (!this.f34969goto.compareAndSet(null, th)) {
                    rx.plugins.Cif.m39151protected(th);
                    return;
                }
            }
            this.f34964catch = true;
            m38570do();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                Single<? extends R> singleCall = this.f34970if.call(t);
                if (singleCall == null) {
                    throw new NullPointerException("The mapper returned a null Single");
                }
                C0529do c0529do = new C0529do();
                this.f34967else.m1488do(c0529do);
                this.f34963case.incrementAndGet();
                singleCall.u(c0529do);
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(th);
            }
        }
    }

    public Cinterface(Observable<T> observable, Func1<? super T, ? extends Single<? extends R>> func1, boolean z, int i) {
        Objects.requireNonNull(func1, "mapper is null");
        if (i <= 0) {
            throw new IllegalArgumentException("maxConcurrency > 0 required but it was " + i);
        }
        this.f34958do = observable;
        this.f34960if = func1;
        this.f34959for = z;
        this.f34961new = i;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f34960if, this.f34959for, this.f34961new);
        y22Var.add(cdo.f34967else);
        y22Var.add(cdo.f34962break);
        y22Var.setProducer(cdo.f34962break);
        this.f34958do.r5(cdo);
    }
}
