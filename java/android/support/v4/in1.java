package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class in1 implements CompletableObserver, Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Disposable> f2815do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final it0 f2816if = new it0();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (Cdo.dispose(this.f2815do)) {
            this.f2816if.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3520do(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "resource is null");
        this.f2816if.add(disposable);
    }

    /* renamed from: if, reason: not valid java name */
    public void m3521if() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return Cdo.isDisposed(this.f2815do.get());
    }

    @Override // io.reactivex.CompletableObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f2815do, disposable, getClass())) {
            m3521if();
        }
    }
}
