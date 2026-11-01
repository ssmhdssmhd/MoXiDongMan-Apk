package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.dq;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observer;
import rx.functions.Func1;
import rx.subjects.Celse;

/* loaded from: classes4.dex */
public final class g2<T, U, V> implements Observable.Operator<Observable<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends U> f34835do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super U, ? extends Observable<? extends V>> f34836if;

    /* renamed from: rx.internal.operators.g2$do, reason: invalid class name */
    public class Cdo extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f34837do;

        public Cdo(Cfor cfor) {
            this.f34837do = cfor;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34837do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34837do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(U u) {
            this.f34837do.m38528do(u);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.g2$for, reason: invalid class name */
    public final class Cfor extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<T>> f34840do;

        /* renamed from: if, reason: not valid java name */
        public final dq f34842if;

        /* renamed from: try, reason: not valid java name */
        public boolean f34844try;

        /* renamed from: for, reason: not valid java name */
        public final Object f34841for = new Object();

        /* renamed from: new, reason: not valid java name */
        public final List<Cif<T>> f34843new = new LinkedList();

        /* renamed from: rx.internal.operators.g2$for$do, reason: invalid class name */
        public class Cdo extends y22<V> {

            /* renamed from: do, reason: not valid java name */
            public boolean f34845do = true;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif f34847if;

            public Cdo(Cif cif) {
                this.f34847if = cif;
            }

            @Override // rx.Observer
            public void onCompleted() {
                if (this.f34845do) {
                    this.f34845do = false;
                    Cfor.this.m38529for(this.f34847if);
                    Cfor.this.f34842if.m1492try(this);
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cfor.this.onError(th);
            }

            @Override // rx.Observer
            public void onNext(V v) {
                onCompleted();
            }
        }

        public Cfor(y22<? super Observable<T>> y22Var, dq dqVar) {
            this.f34840do = new ax1(y22Var);
            this.f34842if = dqVar;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38528do(U u) {
            Cif<T> cifM38530if = m38530if();
            synchronized (this.f34841for) {
                if (this.f34844try) {
                    return;
                }
                this.f34843new.add(cifM38530if);
                this.f34840do.onNext(cifM38530if.f34849if);
                try {
                    Observable<? extends V> observableCall = g2.this.f34836if.call(u);
                    Cdo cdo = new Cdo(cifM38530if);
                    this.f34842if.m1488do(cdo);
                    observableCall.r5(cdo);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38529for(Cif<T> cif) {
            boolean z;
            synchronized (this.f34841for) {
                if (this.f34844try) {
                    return;
                }
                Iterator<Cif<T>> it = this.f34843new.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next() == cif) {
                        z = true;
                        it.remove();
                        break;
                    }
                }
                if (z) {
                    cif.f34848do.onCompleted();
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public Cif<T> m38530if() {
            Celse celseG6 = Celse.g6();
            return new Cif<>(celseG6, celseG6);
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                synchronized (this.f34841for) {
                    if (this.f34844try) {
                        return;
                    }
                    this.f34844try = true;
                    ArrayList arrayList = new ArrayList(this.f34843new);
                    this.f34843new.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Cif) it.next()).f34848do.onCompleted();
                    }
                    this.f34840do.onCompleted();
                }
            } finally {
                this.f34842if.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                synchronized (this.f34841for) {
                    if (this.f34844try) {
                        return;
                    }
                    this.f34844try = true;
                    ArrayList arrayList = new ArrayList(this.f34843new);
                    this.f34843new.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Cif) it.next()).f34848do.onError(th);
                    }
                    this.f34840do.onError(th);
                }
            } finally {
                this.f34842if.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this.f34841for) {
                if (this.f34844try) {
                    return;
                }
                Iterator it = new ArrayList(this.f34843new).iterator();
                while (it.hasNext()) {
                    ((Cif) it.next()).f34848do.onNext(t);
                }
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.g2$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public final Observer<T> f34848do;

        /* renamed from: if, reason: not valid java name */
        public final Observable<T> f34849if;

        public Cif(Observer<T> observer, Observable<T> observable) {
            this.f34848do = new rx.observers.Cfor(observer);
            this.f34849if = observable;
        }
    }

    public g2(Observable<? extends U> observable, Func1<? super U, ? extends Observable<? extends V>> func1) {
        this.f34835do = observable;
        this.f34836if = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<T>> y22Var) {
        dq dqVar = new dq();
        y22Var.add(dqVar);
        Cfor cfor = new Cfor(y22Var, dqVar);
        Cdo cdo = new Cdo(cfor);
        dqVar.m1488do(cfor);
        dqVar.m1488do(cdo);
        this.f34835do.r5(cdo);
        return cfor;
    }
}
