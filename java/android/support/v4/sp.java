package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;

/* loaded from: classes3.dex */
public final class sp extends np {

    /* renamed from: do, reason: not valid java name */
    public final Action f6221do;

    public sp(Action action) {
        this.f6221do = action;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        completableObserver.onSubscribe(disposableM29367if);
        try {
            this.f6221do.run();
            if (disposableM29367if.isDisposed()) {
                return;
            }
            completableObserver.onComplete();
        } catch (Throwable th) {
            t80.m7781if(th);
            if (disposableM29367if.isDisposed()) {
                jp1.l(th);
            } else {
                completableObserver.onError(th);
            }
        }
    }
}
