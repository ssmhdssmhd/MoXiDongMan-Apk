package rx.internal.operators;

import android.support.v4.ds1;
import android.support.v4.s80;
import android.support.v4.y22;
import rx.Cif;
import rx.Observable;
import rx.Subscription;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.internal.operators.OperatorTimeoutBase;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public class y1<T, U, V> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.y1$do, reason: invalid class name */
    public class Cdo implements OperatorTimeoutBase.FirstTimeoutStub<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f35609do;

        /* renamed from: rx.internal.operators.y1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0543do extends y22<U> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ OperatorTimeoutBase.Cdo f35610do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Long f35612if;

            public C0543do(OperatorTimeoutBase.Cdo cdo, Long l) {
                this.f35610do = cdo;
                this.f35612if = l;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f35610do.m38392do(this.f35612if.longValue());
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f35610do.onError(th);
            }

            @Override // rx.Observer
            public void onNext(U u) {
                this.f35610do.m38392do(this.f35612if.longValue());
            }
        }

        public Cdo(Func0 func0) {
            this.f35609do = func0;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(OperatorTimeoutBase.Cdo<T> cdo, Long l, Cif.Cdo cdo2) {
            Func0 func0 = this.f35609do;
            if (func0 == null) {
                return Cfor.m39229try();
            }
            try {
                return ((Observable) func0.call()).r5(new C0543do(cdo, l));
            } catch (Throwable th) {
                s80.m7297goto(th, cdo);
                return Cfor.m39229try();
            }
        }
    }

    /* renamed from: rx.internal.operators.y1$if, reason: invalid class name */
    public class Cif implements OperatorTimeoutBase.TimeoutStub<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35613do;

        /* renamed from: rx.internal.operators.y1$if$do, reason: invalid class name */
        public class Cdo extends y22<V> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ OperatorTimeoutBase.Cdo f35614do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Long f35616if;

            public Cdo(OperatorTimeoutBase.Cdo cdo, Long l) {
                this.f35614do = cdo;
                this.f35616if = l;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f35614do.m38392do(this.f35616if.longValue());
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f35614do.onError(th);
            }

            @Override // rx.Observer
            public void onNext(V v) {
                this.f35614do.m38392do(this.f35616if.longValue());
            }
        }

        public Cif(Func1 func1) {
            this.f35613do = func1;
        }

        @Override // rx.functions.Func4
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(OperatorTimeoutBase.Cdo<T> cdo, Long l, T t, Cif.Cdo cdo2) {
            try {
                return ((Observable) this.f35613do.call(t)).r5(new Cdo(cdo, l));
            } catch (Throwable th) {
                s80.m7297goto(th, cdo);
                return Cfor.m39229try();
            }
        }
    }

    public y1(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        super(new Cdo(func0), new Cif(func1), observable, ds1.m1522new());
    }

    @Override // rx.internal.operators.OperatorTimeoutBase
    /* renamed from: do */
    public /* bridge */ /* synthetic */ y22 call(y22 y22Var) {
        return super.call(y22Var);
    }
}
