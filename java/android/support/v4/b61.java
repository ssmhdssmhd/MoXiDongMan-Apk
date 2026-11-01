package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class b61<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends Throwable> f366do;

    public b61(Callable<? extends Throwable> callable) {
        this.f366do = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            th = (Throwable) Cif.m29468else(this.f366do.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            t80.m7781if(th);
        }
        io.reactivex.internal.disposables.Cif.error(th, observer);
    }
}
