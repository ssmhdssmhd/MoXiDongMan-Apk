package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;
import rx.observers.Cnew;

/* renamed from: rx.internal.operators.finally, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfinally<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f34768do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f34769for;

    /* renamed from: if, reason: not valid java name */
    public final long f34770if;

    /* renamed from: new, reason: not valid java name */
    public final Cif f34771new;

    /* renamed from: rx.internal.operators.finally$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34772do;

        public Cdo(y22 y22Var) {
            this.f34772do = y22Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34772do.isUnsubscribed()) {
                return;
            }
            Cfinally.this.f34768do.r5(Cnew.m39112case(this.f34772do));
        }
    }

    public Cfinally(Observable<? extends T> observable, long j, TimeUnit timeUnit, Cif cif) {
        this.f34768do = observable;
        this.f34770if = j;
        this.f34769for = timeUnit;
        this.f34771new = cif;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f34771new.mo971do();
        y22Var.add(cdoMo971do);
        cdoMo971do.mo38375for(new Cdo(y22Var), this.f34770if, this.f34769for);
    }
}
