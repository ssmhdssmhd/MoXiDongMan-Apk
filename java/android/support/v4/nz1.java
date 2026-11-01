package android.support.v4;

import rx.Single;
import rx.functions.Action0;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public final class nz1<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f4383do;

    /* renamed from: if, reason: not valid java name */
    public final Action0 f4384if;

    public nz1(Single.OnSubscribe<T> onSubscribe, Action0 action0) {
        this.f4383do = onSubscribe;
        this.f4384if = action0;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        b02Var.m415do(Cfor.m39225do(this.f4384if));
        this.f4383do.call(b02Var);
    }
}
