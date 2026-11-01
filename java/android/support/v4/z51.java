package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class z51<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends ObservableSource<? extends T>> f8452do;

    public z51(Callable<? extends ObservableSource<? extends T>> callable) {
        this.f8452do = callable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            ((ObservableSource) Cif.m29468else(this.f8452do.call(), "null ObservableSource supplied")).subscribe(observer);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
