package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class y<T> implements Observable.Operator<List<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f35580do;

    /* renamed from: if, reason: not valid java name */
    public final int f35581if;

    /* renamed from: rx.internal.operators.y$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f35582do;

        /* renamed from: for, reason: not valid java name */
        public List<T> f35583for;

        /* renamed from: if, reason: not valid java name */
        public final int f35584if;

        /* renamed from: rx.internal.operators.y$do$do, reason: invalid class name and collision with other inner class name */
        public class C0542do implements Producer {
            public C0542do() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= required but it was " + j);
                }
                if (j != 0) {
                    Cdo.this.request(u6.m8257for(j, Cdo.this.f35584if));
                }
            }
        }

        public Cdo(y22<? super List<T>> y22Var, int i) {
            this.f35582do = y22Var;
            this.f35584if = i;
            request(0L);
        }

        /* renamed from: if, reason: not valid java name */
        public Producer m38798if() {
            return new C0542do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            List<T> list = this.f35583for;
            if (list != null) {
                this.f35582do.onNext(list);
            }
            this.f35582do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35583for = null;
            this.f35582do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            List arrayList = this.f35583for;
            if (arrayList == null) {
                arrayList = new ArrayList(this.f35584if);
                this.f35583for = arrayList;
            }
            arrayList.add(t);
            if (arrayList.size() == this.f35584if) {
                this.f35583for = null;
                this.f35582do.onNext(arrayList);
            }
        }
    }

    /* renamed from: rx.internal.operators.y$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f35586do;

        /* renamed from: for, reason: not valid java name */
        public final int f35587for;

        /* renamed from: if, reason: not valid java name */
        public final int f35588if;

        /* renamed from: new, reason: not valid java name */
        public long f35589new;

        /* renamed from: try, reason: not valid java name */
        public List<T> f35590try;

        /* renamed from: rx.internal.operators.y$for$do, reason: invalid class name */
        public final class Cdo extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = 3428177408082367154L;

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
                        cfor.request(u6.m8257for(j, cfor.f35587for));
                    } else {
                        cfor.request(u6.m8255do(u6.m8257for(j, cfor.f35588if), u6.m8257for(cfor.f35587for - cfor.f35588if, j - 1)));
                    }
                }
            }
        }

        public Cfor(y22<? super List<T>> y22Var, int i, int i2) {
            this.f35586do = y22Var;
            this.f35588if = i;
            this.f35587for = i2;
            request(0L);
        }

        /* renamed from: for, reason: not valid java name */
        public Producer m38801for() {
            return new Cdo();
        }

        @Override // rx.Observer
        public void onCompleted() {
            List<T> list = this.f35590try;
            if (list != null) {
                this.f35590try = null;
                this.f35586do.onNext(list);
            }
            this.f35586do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35590try = null;
            this.f35586do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j = this.f35589new;
            List arrayList = this.f35590try;
            if (j == 0) {
                arrayList = new ArrayList(this.f35588if);
                this.f35590try = arrayList;
            }
            long j2 = j + 1;
            if (j2 == this.f35587for) {
                this.f35589new = 0L;
            } else {
                this.f35589new = j2;
            }
            if (arrayList != null) {
                arrayList.add(t);
                if (arrayList.size() == this.f35588if) {
                    this.f35590try = null;
                    this.f35586do.onNext(arrayList);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.y$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f35592do;

        /* renamed from: else, reason: not valid java name */
        public long f35593else;

        /* renamed from: for, reason: not valid java name */
        public final int f35594for;

        /* renamed from: if, reason: not valid java name */
        public final int f35595if;

        /* renamed from: new, reason: not valid java name */
        public long f35596new;

        /* renamed from: try, reason: not valid java name */
        public final ArrayDeque<List<T>> f35597try = new ArrayDeque<>();

        /* renamed from: case, reason: not valid java name */
        public final AtomicLong f35591case = new AtomicLong();

        /* renamed from: rx.internal.operators.y$if$do, reason: invalid class name */
        public final class Cdo extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = -4015894850868853147L;

            public Cdo() {
            }

            @Override // rx.Producer
            public void request(long j) {
                Cif cif = Cif.this;
                if (!u6.m8256else(cif.f35591case, j, cif.f35597try, cif.f35592do) || j == 0) {
                    return;
                }
                if (get() || !compareAndSet(false, true)) {
                    cif.request(u6.m8257for(cif.f35594for, j));
                } else {
                    cif.request(u6.m8255do(u6.m8257for(cif.f35594for, j - 1), cif.f35595if));
                }
            }
        }

        public Cif(y22<? super List<T>> y22Var, int i, int i2) {
            this.f35592do = y22Var;
            this.f35595if = i;
            this.f35594for = i2;
            request(0L);
        }

        /* renamed from: for, reason: not valid java name */
        public Producer m38804for() {
            return new Cdo();
        }

        @Override // rx.Observer
        public void onCompleted() {
            long j = this.f35593else;
            if (j != 0) {
                if (j > this.f35591case.get()) {
                    this.f35592do.onError(new zz0("More produced than requested? " + j));
                    return;
                }
                this.f35591case.addAndGet(-j);
            }
            u6.m8260new(this.f35591case, this.f35597try, this.f35592do);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35597try.clear();
            this.f35592do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j = this.f35596new;
            if (j == 0) {
                this.f35597try.offer(new ArrayList(this.f35595if));
            }
            long j2 = j + 1;
            if (j2 == this.f35594for) {
                this.f35596new = 0L;
            } else {
                this.f35596new = j2;
            }
            Iterator<List<T>> it = this.f35597try.iterator();
            while (it.hasNext()) {
                it.next().add(t);
            }
            List<T> listPeek = this.f35597try.peek();
            if (listPeek == null || listPeek.size() != this.f35595if) {
                return;
            }
            this.f35597try.poll();
            this.f35593else++;
            this.f35592do.onNext(listPeek);
        }
    }

    public y(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("skip must be greater than 0");
        }
        this.f35580do = i;
        this.f35581if = i2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        int i = this.f35581if;
        int i2 = this.f35580do;
        if (i == i2) {
            Cdo cdo = new Cdo(y22Var, i2);
            y22Var.add(cdo);
            y22Var.setProducer(cdo.m38798if());
            return cdo;
        }
        if (i > i2) {
            Cfor cfor = new Cfor(y22Var, i2, i);
            y22Var.add(cfor);
            y22Var.setProducer(cfor.m38801for());
            return cfor;
        }
        Cif cif = new Cif(y22Var, i2, i);
        y22Var.add(cif);
        y22Var.setProducer(cif.m38804for());
        return cif;
    }
}
