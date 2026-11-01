package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.strictfp, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cstrictfp<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f35361do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, Boolean> f35362if;

    /* renamed from: rx.internal.operators.strictfp$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35363do;

        /* renamed from: for, reason: not valid java name */
        public boolean f35364for;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, Boolean> f35365if;

        public Cdo(y22<? super T> y22Var, Func1<? super T, Boolean> func1) {
            this.f35363do = y22Var;
            this.f35365if = func1;
            request(0L);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35364for) {
                return;
            }
            this.f35363do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35364for) {
                Cif.m39151protected(th);
            } else {
                this.f35364for = true;
                this.f35363do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                if (this.f35365if.call(t).booleanValue()) {
                    this.f35363do.onNext(t);
                } else {
                    request(1L);
                }
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(rx.exceptions.Cif.addValueAsLastCause(th, t));
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            super.setProducer(producer);
            this.f35363do.setProducer(producer);
        }
    }

    public Cstrictfp(Observable<T> observable, Func1<? super T, Boolean> func1) {
        this.f35361do = observable;
        this.f35362if = func1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f35362if);
        y22Var.add(cdo);
        this.f35361do.r5(cdo);
    }
}
