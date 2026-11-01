package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class e0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f34688do;

    /* renamed from: for, reason: not valid java name */
    public final Cif f34689for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f34690if;

    /* renamed from: rx.internal.operators.e0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f34691do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f34692for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f34693if;

        /* renamed from: rx.internal.operators.e0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0521do implements Action0 {
            public C0521do() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo cdo = Cdo.this;
                if (cdo.f34691do) {
                    return;
                }
                cdo.f34691do = true;
                cdo.f34692for.onCompleted();
            }
        }

        /* renamed from: rx.internal.operators.e0$do$for, reason: invalid class name */
        public class Cfor implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f34696do;

            public Cfor(Object obj) {
                this.f34696do = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // rx.functions.Action0
            public void call() {
                Cdo cdo = Cdo.this;
                if (cdo.f34691do) {
                    return;
                }
                cdo.f34692for.onNext(this.f34696do);
            }
        }

        /* renamed from: rx.internal.operators.e0$do$if, reason: invalid class name */
        public class Cif implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Throwable f34698do;

            public Cif(Throwable th) {
                this.f34698do = th;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo cdo = Cdo.this;
                if (cdo.f34691do) {
                    return;
                }
                cdo.f34691do = true;
                cdo.f34692for.onError(this.f34698do);
                Cdo.this.f34693if.unsubscribe();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, Cif.Cdo cdo, y22 y22Var2) {
            super(y22Var);
            this.f34693if = cdo;
            this.f34692for = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            Cif.Cdo cdo = this.f34693if;
            C0521do c0521do = new C0521do();
            e0 e0Var = e0.this;
            cdo.mo38375for(c0521do, e0Var.f34688do, e0Var.f34690if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34693if.mo38376if(new Cif(th));
        }

        @Override // rx.Observer
        public void onNext(T t) {
            Cif.Cdo cdo = this.f34693if;
            Cfor cfor = new Cfor(t);
            e0 e0Var = e0.this;
            cdo.mo38375for(cfor, e0Var.f34688do, e0Var.f34690if);
        }
    }

    public e0(long j, TimeUnit timeUnit, Cif cif) {
        this.f34688do = j;
        this.f34690if = timeUnit;
        this.f34689for = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f34689for.mo971do();
        y22Var.add(cdoMo971do);
        return new Cdo(y22Var, cdoMo971do, y22Var);
    }
}
