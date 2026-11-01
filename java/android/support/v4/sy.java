package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;

/* loaded from: classes3.dex */
public abstract class sy<T> implements Observer<T> {

    /* renamed from: do, reason: not valid java name */
    private Disposable f6331do;

    /* renamed from: do, reason: not valid java name */
    public final void m7659do() {
        Disposable disposable = this.f6331do;
        this.f6331do = Cdo.DISPOSED;
        disposable.dispose();
    }

    /* renamed from: if, reason: not valid java name */
    public void m7660if() {
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(@b41 Disposable disposable) {
        if (v70.m8765try(this.f6331do, disposable, getClass())) {
            this.f6331do = disposable;
            m7660if();
        }
    }
}
