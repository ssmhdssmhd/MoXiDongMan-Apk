package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.internal.fuseable.ScalarCallable;

/* loaded from: classes3.dex */
public final class my0<T> extends fy0<T> implements ScalarCallable<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f4091do;

    public my0(T t) {
        this.f4091do = t;
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f4091do;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Cif.m29364do());
        maybeObserver.onSuccess(this.f4091do);
    }
}
