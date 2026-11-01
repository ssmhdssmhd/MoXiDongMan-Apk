package android.support.v4;

import rx.Observable;

/* loaded from: classes4.dex */
public final class f71<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Throwable f1709do;

    public f71(Throwable th) {
        this.f1709do = th;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        y22Var.onError(this.f1709do);
    }
}
