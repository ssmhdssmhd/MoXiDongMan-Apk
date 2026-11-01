package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class a<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34449do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends R> f34450if;

    /* renamed from: rx.internal.operators.a$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f34451do;

        /* renamed from: for, reason: not valid java name */
        public boolean f34452for;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends R> f34453if;

        public Cdo(y22<? super R> y22Var, Func1<? super T, ? extends R> func1) {
            this.f34451do = y22Var;
            this.f34453if = func1;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34452for) {
                return;
            }
            this.f34451do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34452for) {
                Cif.m39151protected(th);
            } else {
                this.f34452for = true;
                this.f34451do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f34451do.onNext(this.f34453if.call(t));
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(rx.exceptions.Cif.addValueAsLastCause(th, t));
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34451do.setProducer(producer);
        }
    }

    public a(Observable<T> observable, Func1<? super T, ? extends R> func1) {
        this.f34449do = observable;
        this.f34450if = func1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f34450if);
        y22Var.add(cdo);
        this.f34449do.r5(cdo);
    }
}
