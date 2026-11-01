package rx.internal.operators;

import android.support.v4.u22;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class t0<T, R> extends rx.observables.Cfor<R> {

    /* renamed from: case, reason: not valid java name */
    public final List<y22<? super R>> f35393case;

    /* renamed from: else, reason: not valid java name */
    public y22<T> f35394else;

    /* renamed from: for, reason: not valid java name */
    public final Object f35395for;

    /* renamed from: goto, reason: not valid java name */
    public Subscription f35396goto;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends T> f35397if;

    /* renamed from: new, reason: not valid java name */
    public final Func0<? extends u22<? super T, ? extends R>> f35398new;

    /* renamed from: try, reason: not valid java name */
    public final AtomicReference<u22<? super T, ? extends R>> f35399try;

    /* renamed from: rx.internal.operators.t0$do, reason: invalid class name */
    public class Cdo implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f35400do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ List f35401for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35402if;

        public Cdo(Object obj, AtomicReference atomicReference, List list) {
            this.f35400do = obj;
            this.f35402if = atomicReference;
            this.f35401for = list;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            synchronized (this.f35400do) {
                if (this.f35402if.get() == null) {
                    this.f35401for.add(y22Var);
                } else {
                    ((u22) this.f35402if.get()).r5(y22Var);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.t0$for, reason: invalid class name */
    public class Cfor extends y22<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35403do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f35403do = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35403do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35403do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(R r) {
            this.f35403do.onNext(r);
        }
    }

    /* renamed from: rx.internal.operators.t0$if, reason: invalid class name */
    public class Cif implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35405do;

        public Cif(AtomicReference atomicReference) {
            this.f35405do = atomicReference;
        }

        @Override // rx.functions.Action0
        public void call() {
            synchronized (t0.this.f35395for) {
                if (t0.this.f35396goto == this.f35405do.get()) {
                    t0 t0Var = t0.this;
                    y22<T> y22Var = t0Var.f35394else;
                    t0Var.f35394else = null;
                    t0Var.f35396goto = null;
                    t0Var.f35399try.set(null);
                    if (y22Var != null) {
                        y22Var.unsubscribe();
                    }
                }
            }
        }
    }

    public t0(Observable<? extends T> observable, Func0<? extends u22<? super T, ? extends R>> func0) {
        this(new Object(), new AtomicReference(), new ArrayList(), observable, func0);
    }

    @Override // rx.observables.Cfor
    public void i6(Action1<? super Subscription> action1) {
        y22<T> y22Var;
        synchronized (this.f35395for) {
            if (this.f35394else != null) {
                action1.call(this.f35396goto);
                return;
            }
            u22<? super T, ? extends R> u22VarCall = this.f35398new.call();
            this.f35394else = Cnew.m39117try(u22VarCall);
            AtomicReference atomicReference = new AtomicReference();
            atomicReference.set(rx.subscriptions.Cfor.m39225do(new Cif(atomicReference)));
            this.f35396goto = (Subscription) atomicReference.get();
            for (y22<? super R> y22Var2 : this.f35393case) {
                u22VarCall.r5(new Cfor(y22Var2, y22Var2));
            }
            this.f35393case.clear();
            this.f35399try.set(u22VarCall);
            action1.call(this.f35396goto);
            synchronized (this.f35395for) {
                y22Var = this.f35394else;
            }
            if (y22Var != null) {
                this.f35397if.Y3(y22Var);
            }
        }
    }

    private t0(Object obj, AtomicReference<u22<? super T, ? extends R>> atomicReference, List<y22<? super R>> list, Observable<? extends T> observable, Func0<? extends u22<? super T, ? extends R>> func0) {
        super(new Cdo(obj, atomicReference, list));
        this.f35395for = obj;
        this.f35399try = atomicReference;
        this.f35393case = list;
        this.f35397if = observable;
        this.f35398new = func0;
    }
}
