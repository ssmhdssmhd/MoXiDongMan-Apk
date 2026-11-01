package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class z<T, TOpening, TClosing> implements Observable.Operator<List<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends TOpening> f35625do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super TOpening, ? extends Observable<? extends TClosing>> f35626if;

    /* renamed from: rx.internal.operators.z$do, reason: invalid class name */
    public class Cdo extends y22<TOpening> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35627do;

        public Cdo(Cif cif) {
            this.f35627do = cif;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35627do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35627do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(TOpening topening) {
            this.f35627do.m38818if(topening);
        }
    }

    /* renamed from: rx.internal.operators.z$if, reason: invalid class name */
    public final class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f35629do;

        /* renamed from: for, reason: not valid java name */
        public boolean f35630for;

        /* renamed from: if, reason: not valid java name */
        public final List<List<T>> f35631if = new LinkedList();

        /* renamed from: new, reason: not valid java name */
        public final dq f35632new;

        /* renamed from: rx.internal.operators.z$if$do, reason: invalid class name */
        public class Cdo extends y22<TClosing> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ List f35634do;

            public Cdo(List list) {
                this.f35634do = list;
            }

            @Override // rx.Observer
            public void onCompleted() {
                Cif.this.f35632new.m1492try(this);
                Cif.this.m38817do(this.f35634do);
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cif.this.onError(th);
            }

            @Override // rx.Observer
            public void onNext(TClosing tclosing) {
                Cif.this.f35632new.m1492try(this);
                Cif.this.m38817do(this.f35634do);
            }
        }

        public Cif(y22<? super List<T>> y22Var) {
            this.f35629do = y22Var;
            dq dqVar = new dq();
            this.f35632new = dqVar;
            add(dqVar);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38817do(List<T> list) {
            boolean z;
            synchronized (this) {
                if (this.f35630for) {
                    return;
                }
                Iterator<List<T>> it = this.f35631if.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (it.next() == list) {
                        z = true;
                        it.remove();
                        break;
                    }
                }
                if (z) {
                    this.f35629do.onNext(list);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38818if(TOpening topening) {
            ArrayList arrayList = new ArrayList();
            synchronized (this) {
                if (this.f35630for) {
                    return;
                }
                this.f35631if.add(arrayList);
                try {
                    Observable<? extends TClosing> observableCall = z.this.f35626if.call(topening);
                    Cdo cdo = new Cdo(arrayList);
                    this.f35632new.m1488do(cdo);
                    observableCall.r5(cdo);
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.f35630for) {
                        return;
                    }
                    this.f35630for = true;
                    LinkedList linkedList = new LinkedList(this.f35631if);
                    this.f35631if.clear();
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        this.f35629do.onNext((List) it.next());
                    }
                    this.f35629do.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                s80.m7297goto(th, this.f35629do);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.f35630for) {
                    return;
                }
                this.f35630for = true;
                this.f35631if.clear();
                this.f35629do.onError(th);
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                Iterator<List<T>> it = this.f35631if.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }
    }

    public z(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        this.f35625do = observable;
        this.f35626if = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        Cif cif = new Cif(new ax1(y22Var));
        Cdo cdo = new Cdo(cif);
        y22Var.add(cdo);
        y22Var.add(cif);
        this.f35625do.r5(cdo);
        return cif;
    }
}
