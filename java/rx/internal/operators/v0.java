package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.BackpressureOverflow;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;
import rx.internal.util.BackpressureDrainManager;

/* loaded from: classes4.dex */
public class v0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final Long f35487do;

    /* renamed from: for, reason: not valid java name */
    private final BackpressureOverflow.Strategy f35488for;

    /* renamed from: if, reason: not valid java name */
    private final Action0 f35489if;

    /* renamed from: rx.internal.operators.v0$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements BackpressureDrainManager.BackpressureQueueCallback {

        /* renamed from: case, reason: not valid java name */
        private final Action0 f35490case;

        /* renamed from: else, reason: not valid java name */
        private final BackpressureOverflow.Strategy f35492else;

        /* renamed from: for, reason: not valid java name */
        private final y22<? super T> f35493for;

        /* renamed from: if, reason: not valid java name */
        private final AtomicLong f35494if;

        /* renamed from: try, reason: not valid java name */
        private final BackpressureDrainManager f35496try;

        /* renamed from: do, reason: not valid java name */
        private final ConcurrentLinkedQueue<Object> f35491do = new ConcurrentLinkedQueue<>();

        /* renamed from: new, reason: not valid java name */
        private final AtomicBoolean f35495new = new AtomicBoolean(false);

        public Cdo(y22<? super T> y22Var, Long l, Action0 action0, BackpressureOverflow.Strategy strategy) {
            this.f35493for = y22Var;
            this.f35494if = l != null ? new AtomicLong(l.longValue()) : null;
            this.f35490case = action0;
            this.f35496try = new BackpressureDrainManager(this);
            this.f35492else = strategy;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m38768do() throws Throwable {
            long j;
            if (this.f35494if == null) {
                return true;
            }
            do {
                j = this.f35494if.get();
                if (j <= 0) {
                    try {
                    } catch (zz0 e) {
                        if (this.f35495new.compareAndSet(false, true)) {
                            unsubscribe();
                            this.f35493for.onError(e);
                        }
                    }
                    boolean z = this.f35492else.mayAttemptDrop() && poll() != null;
                    Action0 action0 = this.f35490case;
                    if (action0 != null) {
                        try {
                            action0.call();
                        } catch (Throwable th) {
                            s80.m7301try(th);
                            this.f35496try.terminateAndDrain(th);
                            return false;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                }
            } while (!this.f35494if.compareAndSet(j, j - 1));
            return true;
        }

        @Override // rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback
        public boolean accept(Object obj) {
            return Creturn.m38684do(this.f35493for, obj);
        }

        @Override // rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback
        public void complete(Throwable th) {
            if (th != null) {
                this.f35493for.onError(th);
            } else {
                this.f35493for.onCompleted();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public Producer m38769if() {
            return this.f35496try;
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            if (this.f35495new.get()) {
                return;
            }
            this.f35496try.terminateAndDrain();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            if (this.f35495new.get()) {
                return;
            }
            this.f35496try.terminateAndDrain(th);
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            if (m38768do()) {
                this.f35491do.offer(Creturn.m38682break(t));
                this.f35496try.drain();
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }

        @Override // rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback
        public Object peek() {
            return this.f35491do.peek();
        }

        @Override // rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback
        public Object poll() {
            Object objPoll = this.f35491do.poll();
            AtomicLong atomicLong = this.f35494if;
            if (atomicLong != null && objPoll != null) {
                atomicLong.incrementAndGet();
            }
            return objPoll;
        }
    }

    /* renamed from: rx.internal.operators.v0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final v0<?> f35497do = new v0<>();
    }

    public v0() {
        this.f35487do = null;
        this.f35489if = null;
        this.f35488for = BackpressureOverflow.f34172if;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> v0<T> m38766if() {
        return (v0<T>) Cif.f35497do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f35487do, this.f35489if, this.f35488for);
        y22Var.add(cdo);
        y22Var.setProducer(cdo.m38769if());
        return cdo;
    }

    public v0(long j) {
        this(j, null, BackpressureOverflow.f34172if);
    }

    public v0(long j, Action0 action0) {
        this(j, action0, BackpressureOverflow.f34172if);
    }

    public v0(long j, Action0 action0, BackpressureOverflow.Strategy strategy) {
        if (j > 0) {
            Objects.requireNonNull(strategy, "The BackpressureOverflow strategy must not be null");
            this.f35487do = Long.valueOf(j);
            this.f35489if = action0;
            this.f35488for = strategy;
            return;
        }
        throw new IllegalArgumentException("Buffer capacity must be > 0");
    }
}
