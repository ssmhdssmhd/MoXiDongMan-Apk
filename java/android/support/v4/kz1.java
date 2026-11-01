package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class kz1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends SingleSource<? extends T>> f3512do;

    public kz1(Callable<? extends SingleSource<? extends T>> callable) {
        this.f3512do = callable;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        try {
            ((SingleSource) Cif.m29468else(this.f3512do.call(), "The singleSupplier returned a null SingleSource")).subscribe(singleObserver);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
