package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.TimeoutException;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Func3;
import rx.functions.Func4;

/* loaded from: classes4.dex */
class OperatorTimeoutBase<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final FirstTimeoutStub<T> f34436do;

    /* renamed from: for, reason: not valid java name */
    public final Observable<? extends T> f34437for;

    /* renamed from: if, reason: not valid java name */
    public final TimeoutStub<T> f34438if;

    /* renamed from: new, reason: not valid java name */
    public final Cif f34439new;

    public interface FirstTimeoutStub<T> extends Func3<Cdo<T>, Long, Cif.Cdo, Subscription> {
    }

    public interface TimeoutStub<T> extends Func4<Cdo<T>, Long, T, Cif.Cdo, Subscription> {
    }

    /* renamed from: rx.internal.operators.OperatorTimeoutBase$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public final rx.internal.producers.Cdo f34440case = new rx.internal.producers.Cdo();

        /* renamed from: do, reason: not valid java name */
        public final ww1 f34441do;

        /* renamed from: else, reason: not valid java name */
        public boolean f34442else;

        /* renamed from: for, reason: not valid java name */
        public final TimeoutStub<T> f34443for;

        /* renamed from: goto, reason: not valid java name */
        public long f34444goto;

        /* renamed from: if, reason: not valid java name */
        public final ax1<T> f34445if;

        /* renamed from: new, reason: not valid java name */
        public final Observable<? extends T> f34446new;

        /* renamed from: try, reason: not valid java name */
        public final Cif.Cdo f34447try;

        /* renamed from: rx.internal.operators.OperatorTimeoutBase$do$do, reason: invalid class name and collision with other inner class name */
        public class C0508do extends y22<T> {
            public C0508do() {
            }

            @Override // rx.Observer
            public void onCompleted() {
                Cdo.this.f34445if.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.f34445if.onError(th);
            }

            @Override // rx.Observer
            public void onNext(T t) {
                Cdo.this.f34445if.onNext(t);
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                Cdo.this.f34440case.m38829for(producer);
            }
        }

        public Cdo(ax1<T> ax1Var, TimeoutStub<T> timeoutStub, ww1 ww1Var, Observable<? extends T> observable, Cif.Cdo cdo) {
            this.f34445if = ax1Var;
            this.f34443for = timeoutStub;
            this.f34441do = ww1Var;
            this.f34446new = observable;
            this.f34447try = cdo;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38392do(long j) {
            boolean z;
            synchronized (this) {
                z = true;
                if (j != this.f34444goto || this.f34442else) {
                    z = false;
                } else {
                    this.f34442else = true;
                }
            }
            if (z) {
                if (this.f34446new == null) {
                    this.f34445if.onError(new TimeoutException());
                    return;
                }
                C0508do c0508do = new C0508do();
                this.f34446new.r5(c0508do);
                this.f34441do.m9298if(c0508do);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.f34442else) {
                    z = false;
                } else {
                    this.f34442else = true;
                }
            }
            if (z) {
                this.f34441do.unsubscribe();
                this.f34445if.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.f34442else) {
                    z = false;
                } else {
                    this.f34442else = true;
                }
            }
            if (z) {
                this.f34441do.unsubscribe();
                this.f34445if.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j;
            boolean z;
            synchronized (this) {
                if (this.f34442else) {
                    j = this.f34444goto;
                    z = false;
                } else {
                    j = this.f34444goto + 1;
                    this.f34444goto = j;
                    z = true;
                }
            }
            if (z) {
                this.f34445if.onNext(t);
                this.f34441do.m9298if(this.f34443for.call(this, Long.valueOf(j), t, this.f34447try));
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34440case.m38829for(producer);
        }
    }

    public OperatorTimeoutBase(FirstTimeoutStub<T> firstTimeoutStub, TimeoutStub<T> timeoutStub, Observable<? extends T> observable, Cif cif) {
        this.f34436do = firstTimeoutStub;
        this.f34438if = timeoutStub;
        this.f34437for = observable;
        this.f34439new = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f34439new.mo971do();
        y22Var.add(cdoMo971do);
        ax1 ax1Var = new ax1(y22Var);
        ww1 ww1Var = new ww1();
        ax1Var.add(ww1Var);
        Cdo cdo = new Cdo(ax1Var, this.f34438if, ww1Var, this.f34437for, cdoMo971do);
        ax1Var.add(cdo);
        ax1Var.setProducer(cdo.f34440case);
        ww1Var.m9298if(this.f34436do.call(cdo, 0L, cdoMo971do));
        return cdo;
    }
}
