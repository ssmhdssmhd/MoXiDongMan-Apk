package rx.internal.operators;

import android.support.v4.d12;
import android.support.v4.u22;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.subjects.Celse;

/* loaded from: classes4.dex */
public final class f2<T> implements Observable.Operator<Observable<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f34733do;

    /* renamed from: if, reason: not valid java name */
    public final int f34734if;

    /* renamed from: rx.internal.operators.f2$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements Action0 {

        /* renamed from: case, reason: not valid java name */
        public u22<T, T> f34735case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34736do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f34737for = new AtomicInteger(1);

        /* renamed from: if, reason: not valid java name */
        public final int f34738if;

        /* renamed from: new, reason: not valid java name */
        public final Subscription f34739new;

        /* renamed from: try, reason: not valid java name */
        public int f34740try;

        /* renamed from: rx.internal.operators.f2$do$do, reason: invalid class name and collision with other inner class name */
        public class C0523do implements Producer {
            public C0523do() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was " + j);
                }
                if (j != 0) {
                    Cdo.this.request(u6.m8257for(Cdo.this.f34738if, j));
                }
            }
        }

        public Cdo(y22<? super Observable<T>> y22Var, int i) {
            this.f34736do = y22Var;
            this.f34738if = i;
            Subscription subscriptionM39225do = rx.subscriptions.Cfor.m39225do(this);
            this.f34739new = subscriptionM39225do;
            add(subscriptionM39225do);
            request(0L);
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34737for.decrementAndGet() == 0) {
                unsubscribe();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public Producer m38484if() {
            return new C0523do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            u22<T, T> u22Var = this.f34735case;
            if (u22Var != null) {
                this.f34735case = null;
                u22Var.onCompleted();
            }
            this.f34736do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            u22<T, T> u22Var = this.f34735case;
            if (u22Var != null) {
                this.f34735case = null;
                u22Var.onError(th);
            }
            this.f34736do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f34740try;
            Celse celseI6 = this.f34735case;
            if (i == 0) {
                this.f34737for.getAndIncrement();
                celseI6 = Celse.i6(this.f34738if, this);
                this.f34735case = celseI6;
                this.f34736do.onNext(celseI6);
            }
            int i2 = i + 1;
            celseI6.onNext(t);
            if (i2 != this.f34738if) {
                this.f34740try = i2;
                return;
            }
            this.f34740try = 0;
            this.f34735case = null;
            celseI6.onCompleted();
        }
    }

    /* renamed from: rx.internal.operators.f2$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> implements Action0 {

        /* renamed from: case, reason: not valid java name */
        public int f34742case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34743do;

        /* renamed from: else, reason: not valid java name */
        public u22<T, T> f34744else;

        /* renamed from: for, reason: not valid java name */
        public final int f34745for;

        /* renamed from: if, reason: not valid java name */
        public final int f34746if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicInteger f34747new = new AtomicInteger(1);

        /* renamed from: try, reason: not valid java name */
        public final Subscription f34748try;

        /* renamed from: rx.internal.operators.f2$for$do, reason: invalid class name */
        public final class Cdo extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = 4625807964358024108L;

            public Cdo() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was " + j);
                }
                if (j != 0) {
                    Cfor cfor = Cfor.this;
                    if (get() || !compareAndSet(false, true)) {
                        cfor.request(u6.m8257for(j, cfor.f34745for));
                    } else {
                        cfor.request(u6.m8255do(u6.m8257for(j, cfor.f34746if), u6.m8257for(cfor.f34745for - cfor.f34746if, j - 1)));
                    }
                }
            }
        }

        public Cfor(y22<? super Observable<T>> y22Var, int i, int i2) {
            this.f34743do = y22Var;
            this.f34746if = i;
            this.f34745for = i2;
            Subscription subscriptionM39225do = rx.subscriptions.Cfor.m39225do(this);
            this.f34748try = subscriptionM39225do;
            add(subscriptionM39225do);
            request(0L);
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34747new.decrementAndGet() == 0) {
                unsubscribe();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public Producer m38487for() {
            return new Cdo();
        }

        @Override // rx.Observer
        public void onCompleted() {
            u22<T, T> u22Var = this.f34744else;
            if (u22Var != null) {
                this.f34744else = null;
                u22Var.onCompleted();
            }
            this.f34743do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            u22<T, T> u22Var = this.f34744else;
            if (u22Var != null) {
                this.f34744else = null;
                u22Var.onError(th);
            }
            this.f34743do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f34742case;
            Celse celseI6 = this.f34744else;
            if (i == 0) {
                this.f34747new.getAndIncrement();
                celseI6 = Celse.i6(this.f34746if, this);
                this.f34744else = celseI6;
                this.f34743do.onNext(celseI6);
            }
            int i2 = i + 1;
            if (celseI6 != null) {
                celseI6.onNext(t);
            }
            if (i2 == this.f34746if) {
                this.f34742case = i2;
                this.f34744else = null;
                celseI6.onCompleted();
            } else if (i2 == this.f34745for) {
                this.f34742case = 0;
            } else {
                this.f34742case = i2;
            }
        }
    }

    /* renamed from: rx.internal.operators.f2$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> implements Action0 {

        /* renamed from: break, reason: not valid java name */
        public Throwable f34749break;

        /* renamed from: catch, reason: not valid java name */
        public volatile boolean f34751catch;

        /* renamed from: class, reason: not valid java name */
        public int f34752class;

        /* renamed from: const, reason: not valid java name */
        public int f34753const;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34754do;

        /* renamed from: for, reason: not valid java name */
        public final int f34756for;

        /* renamed from: if, reason: not valid java name */
        public final int f34758if;

        /* renamed from: this, reason: not valid java name */
        public final Queue<u22<T, T>> f34760this;

        /* renamed from: try, reason: not valid java name */
        public final Subscription f34761try;

        /* renamed from: new, reason: not valid java name */
        public final AtomicInteger f34759new = new AtomicInteger(1);

        /* renamed from: case, reason: not valid java name */
        public final ArrayDeque<u22<T, T>> f34750case = new ArrayDeque<>();

        /* renamed from: goto, reason: not valid java name */
        public final AtomicInteger f34757goto = new AtomicInteger();

        /* renamed from: else, reason: not valid java name */
        public final AtomicLong f34755else = new AtomicLong();

        /* renamed from: rx.internal.operators.f2$if$do, reason: invalid class name */
        public final class Cdo extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = 4625807964358024108L;

            public Cdo() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was " + j);
                }
                if (j != 0) {
                    Cif cif = Cif.this;
                    if (get() || !compareAndSet(false, true)) {
                        Cif.this.request(u6.m8257for(cif.f34756for, j));
                    } else {
                        cif.request(u6.m8255do(u6.m8257for(cif.f34756for, j - 1), cif.f34758if));
                    }
                    u6.m8259if(cif.f34755else, j);
                    cif.m38492try();
                }
            }
        }

        public Cif(y22<? super Observable<T>> y22Var, int i, int i2) {
            this.f34754do = y22Var;
            this.f34758if = i;
            this.f34756for = i2;
            Subscription subscriptionM39225do = rx.subscriptions.Cfor.m39225do(this);
            this.f34761try = subscriptionM39225do;
            add(subscriptionM39225do);
            request(0L);
            this.f34760this = new d12((i + (i2 - 1)) / i2);
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34759new.decrementAndGet() == 0) {
                unsubscribe();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m38490for(boolean z, boolean z2, y22<? super u22<T, T>> y22Var, Queue<u22<T, T>> queue) {
            if (y22Var.isUnsubscribed()) {
                queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.f34749break;
            if (th != null) {
                queue.clear();
                y22Var.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            y22Var.onCompleted();
            return true;
        }

        /* renamed from: new, reason: not valid java name */
        public Producer m38491new() {
            return new Cdo();
        }

        @Override // rx.Observer
        public void onCompleted() {
            Iterator<u22<T, T>> it = this.f34750case.iterator();
            while (it.hasNext()) {
                it.next().onCompleted();
            }
            this.f34750case.clear();
            this.f34751catch = true;
            m38492try();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            Iterator<u22<T, T>> it = this.f34750case.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.f34750case.clear();
            this.f34749break = th;
            this.f34751catch = true;
            m38492try();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f34752class;
            ArrayDeque<u22<T, T>> arrayDeque = this.f34750case;
            if (i == 0 && !this.f34754do.isUnsubscribed()) {
                this.f34759new.getAndIncrement();
                Celse celseI6 = Celse.i6(16, this);
                arrayDeque.offer(celseI6);
                this.f34760this.offer(celseI6);
                m38492try();
            }
            Iterator<u22<T, T>> it = this.f34750case.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            int i2 = this.f34753const + 1;
            if (i2 == this.f34758if) {
                this.f34753const = i2 - this.f34756for;
                u22<T, T> u22VarPoll = arrayDeque.poll();
                if (u22VarPoll != null) {
                    u22VarPoll.onCompleted();
                }
            } else {
                this.f34753const = i2;
            }
            int i3 = i + 1;
            if (i3 == this.f34756for) {
                this.f34752class = 0;
            } else {
                this.f34752class = i3;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: try, reason: not valid java name */
        public void m38492try() {
            AtomicInteger atomicInteger = this.f34757goto;
            if (atomicInteger.getAndIncrement() != 0) {
                return;
            }
            y22<? super Observable<T>> y22Var = this.f34754do;
            Queue<u22<T, T>> queue = this.f34760this;
            int iAddAndGet = 1;
            do {
                long j = this.f34755else.get();
                long j2 = 0;
                while (j2 != j) {
                    boolean z = this.f34751catch;
                    u22<T, T> u22VarPoll = queue.poll();
                    boolean z2 = u22VarPoll == null;
                    if (m38490for(z, z2, y22Var, queue)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    y22Var.onNext(u22VarPoll);
                    j2++;
                }
                if (j2 == j && m38490for(this.f34751catch, queue.isEmpty(), y22Var, queue)) {
                    return;
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    this.f34755else.addAndGet(-j2);
                }
                iAddAndGet = atomicInteger.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }
    }

    public f2(int i, int i2) {
        this.f34733do = i;
        this.f34734if = i2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<T>> y22Var) {
        int i = this.f34734if;
        int i2 = this.f34733do;
        if (i == i2) {
            Cdo cdo = new Cdo(y22Var, i2);
            y22Var.add(cdo.f34739new);
            y22Var.setProducer(cdo.m38484if());
            return cdo;
        }
        if (i > i2) {
            Cfor cfor = new Cfor(y22Var, i2, i);
            y22Var.add(cfor.f34748try);
            y22Var.setProducer(cfor.m38487for());
            return cfor;
        }
        Cif cif = new Cif(y22Var, i2, i);
        y22Var.add(cif.f34761try);
        y22Var.setProducer(cif.m38491new());
        return cif;
    }
}
