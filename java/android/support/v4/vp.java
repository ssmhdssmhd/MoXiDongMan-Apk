package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;

/* loaded from: classes3.dex */
public final class vp extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f7305do;

    public vp(CompletableSource completableSource) {
        this.f7305do = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f7305do.subscribe(completableObserver);
    }
}
