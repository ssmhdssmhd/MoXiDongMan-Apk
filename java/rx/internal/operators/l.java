package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class l<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final long f35032do;

    /* renamed from: for, reason: not valid java name */
    public final Cif f35033for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f35034if;

    /* renamed from: new, reason: not valid java name */
    public final Observable<T> f35035new;

    /* renamed from: rx.internal.operators.l$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35036do;

        /* renamed from: if, reason: not valid java name */
        public volatile boolean f35037if;

        public Cdo(y22<? super T> y22Var) {
            this.f35036do = y22Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f35037if = true;
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                this.f35036do.onCompleted();
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                this.f35036do.onError(th);
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35037if) {
                this.f35036do.onNext(t);
            }
        }
    }

    public l(Observable<T> observable, long j, TimeUnit timeUnit, Cif cif) {
        this.f35035new = observable;
        this.f35032do = j;
        this.f35034if = timeUnit;
        this.f35033for = cif;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f35033for.mo971do();
        Cdo cdo = new Cdo(y22Var);
        cdo.add(cdoMo971do);
        y22Var.add(cdo);
        cdoMo971do.mo38375for(cdo, this.f35032do, this.f35034if);
        this.f35035new.r5(cdo);
    }
}
