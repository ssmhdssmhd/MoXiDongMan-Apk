package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class ln1<T> implements SingleObserver<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Disposable> f3722do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final it0 f3723if = new it0();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (Cdo.dispose(this.f3722do)) {
            this.f3723if.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4721do(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "resource is null");
        this.f3723if.add(disposable);
    }

    /* renamed from: if, reason: not valid java name */
    public void m4722if() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return Cdo.isDisposed(this.f3722do.get());
    }

    @Override // io.reactivex.SingleObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f3722do, disposable, getClass())) {
            m4722if();
        }
    }
}
