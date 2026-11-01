package android.support.v4;

import androidx.annotation.RestrictTo;
import io.reactivex.android.schedulers.Cdo;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public abstract class ex0 implements Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicBoolean f1614do = new AtomicBoolean();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (this.f1614do.compareAndSet(false, true)) {
            if (h5.m2947if()) {
                mo2057do();
            } else {
                Cdo.m29358for().mo29697new(new Runnable() { // from class: android.support.v4.dx0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1158do.mo2057do();
                    }
                });
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo2057do();

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f1614do.get();
    }
}
