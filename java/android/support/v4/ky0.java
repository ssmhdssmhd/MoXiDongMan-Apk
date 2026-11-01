package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class ky0<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends Throwable> f3502do;

    public ky0(Callable<? extends Throwable> callable) {
        this.f3502do = callable;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Cif.m29364do());
        try {
            th = (Throwable) io.reactivex.internal.functions.Cif.m29468else(this.f3502do.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            t80.m7781if(th);
        }
        maybeObserver.onError(th);
    }
}
