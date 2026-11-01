package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class tw1 extends AtomicReference<Disposable> implements Disposable {
    private static final long serialVersionUID = -754898800686245608L;

    public tw1() {
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cdo.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return Cdo.isDisposed(get());
    }

    public boolean replace(Disposable disposable) {
        return Cdo.replace(this, disposable);
    }

    public boolean update(Disposable disposable) {
        return Cdo.set(this, disposable);
    }

    public tw1(Disposable disposable) {
        lazySet(disposable);
    }
}
