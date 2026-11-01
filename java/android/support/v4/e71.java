package android.support.v4;

import rx.Observable;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class e71<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable.OnSubscribe<T> f1277do;

    /* renamed from: if, reason: not valid java name */
    public final Observable.Operator<? extends R, ? super T> f1278if;

    public e71(Observable.OnSubscribe<T> onSubscribe, Observable.Operator<? extends R, ? super T> operator) {
        this.f1277do = onSubscribe;
        this.f1278if = operator;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        try {
            y22<? super T> y22VarCall = Cif.m39158synchronized(this.f1278if).call(y22Var);
            try {
                y22VarCall.onStart();
                this.f1277do.call(y22VarCall);
            } catch (Throwable th) {
                s80.m7301try(th);
                y22VarCall.onError(th);
            }
        } catch (Throwable th2) {
            s80.m7301try(th2);
            y22Var.onError(th2);
        }
    }
}
