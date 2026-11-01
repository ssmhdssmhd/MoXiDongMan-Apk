package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class kn1<T> implements Observer<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Disposable> f3442do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final it0 f3443if = new it0();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (Cdo.dispose(this.f3442do)) {
            this.f3443if.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4445do(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "resource is null");
        this.f3443if.add(disposable);
    }

    /* renamed from: if, reason: not valid java name */
    public void m4446if() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return Cdo.isDisposed(this.f3442do.get());
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        if (v70.m8762for(this.f3442do, disposable, getClass())) {
            m4446if();
        }
    }
}
