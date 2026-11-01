package rx.internal.operators;

import android.support.v4.dz;
import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Action2;
import rx.functions.Func0;

/* renamed from: rx.internal.operators.switch, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cswitch<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f35372do;

    /* renamed from: for, reason: not valid java name */
    public final Action2<R, ? super T> f35373for;

    /* renamed from: if, reason: not valid java name */
    public final Func0<R> f35374if;

    /* renamed from: rx.internal.operators.switch$do, reason: invalid class name */
    public static final class Cdo<T, R> extends dz<T, R> {

        /* renamed from: break, reason: not valid java name */
        public final Action2<R, ? super T> f35375break;

        public Cdo(y22<? super R> y22Var, R r, Action2<R, ? super T> action2) {
            super(y22Var);
            this.f34936for = r;
            this.f34937if = true;
            this.f35375break = action2;
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f1167this) {
                return;
            }
            try {
                this.f35375break.call(this.f34936for, t);
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(th);
            }
        }
    }

    public Cswitch(Observable<T> observable, Func0<R> func0, Action2<R, ? super T> action2) {
        this.f35372do = observable;
        this.f35374if = func0;
        this.f35373for = action2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        try {
            new Cdo(y22Var, this.f35374if.call(), this.f35373for).m38566try(this.f35372do);
        } catch (Throwable th) {
            s80.m7301try(th);
            y22Var.onError(th);
        }
    }
}
