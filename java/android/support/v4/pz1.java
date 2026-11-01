package android.support.v4;

import java.util.concurrent.Callable;
import rx.Single;

/* loaded from: classes4.dex */
public final class pz1<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends T> f5221do;

    public pz1(Callable<? extends T> callable) {
        this.f5221do = callable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        try {
            b02Var.mo416if(this.f5221do.call());
        } catch (Throwable th) {
            s80.m7301try(th);
            b02Var.onError(th);
        }
    }
}
