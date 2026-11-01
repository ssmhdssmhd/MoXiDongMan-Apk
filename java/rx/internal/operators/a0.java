package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class a0<T> implements Observable.Operator<List<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f34454do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f34455for;

    /* renamed from: if, reason: not valid java name */
    public final long f34456if;

    /* renamed from: new, reason: not valid java name */
    public final int f34457new;

    /* renamed from: try, reason: not valid java name */
    public final rx.Cif f34458try;

    /* renamed from: rx.internal.operators.a0$do, reason: invalid class name */
    public final class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f34459do;

        /* renamed from: for, reason: not valid java name */
        public List<T> f34460for = new ArrayList();

        /* renamed from: if, reason: not valid java name */
        public final Cif.Cdo f34461if;

        /* renamed from: new, reason: not valid java name */
        public boolean f34462new;

        /* renamed from: rx.internal.operators.a0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0509do implements Action0 {
            public C0509do() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.m38395do();
            }
        }

        public Cdo(y22<? super List<T>> y22Var, Cif.Cdo cdo) {
            this.f34459do = y22Var;
            this.f34461if = cdo;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38395do() {
            synchronized (this) {
                if (this.f34462new) {
                    return;
                }
                List<T> list = this.f34460for;
                this.f34460for = new ArrayList();
                try {
                    this.f34459do.onNext(list);
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38396if() {
            Cif.Cdo cdo = this.f34461if;
            C0509do c0509do = new C0509do();
            a0 a0Var = a0.this;
            long j = a0Var.f34454do;
            cdo.mo38377new(c0509do, j, j, a0Var.f34455for);
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                this.f34461if.unsubscribe();
                synchronized (this) {
                    if (this.f34462new) {
                        return;
                    }
                    this.f34462new = true;
                    List<T> list = this.f34460for;
                    this.f34460for = null;
                    this.f34459do.onNext(list);
                    this.f34459do.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                s80.m7297goto(th, this.f34459do);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.f34462new) {
                    return;
                }
                this.f34462new = true;
                this.f34460for = null;
                this.f34459do.onError(th);
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            List<T> list;
            synchronized (this) {
                if (this.f34462new) {
                    return;
                }
                this.f34460for.add(t);
                if (this.f34460for.size() == a0.this.f34457new) {
                    list = this.f34460for;
                    this.f34460for = new ArrayList();
                } else {
                    list = null;
                }
                if (list != null) {
                    this.f34459do.onNext(list);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.a0$if, reason: invalid class name */
    public final class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f34465do;

        /* renamed from: for, reason: not valid java name */
        public final List<List<T>> f34466for = new LinkedList();

        /* renamed from: if, reason: not valid java name */
        public final Cif.Cdo f34467if;

        /* renamed from: new, reason: not valid java name */
        public boolean f34468new;

        /* renamed from: rx.internal.operators.a0$if$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cif.this.m38398for();
            }
        }

        /* renamed from: rx.internal.operators.a0$if$if, reason: invalid class name and collision with other inner class name */
        public class C0510if implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ List f34471do;

            public C0510if(List list) {
                this.f34471do = list;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cif.this.m38397do(this.f34471do);
            }
        }

        public Cif(y22<? super List<T>> y22Var, Cif.Cdo cdo) {
            this.f34465do = y22Var;
            this.f34467if = cdo;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38397do(List<T> list) {
            boolean z;
            synchronized (this) {
                if (this.f34468new) {
                    return;
                }
                Iterator<List<T>> it = this.f34466for.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next() == list) {
                        it.remove();
                        z = true;
                        break;
                    }
                }
                if (z) {
                    try {
                        this.f34465do.onNext(list);
                    } catch (Throwable th) {
                        s80.m7297goto(th, this);
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38398for() {
            ArrayList arrayList = new ArrayList();
            synchronized (this) {
                if (this.f34468new) {
                    return;
                }
                this.f34466for.add(arrayList);
                Cif.Cdo cdo = this.f34467if;
                C0510if c0510if = new C0510if(arrayList);
                a0 a0Var = a0.this;
                cdo.mo38375for(c0510if, a0Var.f34454do, a0Var.f34455for);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38399if() {
            Cif.Cdo cdo = this.f34467if;
            Cdo cdo2 = new Cdo();
            a0 a0Var = a0.this;
            long j = a0Var.f34456if;
            cdo.mo38377new(cdo2, j, j, a0Var.f34455for);
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.f34468new) {
                        return;
                    }
                    this.f34468new = true;
                    LinkedList linkedList = new LinkedList(this.f34466for);
                    this.f34466for.clear();
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        this.f34465do.onNext((List) it.next());
                    }
                    this.f34465do.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                s80.m7297goto(th, this.f34465do);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.f34468new) {
                    return;
                }
                this.f34468new = true;
                this.f34466for.clear();
                this.f34465do.onError(th);
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                if (this.f34468new) {
                    return;
                }
                Iterator<List<T>> it = this.f34466for.iterator();
                LinkedList linkedList = null;
                while (it.hasNext()) {
                    List<T> next = it.next();
                    next.add(t);
                    if (next.size() == a0.this.f34457new) {
                        it.remove();
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                        }
                        linkedList.add(next);
                    }
                }
                if (linkedList != null) {
                    Iterator it2 = linkedList.iterator();
                    while (it2.hasNext()) {
                        this.f34465do.onNext((List) it2.next());
                    }
                }
            }
        }
    }

    public a0(long j, long j2, TimeUnit timeUnit, int i, rx.Cif cif) {
        this.f34454do = j;
        this.f34456if = j2;
        this.f34455for = timeUnit;
        this.f34457new = i;
        this.f34458try = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        Cif.Cdo cdoMo971do = this.f34458try.mo971do();
        ax1 ax1Var = new ax1(y22Var);
        if (this.f34454do == this.f34456if) {
            Cdo cdo = new Cdo(ax1Var, cdoMo971do);
            cdo.add(cdoMo971do);
            y22Var.add(cdo);
            cdo.m38396if();
            return cdo;
        }
        Cif cif = new Cif(ax1Var, cdoMo971do);
        cif.add(cdoMo971do);
        y22Var.add(cif);
        cif.m38398for();
        cif.m38399if();
        return cif;
    }
}
