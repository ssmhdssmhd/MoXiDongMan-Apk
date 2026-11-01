package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import rx.Observable;
import rx.Subscription;
import rx.functions.Func1;
import rx.functions.Func2;

/* renamed from: rx.internal.operators.synchronized, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Csynchronized<TLeft, TRight, TLeftDuration, TRightDuration, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<TLeft> f35376do;

    /* renamed from: for, reason: not valid java name */
    public final Func1<TLeft, Observable<TLeftDuration>> f35377for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<TRight> f35378if;

    /* renamed from: new, reason: not valid java name */
    public final Func1<TRight, Observable<TRightDuration>> f35379new;

    /* renamed from: try, reason: not valid java name */
    public final Func2<TLeft, TRight, R> f35380try;

    /* renamed from: rx.internal.operators.synchronized$do, reason: invalid class name */
    public final class Cdo extends HashMap<Integer, TLeft> {
        private static final long serialVersionUID = 3491669543549085380L;
        public boolean leftDone;
        public int leftId;
        public boolean rightDone;
        public int rightId;
        public final y22<? super R> subscriber;
        public final dq group = new dq();
        public final Map<Integer, TRight> rightMap = new HashMap();

        /* renamed from: rx.internal.operators.synchronized$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0535do extends y22<TLeft> {

            /* renamed from: rx.internal.operators.synchronized$do$do$do, reason: invalid class name and collision with other inner class name */
            public final class C0536do extends y22<TLeftDuration> {

                /* renamed from: do, reason: not valid java name */
                public final int f35382do;

                /* renamed from: if, reason: not valid java name */
                public boolean f35384if = true;

                public C0536do(int i) {
                    this.f35382do = i;
                }

                @Override // rx.Observer
                public void onCompleted() {
                    if (this.f35384if) {
                        this.f35384if = false;
                        C0535do.this.m38737do(this.f35382do, this);
                    }
                }

                @Override // rx.Observer
                public void onError(Throwable th) {
                    C0535do.this.onError(th);
                }

                @Override // rx.Observer
                public void onNext(TLeftDuration tleftduration) {
                    onCompleted();
                }
            }

            public C0535do() {
            }

            /* renamed from: do, reason: not valid java name */
            public void m38737do(int i, Subscription subscription) {
                boolean z;
                synchronized (Cdo.this) {
                    z = Cdo.this.leftMap().remove(Integer.valueOf(i)) != null && Cdo.this.leftMap().isEmpty() && Cdo.this.leftDone;
                }
                if (!z) {
                    Cdo.this.group.m1492try(subscription);
                } else {
                    Cdo.this.subscriber.onCompleted();
                    Cdo.this.subscriber.unsubscribe();
                }
            }

            @Override // rx.Observer
            public void onCompleted() {
                boolean z;
                synchronized (Cdo.this) {
                    Cdo cdo = Cdo.this;
                    z = true;
                    cdo.leftDone = true;
                    if (!cdo.rightDone && !cdo.leftMap().isEmpty()) {
                        z = false;
                    }
                }
                if (!z) {
                    Cdo.this.group.m1492try(this);
                } else {
                    Cdo.this.subscriber.onCompleted();
                    Cdo.this.subscriber.unsubscribe();
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.subscriber.onError(th);
                Cdo.this.subscriber.unsubscribe();
            }

            @Override // rx.Observer
            public void onNext(TLeft tleft) {
                int i;
                Cdo cdo;
                int i2;
                synchronized (Cdo.this) {
                    Cdo cdo2 = Cdo.this;
                    i = cdo2.leftId;
                    cdo2.leftId = i + 1;
                    cdo2.leftMap().put(Integer.valueOf(i), tleft);
                    cdo = Cdo.this;
                    i2 = cdo.rightId;
                }
                try {
                    Observable<TLeftDuration> observableCall = Csynchronized.this.f35377for.call(tleft);
                    C0536do c0536do = new C0536do(i);
                    Cdo.this.group.m1488do(c0536do);
                    observableCall.r5(c0536do);
                    ArrayList arrayList = new ArrayList();
                    synchronized (Cdo.this) {
                        for (Map.Entry<Integer, TRight> entry : Cdo.this.rightMap.entrySet()) {
                            if (entry.getKey().intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Cdo.this.subscriber.onNext(Csynchronized.this.f35380try.call(tleft, it.next()));
                    }
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        /* renamed from: rx.internal.operators.synchronized$do$if, reason: invalid class name */
        public final class Cif extends y22<TRight> {

            /* renamed from: rx.internal.operators.synchronized$do$if$do, reason: invalid class name and collision with other inner class name */
            public final class C0537do extends y22<TRightDuration> {

                /* renamed from: do, reason: not valid java name */
                public final int f35386do;

                /* renamed from: if, reason: not valid java name */
                public boolean f35388if = true;

                public C0537do(int i) {
                    this.f35386do = i;
                }

                @Override // rx.Observer
                public void onCompleted() {
                    if (this.f35388if) {
                        this.f35388if = false;
                        Cif.this.m38738do(this.f35386do, this);
                    }
                }

                @Override // rx.Observer
                public void onError(Throwable th) {
                    Cif.this.onError(th);
                }

                @Override // rx.Observer
                public void onNext(TRightDuration trightduration) {
                    onCompleted();
                }
            }

            public Cif() {
            }

            /* renamed from: do, reason: not valid java name */
            public void m38738do(int i, Subscription subscription) {
                boolean z;
                synchronized (Cdo.this) {
                    z = Cdo.this.rightMap.remove(Integer.valueOf(i)) != null && Cdo.this.rightMap.isEmpty() && Cdo.this.rightDone;
                }
                if (!z) {
                    Cdo.this.group.m1492try(subscription);
                } else {
                    Cdo.this.subscriber.onCompleted();
                    Cdo.this.subscriber.unsubscribe();
                }
            }

            @Override // rx.Observer
            public void onCompleted() {
                boolean z;
                synchronized (Cdo.this) {
                    Cdo cdo = Cdo.this;
                    z = true;
                    cdo.rightDone = true;
                    if (!cdo.leftDone && !cdo.rightMap.isEmpty()) {
                        z = false;
                    }
                }
                if (!z) {
                    Cdo.this.group.m1492try(this);
                } else {
                    Cdo.this.subscriber.onCompleted();
                    Cdo.this.subscriber.unsubscribe();
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.subscriber.onError(th);
                Cdo.this.subscriber.unsubscribe();
            }

            @Override // rx.Observer
            public void onNext(TRight tright) {
                int i;
                int i2;
                synchronized (Cdo.this) {
                    Cdo cdo = Cdo.this;
                    i = cdo.rightId;
                    cdo.rightId = i + 1;
                    cdo.rightMap.put(Integer.valueOf(i), tright);
                    i2 = Cdo.this.leftId;
                }
                Cdo.this.group.m1488do(new ww1());
                try {
                    Observable<TRightDuration> observableCall = Csynchronized.this.f35379new.call(tright);
                    C0537do c0537do = new C0537do(i);
                    Cdo.this.group.m1488do(c0537do);
                    observableCall.r5(c0537do);
                    ArrayList arrayList = new ArrayList();
                    synchronized (Cdo.this) {
                        for (Map.Entry<Integer, TLeft> entry : Cdo.this.leftMap().entrySet()) {
                            if (entry.getKey().intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Cdo.this.subscriber.onNext(Csynchronized.this.f35380try.call(it.next(), tright));
                    }
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        public Cdo(y22<? super R> y22Var) {
            this.subscriber = y22Var;
        }

        public HashMap<Integer, TLeft> leftMap() {
            return this;
        }

        public void run() {
            this.subscriber.add(this.group);
            C0535do c0535do = new C0535do();
            Cif cif = new Cif();
            this.group.m1488do(c0535do);
            this.group.m1488do(cif);
            Csynchronized.this.f35376do.r5(c0535do);
            Csynchronized.this.f35378if.r5(cif);
        }
    }

    public Csynchronized(Observable<TLeft> observable, Observable<TRight> observable2, Func1<TLeft, Observable<TLeftDuration>> func1, Func1<TRight, Observable<TRightDuration>> func12, Func2<TLeft, TRight, R> func2) {
        this.f35376do = observable;
        this.f35378if = observable2;
        this.f35377for = func1;
        this.f35379new = func12;
        this.f35380try = func2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        new Cdo(new ax1(y22Var)).run();
    }
}
