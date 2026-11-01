package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class op extends np {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends CompletableSource> f4708do;

    public op(Callable<? extends CompletableSource> callable) {
        this.f4708do = callable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        try {
            ((CompletableSource) Cif.m29468else(this.f4708do.call(), "The completableSupplier returned a null CompletableSource")).subscribe(completableObserver);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, completableObserver);
        }
    }
}
