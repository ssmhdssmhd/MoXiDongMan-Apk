package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class ly0<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Future<? extends T> f3792do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f3793for;

    /* renamed from: if, reason: not valid java name */
    public final long f3794if;

    public ly0(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f3792do = future;
        this.f3794if = j;
        this.f3793for = timeUnit;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        maybeObserver.onSubscribe(disposableM29367if);
        if (disposableM29367if.isDisposed()) {
            return;
        }
        try {
            long j = this.f3794if;
            T t = j <= 0 ? this.f3792do.get() : this.f3792do.get(j, this.f3793for);
            if (disposableM29367if.isDisposed()) {
                return;
            }
            if (t == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(t);
            }
        } catch (Throwable th) {
            th = th;
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            t80.m7781if(th);
            if (disposableM29367if.isDisposed()) {
                return;
            }
            maybeObserver.onError(th);
        }
    }
}
