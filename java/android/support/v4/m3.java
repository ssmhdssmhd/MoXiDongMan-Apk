package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class m3 extends AtomicReferenceArray<Disposable> implements Disposable {
    private static final long serialVersionUID = 2746389416410565408L;

    public m3(int i) {
        super(i);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Disposable andSet;
        if (get(0) != Cdo.DISPOSED) {
            int length = length();
            for (int i = 0; i < length; i++) {
                Disposable disposable = get(i);
                Cdo cdo = Cdo.DISPOSED;
                if (disposable != cdo && (andSet = getAndSet(i, cdo)) != cdo && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get(0) == Cdo.DISPOSED;
    }

    public Disposable replaceResource(int i, Disposable disposable) {
        Disposable disposable2;
        do {
            disposable2 = get(i);
            if (disposable2 == Cdo.DISPOSED) {
                disposable.dispose();
                return null;
            }
        } while (!compareAndSet(i, disposable2, disposable));
        return disposable2;
    }

    public boolean setResource(int i, Disposable disposable) {
        Disposable disposable2;
        do {
            disposable2 = get(i);
            if (disposable2 == Cdo.DISPOSED) {
                disposable.dispose();
                return false;
            }
        } while (!compareAndSet(i, disposable2, disposable));
        if (disposable2 == null) {
            return true;
        }
        disposable2.dispose();
        return true;
    }
}
