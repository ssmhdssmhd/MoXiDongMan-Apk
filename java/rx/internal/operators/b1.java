package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class b1<T, U> implements Observable.Operator<T, T> {

    /* renamed from: if, reason: not valid java name */
    public static final Object f34512if = new Object();

    /* renamed from: do, reason: not valid java name */
    public final Observable<U> f34513do;

    /* renamed from: rx.internal.operators.b1$do, reason: invalid class name */
    public class Cdo extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34514do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34515for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f34516if;

        public Cdo(AtomicReference atomicReference, ax1 ax1Var, AtomicReference atomicReference2) {
            this.f34514do = atomicReference;
            this.f34516if = ax1Var;
            this.f34515for = atomicReference2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            onNext(null);
            this.f34516if.onCompleted();
            ((Subscription) this.f34515for.get()).unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34516if.onError(th);
            ((Subscription) this.f34515for.get()).unsubscribe();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.Observer
        public void onNext(U u) {
            AtomicReference atomicReference = this.f34514do;
            Object obj = b1.f34512if;
            Object andSet = atomicReference.getAndSet(obj);
            if (andSet != obj) {
                this.f34516if.onNext(andSet);
            }
        }
    }

    /* renamed from: rx.internal.operators.b1$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34518do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f34519for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f34520if;

        public Cif(AtomicReference atomicReference, ax1 ax1Var, y22 y22Var) {
            this.f34518do = atomicReference;
            this.f34520if = ax1Var;
            this.f34519for = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34519for.onNext(null);
            this.f34520if.onCompleted();
            this.f34519for.unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34520if.onError(th);
            this.f34519for.unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34518do.set(t);
        }
    }

    public b1(Observable<U> observable) {
        this.f34513do = observable;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var);
        AtomicReference atomicReference = new AtomicReference(f34512if);
        AtomicReference atomicReference2 = new AtomicReference();
        Cdo cdo = new Cdo(atomicReference, ax1Var, atomicReference2);
        Cif cif = new Cif(atomicReference, ax1Var, cdo);
        atomicReference2.lazySet(cif);
        y22Var.add(cif);
        y22Var.add(cdo);
        this.f34513do.r5(cdo);
        return cif;
    }
}
