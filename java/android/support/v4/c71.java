package android.support.v4;

import rx.Observable;
import rx.functions.Func0;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class c71<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Func0<? extends Observable<? extends T>> f625do;

    public c71(Func0<? extends Observable<? extends T>> func0) {
        this.f625do = func0;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        try {
            this.f625do.call().r5(Cnew.m39112case(y22Var));
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
        }
    }
}
