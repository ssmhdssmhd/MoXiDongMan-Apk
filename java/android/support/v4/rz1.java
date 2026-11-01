package android.support.v4;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import rx.Single;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public final class rz1<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Future<? extends T> f5973do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f5974for;

    /* renamed from: if, reason: not valid java name */
    public final long f5975if;

    public rz1(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f5973do = future;
        this.f5975if = j;
        this.f5974for = timeUnit;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Future<? extends T> future = this.f5973do;
        b02Var.m415do(Cfor.m39228new(future));
        try {
            long j = this.f5975if;
            b02Var.mo416if(j == 0 ? future.get() : future.get(j, this.f5974for));
        } catch (Throwable th) {
            s80.m7301try(th);
            b02Var.onError(th);
        }
    }
}
