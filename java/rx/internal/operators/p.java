package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class p implements Observable.OnSubscribe<Long> {

    /* renamed from: do, reason: not valid java name */
    public final long f35190do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f35191for;

    /* renamed from: if, reason: not valid java name */
    public final long f35192if;

    /* renamed from: new, reason: not valid java name */
    public final Cif f35193new;

    /* renamed from: rx.internal.operators.p$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public long f35194do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f35195for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35196if;

        public Cdo(y22 y22Var, Cif.Cdo cdo) {
            this.f35196if = y22Var;
            this.f35195for = cdo;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                y22 y22Var = this.f35196if;
                long j = this.f35194do;
                this.f35194do = 1 + j;
                y22Var.onNext(Long.valueOf(j));
            } catch (Throwable th) {
                try {
                    this.f35195for.unsubscribe();
                } finally {
                    s80.m7297goto(th, this.f35196if);
                }
            }
        }
    }

    public p(long j, long j2, TimeUnit timeUnit, Cif cif) {
        this.f35190do = j;
        this.f35192if = j2;
        this.f35191for = timeUnit;
        this.f35193new = cif;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super Long> y22Var) {
        Cif.Cdo cdoMo971do = this.f35193new.mo971do();
        y22Var.add(cdoMo971do);
        cdoMo971do.mo38377new(new Cdo(y22Var, cdoMo971do), this.f35190do, this.f35192if, this.f35191for);
    }
}
