package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.fuseable.QueueDisposable;

/* loaded from: classes3.dex */
public abstract class u7<T, R> implements Observer<T>, QueueDisposable<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observer<? super R> f6783do;

    /* renamed from: for, reason: not valid java name */
    public QueueDisposable<T> f6784for;

    /* renamed from: if, reason: not valid java name */
    public Disposable f6785if;

    /* renamed from: new, reason: not valid java name */
    public boolean f6786new;

    /* renamed from: try, reason: not valid java name */
    public int f6787try;

    public u7(Observer<? super R> observer) {
        this.f6783do = observer;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f6784for.clear();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f6785if.dispose();
    }

    /* renamed from: do, reason: not valid java name */
    public void m8268do() {
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8269for(Throwable th) {
        t80.m7781if(th);
        this.f6785if.dispose();
        onError(th);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m8270if() {
        return true;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f6785if.isDisposed();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f6784for.isEmpty();
    }

    /* renamed from: new, reason: not valid java name */
    public final int m8271new(int i) {
        QueueDisposable<T> queueDisposable = this.f6784for;
        if (queueDisposable == null || (i & 4) != 0) {
            return 0;
        }
        int iRequestFusion = queueDisposable.requestFusion(i);
        if (iRequestFusion != 0) {
            this.f6787try = iRequestFusion;
        }
        return iRequestFusion;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f6786new) {
            return;
        }
        this.f6786new = true;
        this.f6783do.onComplete();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f6786new) {
            jp1.l(th);
        } else {
            this.f6786new = true;
            this.f6783do.onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        if (Cdo.validate(this.f6785if, disposable)) {
            this.f6785if = disposable;
            if (disposable instanceof QueueDisposable) {
                this.f6784for = (QueueDisposable) disposable;
            }
            if (m8270if()) {
                this.f6783do.onSubscribe(this);
                m8268do();
            }
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
