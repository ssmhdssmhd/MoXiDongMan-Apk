package rx.internal.operators;

import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class m<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f35067do;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends T> f35068if;

    /* renamed from: rx.internal.operators.m$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final rx.internal.producers.Cdo f35069do;

        /* renamed from: if, reason: not valid java name */
        private final y22<? super T> f35070if;

        public Cdo(y22<? super T> y22Var, rx.internal.producers.Cdo cdo) {
            this.f35070if = y22Var;
            this.f35069do = cdo;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35070if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35070if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35070if.onNext(t);
            this.f35069do.m38830if(1L);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35069do.m38829for(producer);
        }
    }

    /* renamed from: rx.internal.operators.m$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: else, reason: not valid java name */
        public volatile boolean f35073else;

        /* renamed from: for, reason: not valid java name */
        private final ww1 f35074for;

        /* renamed from: if, reason: not valid java name */
        private final y22<? super T> f35075if;

        /* renamed from: new, reason: not valid java name */
        private final rx.internal.producers.Cdo f35076new;

        /* renamed from: try, reason: not valid java name */
        private final Observable<? extends T> f35077try;

        /* renamed from: do, reason: not valid java name */
        private boolean f35072do = true;

        /* renamed from: case, reason: not valid java name */
        public final AtomicInteger f35071case = new AtomicInteger();

        public Cif(y22<? super T> y22Var, ww1 ww1Var, rx.internal.producers.Cdo cdo, Observable<? extends T> observable) {
            this.f35075if = y22Var;
            this.f35074for = ww1Var;
            this.f35076new = cdo;
            this.f35077try = observable;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38608do(Observable<? extends T> observable) {
            if (this.f35071case.getAndIncrement() == 0) {
                while (!this.f35075if.isUnsubscribed()) {
                    if (!this.f35073else) {
                        if (observable == null) {
                            Cdo cdo = new Cdo(this.f35075if, this.f35076new);
                            this.f35074for.m9298if(cdo);
                            this.f35073else = true;
                            this.f35077try.r5(cdo);
                        } else {
                            this.f35073else = true;
                            observable.r5(this);
                            observable = null;
                        }
                    }
                    if (this.f35071case.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (!this.f35072do) {
                this.f35075if.onCompleted();
            } else {
                if (this.f35075if.isUnsubscribed()) {
                    return;
                }
                this.f35073else = false;
                m38608do(null);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35075if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35072do = false;
            this.f35075if.onNext(t);
            this.f35076new.m38830if(1L);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35076new.m38829for(producer);
        }
    }

    public m(Observable<? extends T> observable, Observable<? extends T> observable2) {
        this.f35067do = observable;
        this.f35068if = observable2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        ww1 ww1Var = new ww1();
        rx.internal.producers.Cdo cdo = new rx.internal.producers.Cdo();
        Cif cif = new Cif(y22Var, ww1Var, cdo, this.f35068if);
        ww1Var.m9298if(cif);
        y22Var.add(ww1Var);
        y22Var.setProducer(cdo);
        cif.m38608do(this.f35067do);
    }
}
