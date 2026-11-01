package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class i61<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
    private static final long serialVersionUID = -8612022020200669122L;
    public final Observer<? super T> downstream;
    public final AtomicReference<Disposable> upstream = new AtomicReference<>();

    public i61(Observer<? super T> observer) {
        this.downstream = observer;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cdo.dispose(this.upstream);
        Cdo.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.upstream.get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        dispose();
        this.downstream.onComplete();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        dispose();
        this.downstream.onError(th);
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.downstream.onNext(t);
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (Cdo.setOnce(this.upstream, disposable)) {
            this.downstream.onSubscribe(this);
        }
    }

    public void setResource(Disposable disposable) {
        Cdo.set(this, disposable);
    }
}
