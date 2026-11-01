package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.Observable;
import rx.Producer;
import rx.functions.FuncN;

/* loaded from: classes4.dex */
public final class j2<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34995do;

    /* renamed from: for, reason: not valid java name */
    public final Iterable<Observable<?>> f34996for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<?>[] f34997if;

    /* renamed from: new, reason: not valid java name */
    public final FuncN<R> f34998new;

    /* renamed from: rx.internal.operators.j2$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public static final Object f34999case = new Object();

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f35000do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicReferenceArray<Object> f35001for;

        /* renamed from: if, reason: not valid java name */
        public final FuncN<R> f35002if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicInteger f35003new;

        /* renamed from: try, reason: not valid java name */
        public boolean f35004try;

        public Cdo(y22<? super R> y22Var, FuncN<R> funcN, int i) {
            this.f35000do = y22Var;
            this.f35002if = funcN;
            AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(i + 1);
            for (int i2 = 0; i2 <= i; i2++) {
                atomicReferenceArray.lazySet(i2, f34999case);
            }
            this.f35001for = atomicReferenceArray;
            this.f35003new = new AtomicInteger(i);
            request(0L);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38585do(int i) {
            if (this.f35001for.get(i) == f34999case) {
                onCompleted();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38586for(int i, Object obj) {
            if (this.f35001for.getAndSet(i, obj) == f34999case) {
                this.f35003new.decrementAndGet();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38587if(int i, Throwable th) {
            onError(th);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35004try) {
                return;
            }
            this.f35004try = true;
            unsubscribe();
            this.f35000do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35004try) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f35004try = true;
            unsubscribe();
            this.f35000do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35004try) {
                return;
            }
            if (this.f35003new.get() != 0) {
                request(1L);
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f35001for;
            int length = atomicReferenceArray.length();
            atomicReferenceArray.lazySet(0, t);
            Object[] objArr = new Object[atomicReferenceArray.length()];
            for (int i = 0; i < length; i++) {
                objArr[i] = atomicReferenceArray.get(i);
            }
            try {
                this.f35000do.onNext(this.f35002if.call(objArr));
            } catch (Throwable th) {
                s80.m7301try(th);
                onError(th);
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            super.setProducer(producer);
            this.f35000do.setProducer(producer);
        }
    }

    /* renamed from: rx.internal.operators.j2$if, reason: invalid class name */
    public static final class Cif extends y22<Object> {

        /* renamed from: do, reason: not valid java name */
        public final Cdo<?, ?> f35005do;

        /* renamed from: if, reason: not valid java name */
        public final int f35006if;

        public Cif(Cdo<?, ?> cdo, int i) {
            this.f35005do = cdo;
            this.f35006if = i;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35005do.m38585do(this.f35006if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35005do.m38587if(this.f35006if, th);
        }

        @Override // rx.Observer
        public void onNext(Object obj) {
            this.f35005do.m38586for(this.f35006if, obj);
        }
    }

    public j2(Observable<T> observable, Observable<?>[] observableArr, Iterable<Observable<?>> iterable, FuncN<R> funcN) {
        this.f34995do = observable;
        this.f34997if = observableArr;
        this.f34996for = iterable;
        this.f34998new = funcN;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        int length;
        ax1 ax1Var = new ax1(y22Var);
        Observable<?>[] observableArr = this.f34997if;
        int i = 0;
        if (observableArr != null) {
            length = observableArr.length;
        } else {
            observableArr = new Observable[8];
            int i2 = 0;
            for (Observable<?> observable : this.f34996for) {
                if (i2 == observableArr.length) {
                    observableArr = (Observable[]) Arrays.copyOf(observableArr, (i2 >> 2) + i2);
                }
                observableArr[i2] = observable;
                i2++;
            }
            length = i2;
        }
        Cdo cdo = new Cdo(y22Var, this.f34998new, length);
        ax1Var.add(cdo);
        while (i < length) {
            if (ax1Var.isUnsubscribed()) {
                return;
            }
            int i3 = i + 1;
            Cif cif = new Cif(cdo, i3);
            cdo.add(cif);
            observableArr[i].r5(cif);
            i = i3;
        }
        this.f34995do.r5(cdo);
    }
}
