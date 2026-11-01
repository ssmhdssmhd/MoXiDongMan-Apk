package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable;
import rx.Producer;

/* renamed from: rx.internal.operators.import, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cimport<T, R> extends y22<T> {

    /* renamed from: case, reason: not valid java name */
    public static final int f34931case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f34932else = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f34933goto = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f34934try = 0;

    /* renamed from: do, reason: not valid java name */
    public final y22<? super R> f34935do;

    /* renamed from: for, reason: not valid java name */
    public R f34936for;

    /* renamed from: if, reason: not valid java name */
    public boolean f34937if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicInteger f34938new = new AtomicInteger();

    /* renamed from: rx.internal.operators.import$do, reason: invalid class name */
    public static final class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final Cimport<?, ?> f34939do;

        public Cdo(Cimport<?, ?> cimport) {
            this.f34939do = cimport;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f34939do.m38563for(j);
        }
    }

    public Cimport(y22<? super R> y22Var) {
        this.f34935do = y22Var;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m38562do() {
        this.f34935do.onCompleted();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m38563for(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + j);
        }
        if (j != 0) {
            y22<? super R> y22Var = this.f34935do;
            do {
                int i = this.f34938new.get();
                if (i == 1 || i == 3 || y22Var.isUnsubscribed()) {
                    return;
                }
                if (i == 2) {
                    if (this.f34938new.compareAndSet(2, 3)) {
                        y22Var.onNext(this.f34936for);
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        y22Var.onCompleted();
                        return;
                    }
                    return;
                }
            } while (!this.f34938new.compareAndSet(0, 1));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m38564if(R r) {
        y22<? super R> y22Var = this.f34935do;
        do {
            int i = this.f34938new.get();
            if (i == 2 || i == 3 || y22Var.isUnsubscribed()) {
                return;
            }
            if (i == 1) {
                y22Var.onNext(r);
                if (!y22Var.isUnsubscribed()) {
                    y22Var.onCompleted();
                }
                this.f34938new.lazySet(3);
                return;
            }
            this.f34936for = r;
        } while (!this.f34938new.compareAndSet(0, 2));
    }

    /* renamed from: new, reason: not valid java name */
    public final void m38565new() {
        y22<? super R> y22Var = this.f34935do;
        y22Var.add(this);
        y22Var.setProducer(new Cdo(this));
    }

    @Override // rx.Observer
    public void onCompleted() {
        if (this.f34937if) {
            m38564if(this.f34936for);
        } else {
            m38562do();
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f34936for = null;
        this.f34935do.onError(th);
    }

    @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
    public final void setProducer(Producer producer) {
        producer.request(Long.MAX_VALUE);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m38566try(Observable<? extends T> observable) {
        m38565new();
        observable.r5(this);
    }
}
