package rx.internal.operators;

import android.support.v4.ds1;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class a1<T> implements Observable.Operator<T, Observable<T>> {

    /* renamed from: do, reason: not valid java name */
    public final Func2<Integer, Throwable, Boolean> f34473do;

    /* renamed from: rx.internal.operators.a1$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<Observable<T>> {

        /* renamed from: case, reason: not valid java name */
        public final AtomicInteger f34474case = new AtomicInteger();

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f34475do;

        /* renamed from: for, reason: not valid java name */
        public final Cif.Cdo f34476for;

        /* renamed from: if, reason: not valid java name */
        public final Func2<Integer, Throwable, Boolean> f34477if;

        /* renamed from: new, reason: not valid java name */
        public final ww1 f34478new;

        /* renamed from: try, reason: not valid java name */
        public final rx.internal.producers.Cdo f34479try;

        /* renamed from: rx.internal.operators.a1$do$do, reason: invalid class name and collision with other inner class name */
        public class C0511do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Observable f34480do;

            /* renamed from: rx.internal.operators.a1$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0512do extends y22<T> {

                /* renamed from: do, reason: not valid java name */
                public boolean f34482do;

                /* renamed from: if, reason: not valid java name */
                public final /* synthetic */ Action0 f34484if;

                public C0512do(Action0 action0) {
                    this.f34484if = action0;
                }

                @Override // rx.Observer
                public void onCompleted() {
                    if (this.f34482do) {
                        return;
                    }
                    this.f34482do = true;
                    Cdo.this.f34475do.onCompleted();
                }

                @Override // rx.Observer
                public void onError(Throwable th) {
                    if (this.f34482do) {
                        return;
                    }
                    this.f34482do = true;
                    Cdo cdo = Cdo.this;
                    if (!cdo.f34477if.call(Integer.valueOf(cdo.f34474case.get()), th).booleanValue() || Cdo.this.f34476for.isUnsubscribed()) {
                        Cdo.this.f34475do.onError(th);
                    } else {
                        Cdo.this.f34476for.mo38376if(this.f34484if);
                    }
                }

                @Override // rx.Observer
                public void onNext(T t) {
                    if (this.f34482do) {
                        return;
                    }
                    Cdo.this.f34475do.onNext(t);
                    Cdo.this.f34479try.m38830if(1L);
                }

                @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
                public void setProducer(Producer producer) {
                    Cdo.this.f34479try.m38829for(producer);
                }
            }

            public C0511do(Observable observable) {
                this.f34480do = observable;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f34474case.incrementAndGet();
                C0512do c0512do = new C0512do(this);
                Cdo.this.f34478new.m9298if(c0512do);
                this.f34480do.r5(c0512do);
            }
        }

        public Cdo(y22<? super T> y22Var, Func2<Integer, Throwable, Boolean> func2, Cif.Cdo cdo, ww1 ww1Var, rx.internal.producers.Cdo cdo2) {
            this.f34475do = y22Var;
            this.f34477if = func2;
            this.f34476for = cdo;
            this.f34478new = ww1Var;
            this.f34479try = cdo2;
        }

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Observable<T> observable) {
            this.f34476for.mo38376if(new C0511do(observable));
        }

        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34475do.onError(th);
        }
    }

    public a1(Func2<Integer, Throwable, Boolean> func2) {
        this.f34473do = func2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super Observable<T>> call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = ds1.m1516const().mo971do();
        y22Var.add(cdoMo971do);
        ww1 ww1Var = new ww1();
        y22Var.add(ww1Var);
        rx.internal.producers.Cdo cdo = new rx.internal.producers.Cdo();
        y22Var.setProducer(cdo);
        return new Cdo(y22Var, this.f34473do, cdoMo971do, ww1Var, cdo);
    }
}
