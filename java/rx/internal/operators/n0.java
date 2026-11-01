package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.Cthis;

/* loaded from: classes4.dex */
public final class n0<T, K, V> implements Observable.Operator<rx.observables.Cnew<K, V>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends K> f35108do;

    /* renamed from: for, reason: not valid java name */
    public final int f35109for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends V> f35110if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f35111new;

    /* renamed from: try, reason: not valid java name */
    public final Func1<Action1<K>, Map<K, Object>> f35112try;

    /* renamed from: rx.internal.operators.n0$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f35113do;

        public Cdo(Cfor cfor) {
            this.f35113do = cfor;
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f35113do.m38616do();
        }
    }

    /* renamed from: rx.internal.operators.n0$for, reason: invalid class name */
    public static final class Cfor<T, K, V> extends y22<T> {

        /* renamed from: while, reason: not valid java name */
        public static final Object f35115while = new Object();

        /* renamed from: break, reason: not valid java name */
        public final rx.internal.producers.Cdo f35116break;

        /* renamed from: case, reason: not valid java name */
        public final Map<Object, Cnew<K, V>> f35117case;

        /* renamed from: catch, reason: not valid java name */
        public final AtomicBoolean f35118catch;

        /* renamed from: class, reason: not valid java name */
        public final AtomicLong f35119class;

        /* renamed from: const, reason: not valid java name */
        public final AtomicInteger f35120const;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super rx.observables.Cnew<K, V>> f35121do;

        /* renamed from: else, reason: not valid java name */
        public final Queue<rx.observables.Cnew<K, V>> f35122else = new ConcurrentLinkedQueue();

        /* renamed from: final, reason: not valid java name */
        public Throwable f35123final;

        /* renamed from: for, reason: not valid java name */
        public final Func1<? super T, ? extends V> f35124for;

        /* renamed from: goto, reason: not valid java name */
        public final Cif f35125goto;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends K> f35126if;

        /* renamed from: new, reason: not valid java name */
        public final int f35127new;

        /* renamed from: super, reason: not valid java name */
        public volatile boolean f35128super;

        /* renamed from: this, reason: not valid java name */
        public final Queue<K> f35129this;

        /* renamed from: throw, reason: not valid java name */
        public final AtomicInteger f35130throw;

        /* renamed from: try, reason: not valid java name */
        public final boolean f35131try;

        /* renamed from: rx.internal.operators.n0$for$do, reason: invalid class name */
        public static class Cdo<K> implements Action1<K> {

            /* renamed from: do, reason: not valid java name */
            public final Queue<K> f35132do;

            public Cdo(Queue<K> queue) {
                this.f35132do = queue;
            }

            @Override // rx.functions.Action1
            public void call(K k) {
                this.f35132do.offer(k);
            }
        }

        public Cfor(y22<? super rx.observables.Cnew<K, V>> y22Var, Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z, Func1<Action1<K>, Map<K, Object>> func13) {
            this.f35121do = y22Var;
            this.f35126if = func1;
            this.f35124for = func12;
            this.f35127new = i;
            this.f35131try = z;
            rx.internal.producers.Cdo cdo = new rx.internal.producers.Cdo();
            this.f35116break = cdo;
            cdo.request(i);
            this.f35125goto = new Cif(this);
            this.f35118catch = new AtomicBoolean();
            this.f35119class = new AtomicLong();
            this.f35120const = new AtomicInteger(1);
            this.f35130throw = new AtomicInteger();
            if (func13 == null) {
                this.f35117case = new ConcurrentHashMap();
                this.f35129this = null;
            } else {
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                this.f35129this = concurrentLinkedQueue;
                this.f35117case = m38614new(func13, new Cdo(concurrentLinkedQueue));
            }
        }

        /* renamed from: new, reason: not valid java name */
        private Map<Object, Cnew<K, V>> m38614new(Func1<Action1<K>, Map<K, Object>> func1, Action1<K> action1) {
            return func1.call(action1);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38615case(y22<? super rx.observables.Cnew<K, V>> y22Var, Queue<?> queue, Throwable th) {
            queue.clear();
            ArrayList arrayList = new ArrayList(this.f35117case.values());
            this.f35117case.clear();
            Queue<K> queue2 = this.f35129this;
            if (queue2 != null) {
                queue2.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Cnew) it.next()).onError(th);
            }
            y22Var.onError(th);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38616do() {
            if (this.f35118catch.compareAndSet(false, true) && this.f35120const.decrementAndGet() == 0) {
                unsubscribe();
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m38617else(long j) {
            if (j >= 0) {
                u6.m8259if(this.f35119class, j);
                m38620try();
            } else {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m38618for(boolean z, boolean z2, y22<? super rx.observables.Cnew<K, V>> y22Var, Queue<?> queue) {
            if (!z) {
                return false;
            }
            Throwable th = this.f35123final;
            if (th != null) {
                m38615case(y22Var, queue, th);
                return true;
            }
            if (!z2) {
                return false;
            }
            this.f35121do.onCompleted();
            return true;
        }

        /* renamed from: if, reason: not valid java name */
        public void m38619if(K k) {
            if (k == null) {
                k = (K) f35115while;
            }
            if (this.f35117case.remove(k) == null || this.f35120const.decrementAndGet() != 0) {
                return;
            }
            unsubscribe();
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35128super) {
                return;
            }
            Iterator<Cnew<K, V>> it = this.f35117case.values().iterator();
            while (it.hasNext()) {
                it.next().i6();
            }
            this.f35117case.clear();
            Queue<K> queue = this.f35129this;
            if (queue != null) {
                queue.clear();
            }
            this.f35128super = true;
            this.f35120const.decrementAndGet();
            m38620try();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35128super) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f35123final = th;
            this.f35128super = true;
            this.f35120const.decrementAndGet();
            m38620try();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35128super) {
                return;
            }
            Queue<?> queue = this.f35122else;
            y22<? super rx.observables.Cnew<K, V>> y22Var = this.f35121do;
            try {
                K kCall = this.f35126if.call(t);
                boolean z = false;
                Object obj = kCall != null ? kCall : f35115while;
                Cnew<K, V> cnewH6 = this.f35117case.get(obj);
                if (cnewH6 == null) {
                    if (this.f35118catch.get()) {
                        return;
                    }
                    cnewH6 = Cnew.h6(kCall, this.f35127new, this, this.f35131try);
                    this.f35117case.put(obj, cnewH6);
                    this.f35120const.getAndIncrement();
                    z = true;
                }
                try {
                    cnewH6.onNext(this.f35124for.call(t));
                    if (this.f35129this != null) {
                        while (true) {
                            K kPoll = this.f35129this.poll();
                            if (kPoll == null) {
                                break;
                            }
                            Cnew<K, V> cnew = this.f35117case.get(kPoll);
                            if (cnew != null) {
                                cnew.i6();
                            }
                        }
                    }
                    if (z) {
                        queue.offer(cnewH6);
                        m38620try();
                    }
                } catch (Throwable th) {
                    unsubscribe();
                    m38615case(y22Var, queue, th);
                }
            } catch (Throwable th2) {
                unsubscribe();
                m38615case(y22Var, queue, th2);
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35116break.m38829for(producer);
        }

        /* renamed from: try, reason: not valid java name */
        public void m38620try() {
            if (this.f35130throw.getAndIncrement() != 0) {
                return;
            }
            Queue<rx.observables.Cnew<K, V>> queue = this.f35122else;
            y22<? super rx.observables.Cnew<K, V>> y22Var = this.f35121do;
            int iAddAndGet = 1;
            while (!m38618for(this.f35128super, queue.isEmpty(), y22Var, queue)) {
                long j = this.f35119class.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.f35128super;
                    rx.observables.Cnew<K, V> cnewPoll = queue.poll();
                    boolean z2 = cnewPoll == null;
                    if (m38618for(z, z2, y22Var, queue)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    y22Var.onNext(cnewPoll);
                    j2++;
                }
                if (j2 != 0) {
                    if (j != Long.MAX_VALUE) {
                        u6.m8261this(this.f35119class, j2);
                    }
                    this.f35116break.request(j2);
                }
                iAddAndGet = this.f35130throw.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.n0$if, reason: invalid class name */
    public static final class Cif implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final Cfor<?, ?, ?> f35133do;

        public Cif(Cfor<?, ?, ?> cfor) {
            this.f35133do = cfor;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35133do.m38617else(j);
        }
    }

    /* renamed from: rx.internal.operators.n0$new, reason: invalid class name */
    public static final class Cnew<K, T> extends rx.observables.Cnew<K, T> {

        /* renamed from: for, reason: not valid java name */
        public final Ctry<T, K> f35134for;

        public Cnew(K k, Ctry<T, K> ctry) {
            super(k, ctry);
            this.f35134for = ctry;
        }

        public static <T, K> Cnew<K, T> h6(K k, int i, Cfor<?, K, T> cfor, boolean z) {
            return new Cnew<>(k, new Ctry(i, cfor, k, z));
        }

        public void i6() {
            this.f35134for.onComplete();
        }

        public void onError(Throwable th) {
            this.f35134for.onError(th);
        }

        public void onNext(T t) {
            this.f35134for.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.n0$try, reason: invalid class name */
    public static final class Ctry<T, K> extends AtomicInteger implements Producer, Subscription, Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        public final boolean delayError;
        public volatile boolean done;
        public Throwable error;
        public final K key;
        public final Cfor<?, K, T> parent;
        public final Queue<Object> queue = new ConcurrentLinkedQueue();
        public final AtomicBoolean cancelled = new AtomicBoolean();
        public final AtomicReference<y22<? super T>> actual = new AtomicReference<>();
        public final AtomicBoolean once = new AtomicBoolean();
        public final AtomicLong requested = new AtomicLong();

        public Ctry(int i, Cfor<?, K, T> cfor, K k, boolean z) {
            this.parent = cfor;
            this.key = k;
            this.delayError = z;
        }

        public boolean checkTerminated(boolean z, boolean z2, y22<? super T> y22Var, boolean z3) {
            if (this.cancelled.get()) {
                this.queue.clear();
                this.parent.m38619if(this.key);
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error;
                if (th != null) {
                    y22Var.onError(th);
                } else {
                    y22Var.onCompleted();
                }
                return true;
            }
            Throwable th2 = this.error;
            if (th2 != null) {
                this.queue.clear();
                y22Var.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            y22Var.onCompleted();
            return true;
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Queue<Object> queue = this.queue;
            boolean z = this.delayError;
            y22<? super T> y22Var = this.actual.get();
            int iAddAndGet = 1;
            while (true) {
                if (y22Var != null) {
                    if (checkTerminated(this.done, queue.isEmpty(), y22Var, z)) {
                        return;
                    }
                    long j = this.requested.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z2 = this.done;
                        Object objPoll = queue.poll();
                        boolean z3 = objPoll == null;
                        if (checkTerminated(z2, z3, y22Var, z)) {
                            return;
                        }
                        if (z3) {
                            break;
                        }
                        y22Var.onNext((Object) Creturn.m38691try(objPoll));
                        j2++;
                    }
                    if (j2 != 0) {
                        if (j != Long.MAX_VALUE) {
                            u6.m8261this(this.requested, j2);
                        }
                        this.parent.f35116break.request(j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (y22Var == null) {
                    y22Var = this.actual.get();
                }
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancelled.get();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public void onNext(T t) {
            if (t == null) {
                this.error = new NullPointerException();
                this.done = true;
            } else {
                this.queue.offer(Creturn.m38682break(t));
            }
            drain();
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
            if (j != 0) {
                u6.m8259if(this.requested, j);
                drain();
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.cancelled.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.parent.m38619if(this.key);
            }
        }

        @Override // rx.functions.Action1
        public void call(y22<? super T> y22Var) {
            if (!this.once.compareAndSet(false, true)) {
                y22Var.onError(new IllegalStateException("Only one Subscriber allowed!"));
                return;
            }
            y22Var.add(this);
            y22Var.setProducer(this);
            this.actual.lazySet(y22Var);
            drain();
        }
    }

    public n0(Func1<? super T, ? extends K> func1) {
        this(func1, Cthis.m38929for(), rx.internal.util.Ctry.f35868new, false, null);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super rx.observables.Cnew<K, V>> y22Var) {
        try {
            Cfor cfor = new Cfor(y22Var, this.f35108do, this.f35110if, this.f35109for, this.f35111new, this.f35112try);
            y22Var.add(rx.subscriptions.Cfor.m39225do(new Cdo(cfor)));
            y22Var.setProducer(cfor.f35125goto);
            return cfor;
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
            y22<? super T> y22VarM39116new = rx.observers.Cnew.m39116new();
            y22VarM39116new.unsubscribe();
            return y22VarM39116new;
        }
    }

    public n0(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(func1, func12, rx.internal.util.Ctry.f35868new, false, null);
    }

    public n0(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func1<Action1<K>, Map<K, Object>> func13) {
        this(func1, func12, rx.internal.util.Ctry.f35868new, false, func13);
    }

    public n0(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, int i, boolean z, Func1<Action1<K>, Map<K, Object>> func13) {
        this.f35108do = func1;
        this.f35110if = func12;
        this.f35109for = i;
        this.f35111new = z;
        this.f35112try = func13;
    }
}
