package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class p8<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
    private static final long serialVersionUID = 4943102778943297569L;
    public final BiConsumer<? super T, ? super Throwable> onCallback;

    public p8(BiConsumer<? super T, ? super Throwable> biConsumer) {
        this.onCallback = biConsumer;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cdo.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        try {
            lazySet(Cdo.DISPOSED);
            this.onCallback.accept(null, th);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        Cdo.setOnce(this, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        try {
            lazySet(Cdo.DISPOSED);
            this.onCallback.accept(t, null);
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }
}
