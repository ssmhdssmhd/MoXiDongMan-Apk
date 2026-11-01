package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class qp extends np {

    /* renamed from: do, reason: not valid java name */
    public final Throwable f5507do;

    public qp(Throwable th) {
        this.f5507do = th;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cif.error(this.f5507do, completableObserver);
    }
}
