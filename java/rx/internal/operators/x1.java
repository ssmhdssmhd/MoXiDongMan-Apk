package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.operators.OperatorTimeoutBase;

/* loaded from: classes4.dex */
public final class x1<T> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.x1$do, reason: invalid class name */
    public class Cdo implements OperatorTimeoutBase.FirstTimeoutStub<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f35565do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ TimeUnit f35566if;

        /* renamed from: rx.internal.operators.x1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0541do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ OperatorTimeoutBase.Cdo f35567do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Long f35569if;

            public C0541do(OperatorTimeoutBase.Cdo cdo, Long l) {
                this.f35567do = cdo;
                this.f35569if = l;
            }

            @Override // rx.functions.Action0
            public void call() {
                this.f35567do.m38392do(this.f35569if.longValue());
            }
        }

        public Cdo(long j, TimeUnit timeUnit) {
            this.f35565do = j;
            this.f35566if = timeUnit;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(OperatorTimeoutBase.Cdo<T> cdo, Long l, Cif.Cdo cdo2) {
            return cdo2.mo38375for(new C0541do(cdo, l), this.f35565do, this.f35566if);
        }
    }

    /* renamed from: rx.internal.operators.x1$if, reason: invalid class name */
    public class Cif implements OperatorTimeoutBase.TimeoutStub<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f35570do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ TimeUnit f35571if;

        /* renamed from: rx.internal.operators.x1$if$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ OperatorTimeoutBase.Cdo f35572do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Long f35574if;

            public Cdo(OperatorTimeoutBase.Cdo cdo, Long l) {
                this.f35572do = cdo;
                this.f35574if = l;
            }

            @Override // rx.functions.Action0
            public void call() {
                this.f35572do.m38392do(this.f35574if.longValue());
            }
        }

        public Cif(long j, TimeUnit timeUnit) {
            this.f35570do = j;
            this.f35571if = timeUnit;
        }

        @Override // rx.functions.Func4
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(OperatorTimeoutBase.Cdo<T> cdo, Long l, T t, Cif.Cdo cdo2) {
            return cdo2.mo38375for(new Cdo(cdo, l), this.f35570do, this.f35571if);
        }
    }

    public x1(long j, TimeUnit timeUnit, Observable<? extends T> observable, rx.Cif cif) {
        super(new Cdo(j, timeUnit), new Cif(j, timeUnit), observable, cif);
    }

    @Override // rx.internal.operators.OperatorTimeoutBase
    /* renamed from: do */
    public /* bridge */ /* synthetic */ y22 call(y22 y22Var) {
        return super.call(y22Var);
    }
}
