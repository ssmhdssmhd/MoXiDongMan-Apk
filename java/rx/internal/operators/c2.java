package rx.internal.operators;

import android.support.v4.y22;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public class c2<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final rx.Cif f34558do;

    /* renamed from: rx.internal.operators.c2$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34559do;

        public Cdo(y22 y22Var) {
            this.f34559do = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34559do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34559do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34559do.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.c2$if, reason: invalid class name */
    public class Cif implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34561do;

        /* renamed from: rx.internal.operators.c2$if$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34563do;

            public Cdo(Cif.Cdo cdo) {
                this.f34563do = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cif.this.f34561do.unsubscribe();
                this.f34563do.unsubscribe();
            }
        }

        public Cif(y22 y22Var) {
            this.f34561do = y22Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            Cif.Cdo cdoMo971do = c2.this.f34558do.mo971do();
            cdoMo971do.mo38376if(new Cdo(cdoMo971do));
        }
    }

    public c2(rx.Cif cif) {
        this.f34558do = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var);
        y22Var.add(Cfor.m39225do(new Cif(cdo)));
        return cdo;
    }
}
