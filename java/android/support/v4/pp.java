package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class pp extends np {

    /* renamed from: do, reason: not valid java name */
    public static final np f5167do = new pp();

    private pp() {
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cif.complete(completableObserver);
    }
}
