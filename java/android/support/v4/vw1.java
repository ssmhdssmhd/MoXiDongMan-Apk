package android.support.v4;

import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class vw1 implements Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f7351do;

    public vw1() {
        this.f7351do = new AtomicReference<>();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cdo.dispose(this.f7351do);
    }

    @a51
    /* renamed from: do, reason: not valid java name */
    public Disposable m8989do() {
        Disposable disposable = this.f7351do.get();
        return disposable == Cdo.DISPOSED ? Cif.m29364do() : disposable;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m8990for(@a51 Disposable disposable) {
        return Cdo.set(this.f7351do, disposable);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m8991if(@a51 Disposable disposable) {
        return Cdo.replace(this.f7351do, disposable);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return Cdo.isDisposed(this.f7351do.get());
    }

    public vw1(@a51 Disposable disposable) {
        this.f7351do = new AtomicReference<>(disposable);
    }
}
