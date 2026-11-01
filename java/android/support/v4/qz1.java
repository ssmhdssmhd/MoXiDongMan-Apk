package android.support.v4;

import android.R;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class qz1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends T> f5555do;

    public qz1(Callable<? extends T> callable) {
        this.f5555do = callable;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        singleObserver.onSubscribe(disposableM29367if);
        if (disposableM29367if.isDisposed()) {
            return;
        }
        try {
            R.bool boolVar = (Object) io.reactivex.internal.functions.Cif.m29468else(this.f5555do.call(), "The callable returned a null value");
            if (disposableM29367if.isDisposed()) {
                return;
            }
            singleObserver.onSuccess(boolVar);
        } catch (Throwable th) {
            t80.m7781if(th);
            if (disposableM29367if.isDisposed()) {
                jp1.l(th);
            } else {
                singleObserver.onError(th);
            }
        }
    }
}
