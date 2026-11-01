package rx.internal.operators;

import android.R;
import android.support.v4.d12;
import android.support.v4.u6;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.Ctry;

/* loaded from: classes4.dex */
public final class n1<T> implements Observable.Operator<T, Observable<? extends T>> {

    /* renamed from: do, reason: not valid java name */
    public final boolean f35135do;

    /* renamed from: rx.internal.operators.n1$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final n1<Object> f35136do = new n1<>(false);
    }

    /* renamed from: rx.internal.operators.n1$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final long f35137do;

        /* renamed from: if, reason: not valid java name */
        private final Cnew<T> f35138if;

        public Cfor(long j, Cnew<T> cnew) {
            this.f35137do = j;
            this.f35138if = cnew;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35138if.m38633new(this.f35137do);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35138if.m38629else(th, this.f35137do);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35138if.m38625case(t, this);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35138if.m38634this(producer, this.f35137do);
        }
    }

    /* renamed from: rx.internal.operators.n1$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final n1<Object> f35139do = new n1<>(true);
    }

    /* renamed from: rx.internal.operators.n1$new, reason: invalid class name */
    public static final class Cnew<T> extends y22<Observable<? extends T>> {

        /* renamed from: const, reason: not valid java name */
        public static final Throwable f35140const = new Throwable("Terminal error");

        /* renamed from: break, reason: not valid java name */
        public volatile boolean f35141break;

        /* renamed from: case, reason: not valid java name */
        public boolean f35142case;

        /* renamed from: catch, reason: not valid java name */
        public Throwable f35143catch;

        /* renamed from: class, reason: not valid java name */
        public boolean f35144class;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35145do;

        /* renamed from: else, reason: not valid java name */
        public boolean f35146else;

        /* renamed from: for, reason: not valid java name */
        public final boolean f35147for;

        /* renamed from: goto, reason: not valid java name */
        public long f35148goto;

        /* renamed from: this, reason: not valid java name */
        public Producer f35151this;

        /* renamed from: if, reason: not valid java name */
        public final ww1 f35149if = new ww1();

        /* renamed from: new, reason: not valid java name */
        public final AtomicLong f35150new = new AtomicLong();

        /* renamed from: try, reason: not valid java name */
        public final d12<Object> f35152try = new d12<>(Ctry.f35868new);

        /* renamed from: rx.internal.operators.n1$new$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cnew.this.m38630for();
            }
        }

        /* renamed from: rx.internal.operators.n1$new$if, reason: invalid class name */
        public class Cif implements Producer {
            public Cif() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j > 0) {
                    Cnew.this.m38632if(j);
                } else {
                    if (j >= 0) {
                        return;
                    }
                    throw new IllegalArgumentException("n >= 0 expected but it was " + j);
                }
            }
        }

        public Cnew(y22<? super T> y22Var, boolean z) {
            this.f35145do = y22Var;
            this.f35147for = z;
        }

        @Override // rx.Observer
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Observable<? extends T> observable) {
            Cfor cfor;
            long jIncrementAndGet = this.f35150new.incrementAndGet();
            Subscription subscriptionM9297do = this.f35149if.m9297do();
            if (subscriptionM9297do != null) {
                subscriptionM9297do.unsubscribe();
            }
            synchronized (this) {
                cfor = new Cfor(jIncrementAndGet, this);
                this.f35144class = true;
                this.f35151this = null;
            }
            this.f35149if.m9298if(cfor);
            observable.r5(cfor);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38625case(T t, Cfor<T> cfor) {
            synchronized (this) {
                if (this.f35150new.get() != ((Cfor) cfor).f35137do) {
                    return;
                }
                this.f35152try.m1118class(cfor, Creturn.m38682break(t));
                m38635try();
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public void m38626catch(Throwable th) {
            rx.plugins.Cif.m39151protected(th);
        }

        /* renamed from: class, reason: not valid java name */
        public boolean m38627class(Throwable th) {
            Throwable th2 = this.f35143catch;
            if (th2 == f35140const) {
                return false;
            }
            if (th2 == null) {
                this.f35143catch = th;
            } else if (th2 instanceof rx.exceptions.Cdo) {
                ArrayList arrayList = new ArrayList(((rx.exceptions.Cdo) th2).getExceptions());
                arrayList.add(th);
                this.f35143catch = new rx.exceptions.Cdo(arrayList);
            } else {
                this.f35143catch = new rx.exceptions.Cdo(th2, th);
            }
            return true;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38628do(boolean z, boolean z2, Throwable th, d12<Object> d12Var, y22<? super T> y22Var, boolean z3) {
            if (this.f35147for) {
                if (!z || z2 || !z3) {
                    return false;
                }
                if (th != null) {
                    y22Var.onError(th);
                } else {
                    y22Var.onCompleted();
                }
                return true;
            }
            if (th != null) {
                d12Var.clear();
                y22Var.onError(th);
                return true;
            }
            if (!z || z2 || !z3) {
                return false;
            }
            y22Var.onCompleted();
            return true;
        }

        /* renamed from: else, reason: not valid java name */
        public void m38629else(Throwable th, long j) {
            boolean zM38627class;
            synchronized (this) {
                if (this.f35150new.get() == j) {
                    zM38627class = m38627class(th);
                    this.f35144class = false;
                    this.f35151this = null;
                } else {
                    zM38627class = true;
                }
            }
            if (zM38627class) {
                m38635try();
            } else {
                m38626catch(th);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38630for() {
            synchronized (this) {
                this.f35151this = null;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public void m38631goto() {
            this.f35145do.add(this.f35149if);
            this.f35145do.add(rx.subscriptions.Cfor.m39225do(new Cdo()));
            this.f35145do.setProducer(new Cif());
        }

        /* renamed from: if, reason: not valid java name */
        public void m38632if(long j) {
            Producer producer;
            synchronized (this) {
                producer = this.f35151this;
                this.f35148goto = u6.m8255do(this.f35148goto, j);
            }
            if (producer != null) {
                producer.request(j);
            }
            m38635try();
        }

        /* renamed from: new, reason: not valid java name */
        public void m38633new(long j) {
            synchronized (this) {
                if (this.f35150new.get() != j) {
                    return;
                }
                this.f35144class = false;
                this.f35151this = null;
                m38635try();
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35141break = true;
            m38635try();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            boolean zM38627class;
            synchronized (this) {
                zM38627class = m38627class(th);
            }
            if (!zM38627class) {
                m38626catch(th);
            } else {
                this.f35141break = true;
                m38635try();
            }
        }

        /* renamed from: this, reason: not valid java name */
        public void m38634this(Producer producer, long j) {
            synchronized (this) {
                if (this.f35150new.get() != j) {
                    return;
                }
                long j2 = this.f35148goto;
                this.f35151this = producer;
                producer.request(j2);
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m38635try() {
            Throwable th;
            Throwable th2;
            synchronized (this) {
                if (this.f35142case) {
                    this.f35146else = true;
                    return;
                }
                this.f35142case = true;
                boolean z = this.f35144class;
                long j = this.f35148goto;
                Throwable th3 = this.f35143catch;
                if (th3 != null && th3 != (th2 = f35140const) && !this.f35147for) {
                    this.f35143catch = th2;
                }
                d12<Object> d12Var = this.f35152try;
                AtomicLong atomicLong = this.f35150new;
                y22<? super T> y22Var = this.f35145do;
                long j2 = j;
                Throwable th4 = th3;
                boolean z2 = this.f35141break;
                while (true) {
                    long j3 = 0;
                    while (j3 != j2) {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        boolean zIsEmpty = d12Var.isEmpty();
                        if (m38628do(z2, z, th4, d12Var, y22Var, zIsEmpty)) {
                            return;
                        }
                        if (zIsEmpty) {
                            break;
                        }
                        Cfor cfor = (Cfor) d12Var.poll();
                        R.bool boolVar = (Object) Creturn.m38691try(d12Var.poll());
                        if (atomicLong.get() == cfor.f35137do) {
                            y22Var.onNext(boolVar);
                            j3++;
                        }
                    }
                    if (j3 == j2) {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        if (m38628do(this.f35141break, z, th4, d12Var, y22Var, d12Var.isEmpty())) {
                            return;
                        }
                    }
                    synchronized (this) {
                        long j4 = this.f35148goto;
                        if (j4 != Long.MAX_VALUE) {
                            j4 -= j3;
                            this.f35148goto = j4;
                        }
                        j2 = j4;
                        if (!this.f35146else) {
                            this.f35142case = false;
                            return;
                        }
                        this.f35146else = false;
                        z2 = this.f35141break;
                        z = this.f35144class;
                        th4 = this.f35143catch;
                        if (th4 != null && th4 != (th = f35140const) && !this.f35147for) {
                            this.f35143catch = th;
                        }
                    }
                }
            }
        }
    }

    public n1(boolean z) {
        this.f35135do = z;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> n1<T> m38621if(boolean z) {
        return z ? (n1<T>) Cif.f35139do : (n1<T>) Cdo.f35136do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super Observable<? extends T>> call(y22<? super T> y22Var) {
        Cnew cnew = new Cnew(y22Var, this.f35135do);
        y22Var.add(cnew);
        cnew.m38631goto();
        return cnew;
    }
}
