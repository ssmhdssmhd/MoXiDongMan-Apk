package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class i<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34901do;

    /* renamed from: for, reason: not valid java name */
    public final Func2<R, ? super T, R> f34902for;

    /* renamed from: if, reason: not valid java name */
    public final R f34903if;

    /* renamed from: rx.internal.operators.i$do, reason: invalid class name */
    public static final class Cdo<T, R> extends Cimport<T, R> {

        /* renamed from: this, reason: not valid java name */
        public final Func2<R, ? super T, R> f34904this;

        public Cdo(y22<? super R> y22Var, R r, Func2<R, ? super T, R> func2) {
            super(y22Var);
            this.f34936for = r;
            this.f34937if = true;
            this.f34904this = func2;
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f34936for = this.f34904this.call(this.f34936for, t);
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                this.f34935do.onError(th);
            }
        }
    }

    public i(Observable<T> observable, R r, Func2<R, ? super T, R> func2) {
        this.f34901do = observable;
        this.f34903if = r;
        this.f34902for = func2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        new Cdo(y22Var, this.f34903if, this.f34902for).m38566try(this.f34901do);
    }
}
