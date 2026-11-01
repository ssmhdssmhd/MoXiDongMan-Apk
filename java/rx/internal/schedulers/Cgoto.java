package rx.internal.schedulers;

import android.support.v4.d32;
import android.support.v4.dq;
import android.support.v4.y61;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.functions.Action0;

/* renamed from: rx.internal.schedulers.goto, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cgoto extends AtomicReference<Thread> implements Runnable, Subscription {
    private static final long serialVersionUID = -3962399486978279857L;
    public final Action0 action;
    public final d32 cancel;

    /* renamed from: rx.internal.schedulers.goto$do, reason: invalid class name */
    public final class Cdo implements Subscription {

        /* renamed from: do, reason: not valid java name */
        private final Future<?> f35751do;

        public Cdo(Future<?> future) {
            this.f35751do = future;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35751do.isCancelled();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (Cgoto.this.get() != Thread.currentThread()) {
                this.f35751do.cancel(true);
            } else {
                this.f35751do.cancel(false);
            }
        }
    }

    /* renamed from: rx.internal.schedulers.goto$for, reason: invalid class name */
    public static final class Cfor extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        public final dq parent;
        public final Cgoto s;

        public Cfor(Cgoto cgoto, dq dqVar) {
            this.s = cgoto;
            this.parent = dqVar;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.s.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.m1492try(this.s);
            }
        }
    }

    /* renamed from: rx.internal.schedulers.goto$if, reason: invalid class name */
    public static final class Cif extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        public final d32 parent;
        public final Cgoto s;

        public Cif(Cgoto cgoto, d32 d32Var) {
            this.s = cgoto;
            this.parent = d32Var;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.s.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.m1135new(this.s);
            }
        }
    }

    public Cgoto(Action0 action0) {
        this.action = action0;
        this.cancel = new d32();
    }

    public void add(Subscription subscription) {
        this.cancel.m1132do(subscription);
    }

    public void addParent(dq dqVar) {
        this.cancel.m1132do(new Cfor(this, dqVar));
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.cancel.isUnsubscribed();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                lazySet(Thread.currentThread());
                this.action.call();
            } finally {
                unsubscribe();
            }
        } catch (y61 e) {
            signalError(new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e));
        } catch (Throwable th) {
            signalError(new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th));
        }
    }

    public void signalError(Throwable th) {
        rx.plugins.Cif.m39151protected(th);
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        if (this.cancel.isUnsubscribed()) {
            return;
        }
        this.cancel.unsubscribe();
    }

    public void add(Future<?> future) {
        this.cancel.m1132do(new Cdo(future));
    }

    public void addParent(d32 d32Var) {
        this.cancel.m1132do(new Cif(this, d32Var));
    }

    public Cgoto(Action0 action0, dq dqVar) {
        this.action = action0;
        this.cancel = new d32(new Cfor(this, dqVar));
    }

    public Cgoto(Action0 action0, d32 d32Var) {
        this.action = action0;
        this.cancel = new d32(new Cif(this, d32Var));
    }
}
