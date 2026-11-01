package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class jn1<T> implements MaybeObserver<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Disposable> f3157do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final it0 f3158if = new it0();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (Cdo.dispose(this.f3157do)) {
            this.f3158if.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3971do(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "resource is null");
        this.f3158if.add(disposable);
    }

    /* renamed from: if, reason: not valid java name */
    public void m3972if() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return Cdo.isDisposed(this.f3157do.get());
    }

    @Override // io.reactivex.MaybeObserver
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8762for(this.f3157do, disposable, getClass())) {
            m3972if();
        }
    }
}
