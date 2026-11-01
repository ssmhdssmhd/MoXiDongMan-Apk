package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class o implements Observable.OnSubscribe<Long> {

    /* renamed from: do, reason: not valid java name */
    public final long f35168do;

    /* renamed from: for, reason: not valid java name */
    public final Cif f35169for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f35170if;

    /* renamed from: rx.internal.operators.o$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35171do;

        public Cdo(y22 y22Var) {
            this.f35171do = y22Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                this.f35171do.onNext(0L);
                this.f35171do.onCompleted();
            } catch (Throwable th) {
                s80.m7297goto(th, this.f35171do);
            }
        }
    }

    public o(long j, TimeUnit timeUnit, Cif cif) {
        this.f35168do = j;
        this.f35170if = timeUnit;
        this.f35169for = cif;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super Long> y22Var) {
        Cif.Cdo cdoMo971do = this.f35169for.mo971do();
        y22Var.add(cdoMo971do);
        cdoMo971do.mo38375for(new Cdo(y22Var), this.f35168do, this.f35170if);
    }
}
