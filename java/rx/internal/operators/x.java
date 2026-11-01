package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.List;
import rx.Observable;
import rx.functions.Func0;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class x<T, TClosing> implements Observable.Operator<List<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func0<? extends Observable<? extends TClosing>> f35553do;

    /* renamed from: if, reason: not valid java name */
    public final int f35554if;

    /* renamed from: rx.internal.operators.x$do, reason: invalid class name */
    public class Cdo implements Func0<Observable<? extends TClosing>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f35555do;

        public Cdo(Observable observable) {
            this.f35555do = observable;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<? extends TClosing> call() {
            return this.f35555do;
        }
    }

    /* renamed from: rx.internal.operators.x$for, reason: invalid class name */
    public final class Cfor extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super List<T>> f35557do;

        /* renamed from: for, reason: not valid java name */
        public boolean f35558for;

        /* renamed from: if, reason: not valid java name */
        public List<T> f35559if;

        public Cfor(y22<? super List<T>> y22Var) {
            this.f35557do = y22Var;
            this.f35559if = new ArrayList(x.this.f35554if);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38786do() {
            synchronized (this) {
                if (this.f35558for) {
                    return;
                }
                List<T> list = this.f35559if;
                this.f35559if = new ArrayList(x.this.f35554if);
                try {
                    this.f35557do.onNext(list);
                } catch (Throwable th) {
                    unsubscribe();
                    synchronized (this) {
                        if (this.f35558for) {
                            return;
                        }
                        this.f35558for = true;
                        s80.m7297goto(th, this.f35557do);
                    }
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.f35558for) {
                        return;
                    }
                    this.f35558for = true;
                    List<T> list = this.f35559if;
                    this.f35559if = null;
                    this.f35557do.onNext(list);
                    this.f35557do.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                s80.m7297goto(th, this.f35557do);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                if (this.f35558for) {
                    return;
                }
                this.f35558for = true;
                this.f35559if = null;
                this.f35557do.onError(th);
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                if (this.f35558for) {
                    return;
                }
                this.f35559if.add(t);
            }
        }
    }

    /* renamed from: rx.internal.operators.x$if, reason: invalid class name */
    public class Cif extends y22<TClosing> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f35561do;

        public Cif(Cfor cfor) {
            this.f35561do = cfor;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35561do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35561do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(TClosing tclosing) {
            this.f35561do.m38786do();
        }
    }

    public x(Func0<? extends Observable<? extends TClosing>> func0, int i) {
        this.f35553do = func0;
        this.f35554if = i;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        try {
            Observable<? extends TClosing> observableCall = this.f35553do.call();
            Cfor cfor = new Cfor(new ax1(y22Var));
            Cif cif = new Cif(cfor);
            y22Var.add(cif);
            y22Var.add(cfor);
            observableCall.r5(cif);
            return cfor;
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
            return Cnew.m39116new();
        }
    }

    public x(Observable<? extends TClosing> observable, int i) {
        this.f35553do = new Cdo(observable);
        this.f35554if = i;
    }
}
