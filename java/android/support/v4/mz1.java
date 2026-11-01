package android.support.v4;

import rx.Single;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class mz1<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f4096do;

    /* renamed from: if, reason: not valid java name */
    public final Action0 f4097if;

    public mz1(Single.OnSubscribe<T> onSubscribe, Action0 action0) {
        this.f4096do = onSubscribe;
        this.f4097if = action0;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        try {
            this.f4097if.call();
            this.f4096do.call(b02Var);
        } catch (Throwable th) {
            s80.m7301try(th);
            b02Var.onError(th);
        }
    }
}
