package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import rx.Observable;
import rx.Observer;
import rx.Subscription;
import rx.functions.Func1;
import rx.functions.Func2;

/* renamed from: rx.internal.operators.instanceof, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cinstanceof<T1, T2, D1, D2, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T1> f34940do;

    /* renamed from: for, reason: not valid java name */
    public final Func1<? super T1, ? extends Observable<D1>> f34941for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<T2> f34942if;

    /* renamed from: new, reason: not valid java name */
    public final Func1<? super T2, ? extends Observable<D2>> f34943new;

    /* renamed from: try, reason: not valid java name */
    public final Func2<? super T1, ? super Observable<T2>, ? extends R> f34944try;

    /* renamed from: rx.internal.operators.instanceof$do, reason: invalid class name */
    public final class Cdo extends HashMap<Integer, Observer<T2>> implements Subscription {
        private static final long serialVersionUID = -3035156013812425335L;
        public final rx.subscriptions.Cif cancel;
        public final dq group;
        public boolean leftDone;
        public int leftIds;
        public boolean rightDone;
        public int rightIds;
        public final Map<Integer, T2> rightMap = new HashMap();
        public final y22<? super R> subscriber;

        /* renamed from: rx.internal.operators.instanceof$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0528do extends y22<D1> {

            /* renamed from: do, reason: not valid java name */
            public final int f34945do;

            /* renamed from: if, reason: not valid java name */
            public boolean f34947if = true;

            public C0528do(int i) {
                this.f34945do = i;
            }

            @Override // rx.Observer
            public void onCompleted() {
                Observer<T2> observerRemove;
                if (this.f34947if) {
                    this.f34947if = false;
                    synchronized (Cdo.this) {
                        observerRemove = Cdo.this.leftMap().remove(Integer.valueOf(this.f34945do));
                    }
                    if (observerRemove != null) {
                        observerRemove.onCompleted();
                    }
                    Cdo.this.group.m1492try(this);
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.errorMain(th);
            }

            @Override // rx.Observer
            public void onNext(D1 d1) {
                onCompleted();
            }
        }

        /* renamed from: rx.internal.operators.instanceof$do$for, reason: invalid class name */
        public final class Cfor extends y22<D2> {

            /* renamed from: do, reason: not valid java name */
            public final int f34948do;

            /* renamed from: if, reason: not valid java name */
            public boolean f34950if = true;

            public Cfor(int i) {
                this.f34948do = i;
            }

            @Override // rx.Observer
            public void onCompleted() {
                if (this.f34950if) {
                    this.f34950if = false;
                    synchronized (Cdo.this) {
                        Cdo.this.rightMap.remove(Integer.valueOf(this.f34948do));
                    }
                    Cdo.this.group.m1492try(this);
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.errorMain(th);
            }

            @Override // rx.Observer
            public void onNext(D2 d2) {
                onCompleted();
            }
        }

        /* renamed from: rx.internal.operators.instanceof$do$if, reason: invalid class name */
        public final class Cif extends y22<T1> {
            public Cif() {
            }

            @Override // rx.Observer
            public void onCompleted() {
                ArrayList arrayList;
                synchronized (Cdo.this) {
                    Cdo cdo = Cdo.this;
                    cdo.leftDone = true;
                    if (cdo.rightDone) {
                        arrayList = new ArrayList(Cdo.this.leftMap().values());
                        Cdo.this.leftMap().clear();
                        Cdo.this.rightMap.clear();
                    } else {
                        arrayList = null;
                    }
                }
                Cdo.this.complete(arrayList);
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.errorAll(th);
            }

            @Override // rx.Observer
            public void onNext(T1 t1) {
                int i;
                ArrayList arrayList;
                try {
                    rx.subjects.Cfor cforG6 = rx.subjects.Cfor.g6();
                    rx.observers.Cfor cfor = new rx.observers.Cfor(cforG6);
                    synchronized (Cdo.this) {
                        Cdo cdo = Cdo.this;
                        i = cdo.leftIds;
                        cdo.leftIds = i + 1;
                        cdo.leftMap().put(Integer.valueOf(i), cfor);
                    }
                    Observable observableQ5 = Observable.q5(new Cif(cforG6, Cdo.this.cancel));
                    Observable<D1> observableCall = Cinstanceof.this.f34941for.call(t1);
                    C0528do c0528do = Cdo.this.new C0528do(i);
                    Cdo.this.group.m1488do(c0528do);
                    observableCall.r5(c0528do);
                    R rCall = Cinstanceof.this.f34944try.call(t1, observableQ5);
                    synchronized (Cdo.this) {
                        arrayList = new ArrayList(Cdo.this.rightMap.values());
                    }
                    Cdo.this.subscriber.onNext(rCall);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        cfor.onNext(it.next());
                    }
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        /* renamed from: rx.internal.operators.instanceof$do$new, reason: invalid class name */
        public final class Cnew extends y22<T2> {
            public Cnew() {
            }

            @Override // rx.Observer
            public void onCompleted() {
                ArrayList arrayList;
                synchronized (Cdo.this) {
                    Cdo cdo = Cdo.this;
                    cdo.rightDone = true;
                    if (cdo.leftDone) {
                        arrayList = new ArrayList(Cdo.this.leftMap().values());
                        Cdo.this.leftMap().clear();
                        Cdo.this.rightMap.clear();
                    } else {
                        arrayList = null;
                    }
                }
                Cdo.this.complete(arrayList);
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.errorAll(th);
            }

            @Override // rx.Observer
            public void onNext(T2 t2) {
                int i;
                ArrayList arrayList;
                try {
                    synchronized (Cdo.this) {
                        Cdo cdo = Cdo.this;
                        i = cdo.rightIds;
                        cdo.rightIds = i + 1;
                        cdo.rightMap.put(Integer.valueOf(i), t2);
                    }
                    Observable<D2> observableCall = Cinstanceof.this.f34943new.call(t2);
                    Cfor cfor = Cdo.this.new Cfor(i);
                    Cdo.this.group.m1488do(cfor);
                    observableCall.r5(cfor);
                    synchronized (Cdo.this) {
                        arrayList = new ArrayList(Cdo.this.leftMap().values());
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Observer) it.next()).onNext(t2);
                    }
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        public Cdo(y22<? super R> y22Var) {
            this.subscriber = y22Var;
            dq dqVar = new dq();
            this.group = dqVar;
            this.cancel = new rx.subscriptions.Cif(dqVar);
        }

        public void complete(List<Observer<T2>> list) {
            if (list != null) {
                Iterator<Observer<T2>> it = list.iterator();
                while (it.hasNext()) {
                    it.next().onCompleted();
                }
                this.subscriber.onCompleted();
                this.cancel.unsubscribe();
            }
        }

        public void errorAll(Throwable th) {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(leftMap().values());
                leftMap().clear();
                this.rightMap.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Observer) it.next()).onError(th);
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        public void errorMain(Throwable th) {
            synchronized (this) {
                leftMap().clear();
                this.rightMap.clear();
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        public void init() {
            Cif cif = new Cif();
            Cnew cnew = new Cnew();
            this.group.m1488do(cif);
            this.group.m1488do(cnew);
            Cinstanceof.this.f34940do.r5(cif);
            Cinstanceof.this.f34942if.r5(cnew);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancel.isUnsubscribed();
        }

        public Map<Integer, Observer<T2>> leftMap() {
            return this;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.cancel.unsubscribe();
        }
    }

    /* renamed from: rx.internal.operators.instanceof$if, reason: invalid class name */
    public static final class Cif<T> implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final rx.subscriptions.Cif f34953do;

        /* renamed from: if, reason: not valid java name */
        public final Observable<T> f34954if;

        /* renamed from: rx.internal.operators.instanceof$if$do, reason: invalid class name */
        public final class Cdo extends y22<T> {

            /* renamed from: do, reason: not valid java name */
            public final y22<? super T> f34955do;

            /* renamed from: if, reason: not valid java name */
            private final Subscription f34957if;

            public Cdo(y22<? super T> y22Var, Subscription subscription) {
                super(y22Var);
                this.f34955do = y22Var;
                this.f34957if = subscription;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f34955do.onCompleted();
                this.f34957if.unsubscribe();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f34955do.onError(th);
                this.f34957if.unsubscribe();
            }

            @Override // rx.Observer
            public void onNext(T t) {
                this.f34955do.onNext(t);
            }
        }

        public Cif(Observable<T> observable, rx.subscriptions.Cif cif) {
            this.f34953do = cif;
            this.f34954if = observable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            Subscription subscriptionM39231do = this.f34953do.m39231do();
            Cdo cdo = new Cdo(y22Var, subscriptionM39231do);
            cdo.add(subscriptionM39231do);
            this.f34954if.r5(cdo);
        }
    }

    public Cinstanceof(Observable<T1> observable, Observable<T2> observable2, Func1<? super T1, ? extends Observable<D1>> func1, Func1<? super T2, ? extends Observable<D2>> func12, Func2<? super T1, ? super Observable<T2>, ? extends R> func2) {
        this.f34940do = observable;
        this.f34942if = observable2;
        this.f34941for = func1;
        this.f34943new = func12;
        this.f34944try = func2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        Cdo cdo = new Cdo(new ax1(y22Var));
        y22Var.add(cdo);
        cdo.init();
    }
}
