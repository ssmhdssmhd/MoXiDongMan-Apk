package rx.observables;

import android.support.v4.oa;
import android.support.v4.qa;
import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.y61;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.operators.Creturn;

/* renamed from: rx.observables.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif<T> {

    /* renamed from: do, reason: not valid java name */
    private final Observable<? extends T> f36050do;

    /* renamed from: if, reason: not valid java name */
    public static final Object f36048if = new Object();

    /* renamed from: for, reason: not valid java name */
    public static final Object f36047for = new Object();

    /* renamed from: new, reason: not valid java name */
    public static final Object f36049new = new Object();

    /* renamed from: rx.observables.if$case, reason: invalid class name */
    public class Ccase extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ BlockingQueue f36051do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Producer[] f36053if;

        public Ccase(BlockingQueue blockingQueue, Producer[] producerArr) {
            this.f36051do = blockingQueue;
            this.f36053if = producerArr;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36051do.offer(Creturn.m38688if());
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36051do.offer(Creturn.m38686for(th));
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36051do.offer(Creturn.m38682break(t));
        }

        @Override // android.support.v4.y22
        public void onStart() {
            this.f36051do.offer(Cif.f36048if);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f36053if[0] = producer;
            this.f36051do.offer(Cif.f36047for);
        }
    }

    /* renamed from: rx.observables.if$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f36054do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f36055for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f36056if;

        public Cdo(CountDownLatch countDownLatch, AtomicReference atomicReference, Action1 action1) {
            this.f36054do = countDownLatch;
            this.f36056if = atomicReference;
            this.f36055for = action1;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36054do.countDown();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36056if.set(th);
            this.f36054do.countDown();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36055for.call(t);
        }
    }

    /* renamed from: rx.observables.if$else, reason: invalid class name */
    public class Celse implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ BlockingQueue f36058do;

        public Celse(BlockingQueue blockingQueue) {
            this.f36058do = blockingQueue;
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f36058do.offer(Cif.f36049new);
        }
    }

    /* renamed from: rx.observables.if$for, reason: invalid class name */
    public class Cfor extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f36060do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicReference f36061for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f36062if;

        public Cfor(CountDownLatch countDownLatch, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.f36060do = countDownLatch;
            this.f36062if = atomicReference;
            this.f36061for = atomicReference2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36060do.countDown();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36062if.set(th);
            this.f36060do.countDown();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36061for.set(t);
        }
    }

    /* renamed from: rx.observables.if$goto, reason: invalid class name */
    public class Cgoto implements Action1<Throwable> {
        public Cgoto() {
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            throw new y61(th);
        }
    }

    /* renamed from: rx.observables.if$if, reason: invalid class name and collision with other inner class name */
    public class C0561if implements Iterable<T> {
        public C0561if() {
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Cif.this.m39041goto();
        }
    }

    /* renamed from: rx.observables.if$new, reason: invalid class name */
    public class Cnew extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Throwable[] f36066do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f36068if;

        public Cnew(Throwable[] thArr, CountDownLatch countDownLatch) {
            this.f36066do = thArr;
            this.f36068if = countDownLatch;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36068if.countDown();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36066do[0] = th;
            this.f36068if.countDown();
        }

        @Override // rx.Observer
        public void onNext(T t) {
        }
    }

    /* renamed from: rx.observables.if$this, reason: invalid class name */
    public class Cthis implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36069do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action0 f36070for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f36071if;

        public Cthis(Action1 action1, Action1 action12, Action0 action0) {
            this.f36069do = action1;
            this.f36071if = action12;
            this.f36070for = action0;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36070for.call();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36071if.call(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36069do.call(t);
        }
    }

    /* renamed from: rx.observables.if$try, reason: invalid class name */
    public class Ctry extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ BlockingQueue f36073do;

        public Ctry(BlockingQueue blockingQueue) {
            this.f36073do = blockingQueue;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36073do.offer(Creturn.m38688if());
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36073do.offer(Creturn.m38686for(th));
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36073do.offer(Creturn.m38682break(t));
        }
    }

    private Cif(Observable<? extends T> observable) {
        this.f36050do = observable;
    }

    /* renamed from: do, reason: not valid java name */
    private T m39029do(Observable<? extends T> observable) throws InterruptedException {
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        qa.m6449do(countDownLatch, observable.Y3(new Cfor(countDownLatch, atomicReference2, atomicReference)));
        if (atomicReference2.get() != null) {
            s80.m7296for((Throwable) atomicReference2.get());
        }
        return (T) atomicReference.get();
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Cif<T> m39030else(Observable<? extends T> observable) {
        return new Cif<>(observable);
    }

    /* renamed from: break, reason: not valid java name */
    public T m39031break(Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.F1(func1));
    }

    /* renamed from: case, reason: not valid java name */
    public void m39032case(Action1<? super T> action1) throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        qa.m6449do(countDownLatch, this.f36050do.Y3(new Cdo(countDownLatch, atomicReference, action1)));
        if (atomicReference.get() != null) {
            s80.m7296for((Throwable) atomicReference.get());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public T m39033catch(T t) {
        return m39029do(this.f36050do.K1(rx.internal.util.Cthis.m38929for()).G1(t));
    }

    /* renamed from: class, reason: not valid java name */
    public T m39034class(T t, Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.E0(func1).K1(rx.internal.util.Cthis.m38929for()).G1(t));
    }

    /* renamed from: const, reason: not valid java name */
    public Iterable<T> m39035const() {
        return rx.internal.operators.Cdo.m38462do(this.f36050do);
    }

    /* renamed from: default, reason: not valid java name */
    public void m39036default(Action1<? super T> action1, Action1<? super Throwable> action12, Action0 action0) {
        m39048static(new Cthis(action1, action12, action0));
    }

    /* renamed from: extends, reason: not valid java name */
    public Future<T> m39037extends() {
        return rx.internal.operators.Cnew.m38638do(this.f36050do);
    }

    /* renamed from: final, reason: not valid java name */
    public Iterable<T> m39038final(T t) {
        return rx.internal.operators.Cif.m38559do(this.f36050do, t);
    }

    /* renamed from: finally, reason: not valid java name */
    public Iterable<T> m39039finally() {
        return new C0561if();
    }

    /* renamed from: for, reason: not valid java name */
    public T m39040for(Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.H0(func1));
    }

    /* renamed from: goto, reason: not valid java name */
    public Iterator<T> m39041goto() {
        return oa.m5507do(this.f36050do);
    }

    /* renamed from: if, reason: not valid java name */
    public T m39042if() {
        return m39029do(this.f36050do.G0());
    }

    /* renamed from: import, reason: not valid java name */
    public T m39043import(T t) {
        return m39029do(this.f36050do.K1(rx.internal.util.Cthis.m38929for()).A3(t));
    }

    /* renamed from: native, reason: not valid java name */
    public T m39044native(T t, Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.E0(func1).K1(rx.internal.util.Cthis.m38929for()).A3(t));
    }

    /* renamed from: new, reason: not valid java name */
    public T m39045new(T t) {
        return m39029do(this.f36050do.K1(rx.internal.util.Cthis.m38929for()).I0(t));
    }

    /* renamed from: public, reason: not valid java name */
    public void m39046public() throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Throwable[] thArr = {null};
        qa.m6449do(countDownLatch, this.f36050do.Y3(new Cnew(thArr, countDownLatch)));
        Throwable th = thArr[0];
        if (th != null) {
            s80.m7296for(th);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m39047return(y22<? super T> y22Var) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Producer[] producerArr = {null};
        Ccase ccase = new Ccase(linkedBlockingQueue, producerArr);
        y22Var.add(ccase);
        y22Var.add(rx.subscriptions.Cfor.m39225do(new Celse(linkedBlockingQueue)));
        this.f36050do.Y3(ccase);
        while (!y22Var.isUnsubscribed()) {
            try {
                try {
                    Object objPoll = linkedBlockingQueue.poll();
                    if (objPoll == null) {
                        objPoll = linkedBlockingQueue.take();
                    }
                    if (y22Var.isUnsubscribed() || objPoll == f36049new) {
                        break;
                    }
                    if (objPoll == f36048if) {
                        y22Var.onStart();
                    } else if (objPoll == f36047for) {
                        y22Var.setProducer(producerArr[0]);
                    } else if (Creturn.m38684do(y22Var, objPoll)) {
                        return;
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    y22Var.onError(e);
                }
            } finally {
                ccase.unsubscribe();
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m39048static(Observer<? super T> observer) {
        Object objPoll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Subscription subscriptionY3 = this.f36050do.Y3(new Ctry(linkedBlockingQueue));
        do {
            try {
                objPoll = linkedBlockingQueue.poll();
                if (objPoll == null) {
                    objPoll = linkedBlockingQueue.take();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                observer.onError(e);
                return;
            } finally {
                subscriptionY3.unsubscribe();
            }
        } while (!Creturn.m38684do(observer, objPoll));
    }

    /* renamed from: super, reason: not valid java name */
    public Iterable<T> m39049super() {
        return rx.internal.operators.Cfor.m38496do(this.f36050do);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m39050switch(Action1<? super T> action1) {
        m39036default(action1, new Cgoto(), rx.functions.Cdo.m38335do());
    }

    /* renamed from: this, reason: not valid java name */
    public T m39051this() {
        return m39029do(this.f36050do.E1());
    }

    /* renamed from: throw, reason: not valid java name */
    public T m39052throw() {
        return m39029do(this.f36050do.y3());
    }

    /* renamed from: throws, reason: not valid java name */
    public void m39053throws(Action1<? super T> action1, Action1<? super Throwable> action12) {
        m39036default(action1, action12, rx.functions.Cdo.m38335do());
    }

    /* renamed from: try, reason: not valid java name */
    public T m39054try(T t, Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.E0(func1).K1(rx.internal.util.Cthis.m38929for()).I0(t));
    }

    /* renamed from: while, reason: not valid java name */
    public T m39055while(Func1<? super T, Boolean> func1) {
        return m39029do(this.f36050do.z3(func1));
    }
}
