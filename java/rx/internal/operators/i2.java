package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class i2<T, U, R> implements Observable.Operator<R, T> {

    /* renamed from: for, reason: not valid java name */
    public static final Object f34916for = new Object();

    /* renamed from: do, reason: not valid java name */
    public final Func2<? super T, ? super U, ? extends R> f34917do;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends U> f34918if;

    /* renamed from: rx.internal.operators.i2$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34919do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f34921if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, boolean z, AtomicReference atomicReference, ax1 ax1Var) {
            super(y22Var, z);
            this.f34919do = atomicReference;
            this.f34921if = ax1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34921if.onCompleted();
            this.f34921if.unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34921if.onError(th);
            this.f34921if.unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            Object obj = this.f34919do.get();
            if (obj != i2.f34916for) {
                try {
                    this.f34921if.onNext(i2.this.f34917do.call(t, obj));
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.i2$if, reason: invalid class name */
    public class Cif extends y22<U> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34922do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ax1 f34924if;

        public Cif(AtomicReference atomicReference, ax1 ax1Var) {
            this.f34922do = atomicReference;
            this.f34924if = ax1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34922do.get() == i2.f34916for) {
                this.f34924if.onCompleted();
                this.f34924if.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34924if.onError(th);
            this.f34924if.unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(U u) {
            this.f34922do.set(u);
        }
    }

    public i2(Observable<? extends U> observable, Func2<? super T, ? super U, ? extends R> func2) {
        this.f34918if = observable;
        this.f34917do = func2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super R> y22Var) {
        ax1 ax1Var = new ax1(y22Var, false);
        y22Var.add(ax1Var);
        AtomicReference atomicReference = new AtomicReference(f34916for);
        Cdo cdo = new Cdo(ax1Var, true, atomicReference, ax1Var);
        Cif cif = new Cif(atomicReference, ax1Var);
        ax1Var.add(cdo);
        ax1Var.add(cif);
        this.f34918if.r5(cif);
        return cdo;
    }
}
