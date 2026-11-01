package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class rp extends np {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends Throwable> f5896do;

    public rp(Callable<? extends Throwable> callable) {
        this.f5896do = callable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        try {
            th = (Throwable) Cif.m29468else(this.f5896do.call(), "The error returned is null");
        } catch (Throwable th) {
            th = th;
            t80.m7781if(th);
        }
        io.reactivex.internal.disposables.Cif.error(th, completableObserver);
    }
}
