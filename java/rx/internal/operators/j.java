package rx.internal.operators;

import android.support.v4.dq;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class j<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final rx.observables.Cfor<? extends T> f34975do;

    /* renamed from: if, reason: not valid java name */
    public volatile dq f34977if = new dq();

    /* renamed from: for, reason: not valid java name */
    public final AtomicInteger f34976for = new AtomicInteger(0);

    /* renamed from: new, reason: not valid java name */
    public final ReentrantLock f34978new = new ReentrantLock();

    /* renamed from: rx.internal.operators.j$do, reason: invalid class name */
    public class Cdo implements Action1<Subscription> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34979do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f34981if;

        public Cdo(y22 y22Var, AtomicBoolean atomicBoolean) {
            this.f34979do = y22Var;
            this.f34981if = atomicBoolean;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Subscription subscription) {
            try {
                j.this.f34977if.m1488do(subscription);
                j jVar = j.this;
                jVar.m38577new(this.f34979do, jVar.f34977if);
            } finally {
                j.this.f34978new.unlock();
                this.f34981if.set(false);
            }
        }
    }

    /* renamed from: rx.internal.operators.j$for, reason: invalid class name */
    public class Cfor implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f34982do;

        public Cfor(dq dqVar) {
            this.f34982do = dqVar;
        }

        @Override // rx.functions.Action0
        public void call() {
            j.this.f34978new.lock();
            try {
                if (j.this.f34977if == this.f34982do && j.this.f34976for.decrementAndGet() == 0) {
                    if (j.this.f34975do instanceof Subscription) {
                        ((Subscription) j.this.f34975do).unsubscribe();
                    }
                    j.this.f34977if.unsubscribe();
                    j.this.f34977if = new dq();
                }
            } finally {
                j.this.f34978new.unlock();
            }
        }
    }

    /* renamed from: rx.internal.operators.j$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34984do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ dq f34986if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(y22 y22Var, y22 y22Var2, dq dqVar) {
            super(y22Var);
            this.f34984do = y22Var2;
            this.f34986if = dqVar;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38579do() {
            j.this.f34978new.lock();
            try {
                if (j.this.f34977if == this.f34986if) {
                    if (j.this.f34975do instanceof Subscription) {
                        ((Subscription) j.this.f34975do).unsubscribe();
                    }
                    j.this.f34977if.unsubscribe();
                    j.this.f34977if = new dq();
                    j.this.f34976for.set(0);
                }
            } finally {
                j.this.f34978new.unlock();
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38579do();
            this.f34984do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            m38579do();
            this.f34984do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34984do.onNext(t);
        }
    }

    public j(rx.observables.Cfor<? extends T> cfor) {
        this.f34975do = cfor;
    }

    /* renamed from: for, reason: not valid java name */
    private Subscription m38574for(dq dqVar) {
        return rx.subscriptions.Cfor.m39225do(new Cfor(dqVar));
    }

    /* renamed from: try, reason: not valid java name */
    private Action1<Subscription> m38575try(y22<? super T> y22Var, AtomicBoolean atomicBoolean) {
        return new Cdo(y22Var, atomicBoolean);
    }

    @Override // rx.functions.Action1
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        this.f34978new.lock();
        if (this.f34976for.incrementAndGet() != 1) {
            try {
                m38577new(y22Var, this.f34977if);
            } finally {
                this.f34978new.unlock();
            }
        } else {
            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            try {
                this.f34975do.i6(m38575try(y22Var, atomicBoolean));
            } finally {
                if (atomicBoolean.get()) {
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m38577new(y22<? super T> y22Var, dq dqVar) {
        y22Var.add(m38574for(dqVar));
        this.f34975do.r5(new Cif(y22Var, y22Var, dqVar));
    }
}
