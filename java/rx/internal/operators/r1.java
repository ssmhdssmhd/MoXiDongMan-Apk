package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class r1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f35301do;

    /* renamed from: for, reason: not valid java name */
    public final Cif f35302for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f35303if;

    /* renamed from: rx.internal.operators.r1$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35304do;

        public Cdo(y22<? super T> y22Var) {
            super(y22Var);
            this.f35304do = y22Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            onCompleted();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35304do.onCompleted();
            unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35304do.onError(th);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35304do.onNext(t);
        }
    }

    public r1(long j, TimeUnit timeUnit, Cif cif) {
        this.f35301do = j;
        this.f35303if = timeUnit;
        this.f35302for = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f35302for.mo971do();
        y22Var.add(cdoMo971do);
        Cdo cdo = new Cdo(new ax1(y22Var));
        cdoMo971do.mo38375for(cdo, this.f35301do, this.f35303if);
        return cdo;
    }
}
