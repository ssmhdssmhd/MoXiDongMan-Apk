package rx.internal.operators;

import android.support.v4.y22;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class m1<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cif f35084do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f35085for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<T> f35086if;

    /* renamed from: rx.internal.operators.m1$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35087do;

        /* renamed from: for, reason: not valid java name */
        public final Cif.Cdo f35088for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f35089if;

        /* renamed from: new, reason: not valid java name */
        public Observable<T> f35090new;

        /* renamed from: try, reason: not valid java name */
        public Thread f35091try;

        /* renamed from: rx.internal.operators.m1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0531do implements Producer {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Producer f35092do;

            /* renamed from: rx.internal.operators.m1$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0532do implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ long f35094do;

                public C0532do(long j) {
                    this.f35094do = j;
                }

                @Override // rx.functions.Action0
                public void call() {
                    C0531do.this.f35092do.request(this.f35094do);
                }
            }

            public C0531do(Producer producer) {
                this.f35092do = producer;
            }

            @Override // rx.Producer
            public void request(long j) {
                if (Cdo.this.f35091try != Thread.currentThread()) {
                    Cdo cdo = Cdo.this;
                    if (cdo.f35089if) {
                        cdo.f35088for.mo38376if(new C0532do(j));
                        return;
                    }
                }
                this.f35092do.request(j);
            }
        }

        public Cdo(y22<? super T> y22Var, boolean z, Cif.Cdo cdo, Observable<T> observable) {
            this.f35087do = y22Var;
            this.f35089if = z;
            this.f35088for = cdo;
            this.f35090new = observable;
        }

        @Override // rx.functions.Action0
        public void call() {
            Observable<T> observable = this.f35090new;
            this.f35090new = null;
            this.f35091try = Thread.currentThread();
            observable.r5(this);
        }

        @Override // rx.Observer
        public void onCompleted() {
            try {
                this.f35087do.onCompleted();
            } finally {
                this.f35088for.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                this.f35087do.onError(th);
            } finally {
                this.f35088for.unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35087do.onNext(t);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35087do.setProducer(new C0531do(producer));
        }
    }

    public m1(Observable<T> observable, Cif cif, boolean z) {
        this.f35084do = cif;
        this.f35086if = observable;
        this.f35085for = z;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f35084do.mo971do();
        Cdo cdo = new Cdo(y22Var, this.f35085for, cdoMo971do, this.f35086if);
        y22Var.add(cdo);
        y22Var.add(cdoMo971do);
        cdoMo971do.mo38376if(cdo);
    }
}
