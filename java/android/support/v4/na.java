package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.util.Cbreak;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class na<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
    public static final Object TERMINATED = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    public final Queue<Object> queue;

    public na(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (Cdo.dispose(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == Cdo.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.queue.offer(Cbreak.complete());
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.queue.offer(Cbreak.error(th));
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.queue.offer(Cbreak.next(t));
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        Cdo.setOnce(this, disposable);
    }
}
