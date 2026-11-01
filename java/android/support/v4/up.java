package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class up extends np {

    /* renamed from: do, reason: not valid java name */
    public final Runnable f6963do;

    public up(Runnable runnable) {
        this.f6963do = runnable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Disposable disposableM29367if = Cif.m29367if();
        completableObserver.onSubscribe(disposableM29367if);
        try {
            this.f6963do.run();
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
