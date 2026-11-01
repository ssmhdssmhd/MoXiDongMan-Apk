package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class yp extends np {

    /* renamed from: do, reason: not valid java name */
    public static final np f8279do = new yp();

    private yp() {
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        completableObserver.onSubscribe(Cif.NEVER);
    }
}
