package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class oz1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends Throwable> f4809do;

    public oz1(Callable<? extends Throwable> callable) {
        this.f4809do = callable;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        try {
            th = (Throwable) Cif.m29468else(this.f4809do.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            t80.m7781if(th);
        }
        io.reactivex.internal.disposables.Cif.error(th, singleObserver);
    }
}
