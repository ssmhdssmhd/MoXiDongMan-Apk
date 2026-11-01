package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.functions.Func0;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class p0<T, R> implements Observable.Operator<R, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends R> f35198do;

    /* renamed from: for, reason: not valid java name */
    public final Func0<? extends R> f35199for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super Throwable, ? extends R> f35200if;

    /* renamed from: rx.internal.operators.p0$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35201do;

        public Cdo(Cif cif) {
            this.f35201do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35201do.m38649if(j);
        }
    }

    /* renamed from: rx.internal.operators.p0$if, reason: invalid class name */
    public static final class Cif<T, R> extends y22<T> {

        /* renamed from: break, reason: not valid java name */
        public static final long f35203break = Long.MIN_VALUE;

        /* renamed from: catch, reason: not valid java name */
        public static final long f35204catch = Long.MAX_VALUE;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f35206do;

        /* renamed from: for, reason: not valid java name */
        public final Func1<? super Throwable, ? extends R> f35208for;

        /* renamed from: goto, reason: not valid java name */
        public long f35209goto;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends R> f35210if;

        /* renamed from: new, reason: not valid java name */
        public final Func0<? extends R> f35211new;

        /* renamed from: this, reason: not valid java name */
        public R f35212this;

        /* renamed from: try, reason: not valid java name */
        public final AtomicLong f35213try = new AtomicLong();

        /* renamed from: case, reason: not valid java name */
        public final AtomicLong f35205case = new AtomicLong();

        /* renamed from: else, reason: not valid java name */
        public final AtomicReference<Producer> f35207else = new AtomicReference<>();

        public Cif(y22<? super R> y22Var, Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
            this.f35206do = y22Var;
            this.f35210if = func1;
            this.f35208for = func12;
            this.f35211new = func0;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38647do() {
            long j = this.f35209goto;
            if (j == 0 || this.f35207else.get() == null) {
                return;
            }
            u6.m8261this(this.f35213try, j);
        }

        /* renamed from: for, reason: not valid java name */
        public void m38648for() {
            long j;
            do {
                j = this.f35213try.get();
                if ((j & Long.MIN_VALUE) != 0) {
                    return;
                }
            } while (!this.f35213try.compareAndSet(j, Long.MIN_VALUE | j));
            if (j != 0 || this.f35207else.get() == null) {
                if (!this.f35206do.isUnsubscribed()) {
                    this.f35206do.onNext(this.f35212this);
                }
                if (this.f35206do.isUnsubscribed()) {
                    return;
                }
                this.f35206do.onCompleted();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38649if(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j == 0) {
                return;
            }
            while (true) {
                long j2 = this.f35213try.get();
                if ((j2 & Long.MIN_VALUE) != 0) {
                    long j3 = Long.MAX_VALUE & j2;
                    if (this.f35213try.compareAndSet(j2, Long.MIN_VALUE | u6.m8255do(j3, j))) {
                        if (j3 == 0) {
                            if (!this.f35206do.isUnsubscribed()) {
                                this.f35206do.onNext(this.f35212this);
                            }
                            if (this.f35206do.isUnsubscribed()) {
                                return;
                            }
                            this.f35206do.onCompleted();
                            return;
                        }
                        return;
                    }
                } else {
                    if (this.f35213try.compareAndSet(j2, u6.m8255do(j2, j))) {
                        AtomicReference<Producer> atomicReference = this.f35207else;
                        Producer producer = atomicReference.get();
                        if (producer != null) {
                            producer.request(j);
                            return;
                        }
                        u6.m8259if(this.f35205case, j);
                        Producer producer2 = atomicReference.get();
                        if (producer2 != null) {
                            long andSet = this.f35205case.getAndSet(0L);
                            if (andSet != 0) {
                                producer2.request(andSet);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38647do();
            try {
                this.f35212this = this.f35211new.call();
            } catch (Throwable th) {
                s80.m7297goto(th, this.f35206do);
            }
            m38648for();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            m38647do();
            try {
                this.f35212this = this.f35208for.call(th);
            } catch (Throwable th2) {
                s80.m7300this(th2, this.f35206do, th);
            }
            m38648for();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f35209goto++;
                this.f35206do.onNext(this.f35210if.call(t));
            } catch (Throwable th) {
                s80.m7300this(th, this.f35206do, t);
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            if (!this.f35207else.compareAndSet(null, producer)) {
                throw new IllegalStateException("Producer already set!");
            }
            long andSet = this.f35205case.getAndSet(0L);
            if (andSet != 0) {
                producer.request(andSet);
            }
        }
    }

    public p0(Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
        this.f35198do = func1;
        this.f35200if = func12;
        this.f35199for = func0;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super R> y22Var) {
        Cif cif = new Cif(y22Var, this.f35198do, this.f35200if, this.f35199for);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        return cif;
    }
}
