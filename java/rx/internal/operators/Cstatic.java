package rx.internal.operators;

import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;

/* renamed from: rx.internal.operators.static, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cstatic<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends Observable<? extends T>> f35353do;

    /* renamed from: rx.internal.operators.static$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew f35354do;

        public Cdo(Cnew cnew) {
            this.f35354do = cnew;
        }

        @Override // rx.functions.Action0
        public void call() {
            Cfor<T> cfor = this.f35354do.get();
            if (cfor != null) {
                cfor.unsubscribe();
            }
            Cstatic.m38719catch(this.f35354do.ambSubscribers);
        }
    }

    /* renamed from: rx.internal.operators.static$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f35356do;

        /* renamed from: for, reason: not valid java name */
        private boolean f35357for;

        /* renamed from: if, reason: not valid java name */
        private final Cnew<T> f35358if;

        public Cfor(long j, y22<? super T> y22Var, Cnew<T> cnew) {
            this.f35356do = y22Var;
            this.f35358if = cnew;
            request(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public void m38730for(long j) {
            request(j);
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m38731if() {
            if (this.f35357for) {
                return true;
            }
            if (this.f35358if.get() == this) {
                this.f35357for = true;
                return true;
            }
            if (!this.f35358if.compareAndSet(null, this)) {
                this.f35358if.unsubscribeLosers();
                return false;
            }
            this.f35358if.unsubscribeOthers(this);
            this.f35357for = true;
            return true;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (m38731if()) {
                this.f35356do.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (m38731if()) {
                this.f35356do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (m38731if()) {
                this.f35356do.onNext(t);
            }
        }
    }

    /* renamed from: rx.internal.operators.static$if, reason: invalid class name */
    public class Cif implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew f35359do;

        public Cif(Cnew cnew) {
            this.f35359do = cnew;
        }

        @Override // rx.Producer
        public void request(long j) {
            Cfor<T> cfor = this.f35359do.get();
            if (cfor != null) {
                cfor.m38730for(j);
                return;
            }
            for (Cfor<T> cfor2 : this.f35359do.ambSubscribers) {
                if (!cfor2.isUnsubscribed()) {
                    if (this.f35359do.get() == cfor2) {
                        cfor2.m38730for(j);
                        return;
                    }
                    cfor2.m38730for(j);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.static$new, reason: invalid class name */
    public static final class Cnew<T> extends AtomicReference<Cfor<T>> {
        public final Collection<Cfor<T>> ambSubscribers = new ConcurrentLinkedQueue();

        public void unsubscribeLosers() {
            Cfor<T> cfor = get();
            if (cfor != null) {
                unsubscribeOthers(cfor);
            }
        }

        public void unsubscribeOthers(Cfor<T> cfor) {
            for (Cfor<T> cfor2 : this.ambSubscribers) {
                if (cfor2 != cfor) {
                    cfor2.unsubscribe();
                }
            }
            this.ambSubscribers.clear();
        }
    }

    private Cstatic(Iterable<? extends Observable<? extends T>> iterable) {
        this.f35353do = iterable;
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38718case(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        return m38720do(arrayList);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> void m38719catch(Collection<Cfor<T>> collection) {
        if (collection.isEmpty()) {
            return;
        }
        Iterator<Cfor<T>> it = collection.iterator();
        while (it.hasNext()) {
            it.next().unsubscribe();
        }
        collection.clear();
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38720do(Iterable<? extends Observable<? extends T>> iterable) {
        return new Cstatic(iterable);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38721else(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        return m38720do(arrayList);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38722for(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        return m38720do(arrayList);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38723goto(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        arrayList.add(observable8);
        return m38720do(arrayList);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38724if(Observable<? extends T> observable, Observable<? extends T> observable2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        return m38720do(arrayList);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38725new(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        return m38720do(arrayList);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38726this(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        arrayList.add(observable8);
        arrayList.add(observable9);
        return m38720do(arrayList);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Observable.OnSubscribe<T> m38727try(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        return m38720do(arrayList);
    }

    @Override // rx.functions.Action1
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cnew cnew = new Cnew();
        y22Var.add(rx.subscriptions.Cfor.m39225do(new Cdo(cnew)));
        for (Observable<? extends T> observable : this.f35353do) {
            if (y22Var.isUnsubscribed()) {
                break;
            }
            Cfor<T> cfor = new Cfor<>(0L, y22Var, cnew);
            cnew.ambSubscribers.add(cfor);
            Cfor<T> cfor2 = cnew.get();
            if (cfor2 != null) {
                cnew.unsubscribeOthers(cfor2);
                return;
            }
            observable.r5(cfor);
        }
        if (y22Var.isUnsubscribed()) {
            m38719catch(cnew.ambSubscribers);
        }
        y22Var.setProducer(new Cif(cnew));
    }
}
